.class final Lcom/google/android/location/collectionlib/bc;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/bb;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/bb;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 55
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    const-wide/16 v4, 0x3c

    move-object v1, p0

    move v3, v2

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method


# virtual methods
.method protected final terminated()V
    .locals 3

    .prologue
    .line 58
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bb;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "LocalScanResultWriter terminated."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 60
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/location/collectionlib/bw;->a()Lcom/google/android/location/collectionlib/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/bb;->a(Lcom/google/android/location/collectionlib/bb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/bw;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bb;->d:Lcom/google/android/location/collectionlib/cj;

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ao;->a(Lcom/google/android/location/collectionlib/cj;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/bb;->b(Lcom/google/android/location/collectionlib/bb;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bb;->d:Lcom/google/android/location/collectionlib/cj;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bb;->d:Lcom/google/android/location/collectionlib/cj;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/bb;->a(Lcom/google/android/location/collectionlib/cj;)V

    .line 71
    :cond_2
    return-void

    .line 62
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/bc;->a:Lcom/google/android/location/collectionlib/bb;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/bb;->d:Lcom/google/android/location/collectionlib/cj;

    invoke-interface {v1, v2}, Lcom/google/android/location/collectionlib/ao;->a(Lcom/google/android/location/collectionlib/cj;)V

    :cond_3
    throw v0
.end method
