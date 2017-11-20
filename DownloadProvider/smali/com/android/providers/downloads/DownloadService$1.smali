.class Lcom/android/providers/downloads/DownloadService$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 225
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 236
    .local v3, "startId":I
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$100(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 237
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v2

    .line 238
    .local v2, "isActive":Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 243
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pool"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const-string v5, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isActive":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 250
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "isActive":Z
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$300(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadNotifier;->dumpSpeeds()V

    .line 252
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final update pass triggered, isActive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; someone didn\'t update correctly."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v2, :cond_4

    .line 262
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)V

    .line 277
    :cond_3
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 269
    :cond_4
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4, v3}, Lcom/android/providers/downloads/DownloadService;->stopSelfResult(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$500(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadScanner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadScanner;->shutdown()V

    .line 273
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1
.end method
