.class Lcom/google/glass/mosaic/MosaicHelper$4;
.super Landroid/os/AsyncTask;
.source "MosaicHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/mosaic/MosaicHelper;->handleCellsLoaded(Lcom/google/glass/mosaic/MosaicView;Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;Lcom/google/glass/time/Stopwatch;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/mosaic/MosaicHelper;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$loadTimer:Lcom/google/glass/time/Stopwatch;

.field final synthetic val$resultFuture:Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;

.field final synthetic val$view:Lcom/google/glass/mosaic/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/mosaic/MosaicView;Ljava/lang/String;Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;Lcom/google/glass/time/Stopwatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/mosaic/MosaicHelper;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    iput-object p2, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$view:Lcom/google/glass/mosaic/MosaicView;

    iput-object p3, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$cacheKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$resultFuture:Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;

    iput-object p5, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$loadTimer:Lcom/google/glass/time/Stopwatch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/mosaic/MosaicHelper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 244
    new-instance v2, Lcom/google/glass/time/Stopwatch;

    const-string v3, "Render time"

    invoke-direct {v2, v3}, Lcom/google/glass/time/Stopwatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v1

    .line 245
    .local v1, "renderTimer":Lcom/google/glass/time/Stopwatch;
    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    iget-object v3, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$view:Lcom/google/glass/mosaic/MosaicView;

    invoke-static {v2, v3}, Lcom/google/glass/mosaic/MosaicHelper;->access$300(Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/mosaic/MosaicView;)[B

    move-result-object v0

    .line 246
    .local v0, "data":[B
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 247
    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    invoke-static {v2}, Lcom/google/glass/mosaic/MosaicHelper;->access$400(Lcom/google/glass/mosaic/MosaicHelper;)Landroid/util/LruCache;

    move-result-object v3

    monitor-enter v3

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    invoke-static {v2}, Lcom/google/glass/mosaic/MosaicHelper;->access$400(Lcom/google/glass/mosaic/MosaicHelper;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$resultFuture:Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;

    invoke-virtual {v2, v0}, Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;->set([B)Z

    .line 251
    invoke-static {}, Lcom/google/glass/mosaic/MosaicHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Rendering succeeded: %d bytes %s %s for %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$loadTimer:Lcom/google/glass/time/Stopwatch;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/glass/mosaic/MosaicHelper$4;->val$resultFuture:Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;

    .line 252
    invoke-static {v6}, Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;->access$500(Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    .line 251
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const/4 v2, 0x0

    return-object v2

    .line 249
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
