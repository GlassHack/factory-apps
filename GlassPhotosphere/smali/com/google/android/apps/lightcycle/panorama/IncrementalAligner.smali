.class public Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;
.super Ljava/lang/Thread;
.source "IncrementalAligner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;
    }
.end annotation


# static fields
.field public static final MAX_QUEUE_SIZE:I = 0x14

.field private static final POISON_PILL_TAG:Ljava/lang/String; = "Poison Pill"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private processingImages:Z

.field private final useRealtimeAlignment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "useRealtimeAlignment"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->processingImages:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 53
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->useRealtimeAlignment:Z

    .line 54
    return-void
.end method


# virtual methods
.method public addImage(Ljava/lang/String;[FI)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "rotation"    # [F
    .param p3, "thumbnailTextureId"    # I

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;-><init>(Ljava/lang/String;[FI)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "iex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 169
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected interruption"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public interrupt()V
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;

    const-string v2, "Poison Pill"

    const/16 v3, 0x9

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;-><init>(Ljava/lang/String;[FI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public isProcessingImages()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->processingImages:Z

    return v0
.end method

.method public isRealtimeAlignmentEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->useRealtimeAlignment:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "imageData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;>;"
    :try_start_0
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;

    .line 76
    .local v0, "data":Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->processingImages:Z

    .line 77
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "data":Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;
    :catch_0
    move-exception v5

    .line 88
    :cond_1
    const/4 v3, 0x0

    .line 89
    .local v3, "shutdown":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;

    .line 91
    .restart local v0    # "data":Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;
    const-string v5, "Poison Pill"

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 92
    const/4 v3, 0x1

    .line 105
    .end local v0    # "data":Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;
    :cond_2
    iget-boolean v5, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->useRealtimeAlignment:Z

    if-eqz v5, :cond_3

    .line 106
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ComputeAlignment()V

    .line 108
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->processingImages:Z

    .line 109
    if-eqz v3, :cond_0

    .line 114
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imageData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;>;"
    .end local v3    # "shutdown":Z
    :cond_4
    sget-object v5, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->TAG:Ljava/lang/String;

    const-string v6, "Incremental aligner shutting down. Firing callback ..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v5, :cond_5

    .line 116
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 118
    :cond_5
    sget-object v5, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->TAG:Ljava/lang/String;

    const-string v6, "Incremental aligner thread shut down. Bye."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 98
    .restart local v0    # "data":Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "imageData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;>;"
    .restart local v3    # "shutdown":Z
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 99
    iget-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->useRealtimeAlignment:Z

    .line 100
    .local v4, "updateThumbnailTexture":Z
    iget-object v5, v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;->filename:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;->rotation:[F

    iget v7, v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;->thumbnailTextureId:I

    invoke-static {v5, v6, v4, v7}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->AddImage(Ljava/lang/String;[FZI)V

    goto :goto_1
.end method

.method public declared-synchronized shutdown(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IncrementalAligner is already shut down."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 151
    const-string v0, "Aligner start"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 152
    return-void
.end method
