.class final Lcom/google/common/collect/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hs;


# instance fields
.field final a:Lcom/google/common/base/w;

.field volatile b:Lcom/google/common/collect/hs;


# direct methods
.method public constructor <init>(Lcom/google/common/base/w;)V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/hs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bm;->b:Lcom/google/common/collect/hs;

    .line 278
    iput-object p1, p0, Lcom/google/common/collect/bm;->a:Lcom/google/common/base/w;

    .line 279
    return-void
.end method

.method private b(Lcom/google/common/collect/hs;)V
    .locals 2

    .prologue
    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/bm;->b:Lcom/google/common/collect/hs;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->UNSET:Lcom/google/common/collect/hs;

    if-ne v0, v1, :cond_0

    .line 350
    iput-object p1, p0, Lcom/google/common/collect/bm;->b:Lcom/google/common/collect/hs;

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 353
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)Lcom/google/common/collect/hs;
    .locals 0

    .prologue
    .line 293
    return-object p0
.end method

.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/bm;->a:Lcom/google/common/base/w;

    invoke-interface {v0, p1}, Lcom/google/common/base/w;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    new-instance v1, Lcom/google/common/collect/bl;

    invoke-direct {v1, v0}, Lcom/google/common/collect/bl;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/google/common/collect/bm;->b(Lcom/google/common/collect/hs;)V

    .line 344
    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    new-instance v1, Lcom/google/common/collect/bk;

    invoke-direct {v1, v0}, Lcom/google/common/collect/bk;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/common/collect/bm;->b(Lcom/google/common/collect/hs;)V

    .line 340
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/google/common/collect/hs;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/common/collect/bm;->b(Lcom/google/common/collect/hs;)V

    .line 332
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/common/collect/bm;->b:Lcom/google/common/collect/hs;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->UNSET:Lcom/google/common/collect/hs;

    if-ne v0, v1, :cond_1

    .line 306
    const/4 v1, 0x0

    .line 308
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 309
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/bm;->b:Lcom/google/common/collect/hs;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->UNSET:Lcom/google/common/collect/hs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_0

    .line 311
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 314
    goto :goto_0

    .line 316
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    if-eqz v1, :cond_1

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/bm;->b:Lcom/google/common/collect/hs;

    invoke-interface {v0}, Lcom/google/common/collect/hs;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 316
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 318
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method
