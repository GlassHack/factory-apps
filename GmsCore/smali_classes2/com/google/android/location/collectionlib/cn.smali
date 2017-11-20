.class final Lcom/google/android/location/collectionlib/cn;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/cl;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/cl;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 296
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cl;->b(Lcom/google/android/location/collectionlib/cl;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 263
    :try_start_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cl;->c(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    const-string v1, "PreScanning finished."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cl;->e(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/cl;->d(Lcom/google/android/location/collectionlib/cl;)Lcom/google/g/a/b/b/a;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ba;->a()Z

    move-result v1

    .line 265
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cl;->g(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ao;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cl;->f(Lcom/google/android/location/collectionlib/cl;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/collectionlib/ao;->a(ZZ)V

    .line 266
    const/4 v0, 0x0

    .line 267
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/cl;->f(Lcom/google/android/location/collectionlib/cl;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 268
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    new-instance v1, Lcom/google/android/location/collectionlib/bl;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cl;->c(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/p/a/c;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/location/collectionlib/bl;-><init>(Landroid/os/Handler;Lcom/google/android/location/p/a/c;)V

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/cl;->a(Lcom/google/android/location/collectionlib/cl;Lcom/google/android/location/collectionlib/bl;)Lcom/google/android/location/collectionlib/bl;

    .line 269
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cl;->n(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/cl;->h(Lcom/google/android/location/collectionlib/cl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cl;->i(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ai;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v3}, Lcom/google/android/location/collectionlib/cl;->j(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/d/b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v4}, Lcom/google/android/location/collectionlib/cl;->k(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/os/ax;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v5}, Lcom/google/android/location/collectionlib/cl;->l(Lcom/google/android/location/collectionlib/cl;)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v6}, Lcom/google/android/location/collectionlib/cl;->m(Lcom/google/android/location/collectionlib/cl;)Lcom/google/g/a/b/b/a;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v7}, Lcom/google/android/location/collectionlib/cl;->g(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ao;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/collectionlib/bl;->a(Landroid/content/Context;Lcom/google/android/location/collectionlib/ai;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/ao;)Z

    move-result v0

    .line 275
    if-nez v0, :cond_2

    .line 276
    const-string v1, "RealScanner: Nothing to scan."

    .line 277
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cl;->c(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/p/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cl;->g(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ao;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cl;->g(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/collectionlib/ao;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/lang/String;)V

    .line 286
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 287
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/cn;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 289
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 283
    :cond_4
    :try_start_1
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/cl;->c(Lcom/google/android/location/collectionlib/cl;)Lcom/google/android/location/p/a/c;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cn;->a:Lcom/google/android/location/collectionlib/cl;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/cl;->f(Lcom/google/android/location/collectionlib/cl;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Stopped by client during prescan."

    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "PreScanDecision returns false. Will not do real collection."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 290
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/cn;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
