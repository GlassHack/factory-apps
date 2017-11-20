.class public final Lcom/google/g/a/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Vector;

.field private c:Ljava/lang/Object;

.field private d:Lcom/google/g/a/d;

.field private e:Lcom/google/g/a/c/f;

.field private f:[Ljava/lang/Thread;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/g/a/c/f;)V
    .locals 1

    const-string v0, "TaskRunner"

    invoke-direct {p0, p1, v0}, Lcom/google/g/a/d/g;-><init>(Lcom/google/g/a/c/f;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/c/f;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, Lcom/google/g/a/d/g;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/g/a/d/g;->i:Z

    iput-object p1, p0, Lcom/google/g/a/d/g;->e:Lcom/google/g/a/c/f;

    iput-object p2, p0, Lcom/google/g/a/d/g;->g:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/google/g/a/d/g;->f:[Ljava/lang/Thread;

    invoke-static {}, Lcom/google/g/a/c;->a()Lcom/google/g/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/c;->b()Lcom/google/g/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/g/a/d/g;->d:Lcom/google/g/a/d;

    return-void
.end method

.method private c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/g/a/d/g;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/g/a/d/g;->i:Z

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/d/h;

    invoke-virtual {v0}, Lcom/google/g/a/d/h;->i()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/g/a/d/g;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private d()Lcom/google/g/a/d/f;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/d/h;

    invoke-virtual {v0}, Lcom/google/g/a/d/h;->i()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/g/a/d/g;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, Lcom/google/g/a/d/g;->a(Lcom/google/g/a/d/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/d/f;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/g/a/d/f;->a(I)V

    iget-object v1, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/g/a/d/g;->h:I

    return v0
.end method

.method final a(Lcom/google/g/a/d/e;)V
    .locals 2

    iget-object v1, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/g/a/d/e;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v1

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/g/a/d/e;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_2
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/g/a/d/e;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method final a(Lcom/google/g/a/d/f;)V
    .locals 6

    iget-object v4, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/g/a/d/f;->h()I

    move-result v5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v1

    move v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/d/f;

    invoke-virtual {v0}, Lcom/google/g/a/d/f;->h()I

    move-result v0

    if-gt v5, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/g/a/d/f;->a(I)V

    iget-object v0, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method final a(Lcom/google/g/a/d/h;)V
    .locals 10

    iget-object v4, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/g/a/d/h;->i()J

    move-result-wide v6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v1

    move v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/d/h;

    invoke-virtual {v0}, Lcom/google/g/a/d/h;->i()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/d/h;->a(I)V

    iget-object v0, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final b(Lcom/google/g/a/d/e;)I
    .locals 2

    iget-object v1, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/g/a/d/e;->b()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 6

    iget-object v1, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/g/a/d/g;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/g/a/d/g;->i:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/g/a/d/g;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/g/a/d/g;->f:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/g/a/d/g;->e:Lcom/google/g/a/c/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/g/a/d/g;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/google/g/a/c/f;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/g/a/d/g;->f:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c(Lcom/google/g/a/d/e;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/g/a/d/e;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/google/g/a/d/g;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/g/a/d/e;->a(I)V

    iget-object v1, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/google/g/a/d/g;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/g/a/d/e;->a(I)V

    iget-object v1, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/g/a/d/e;->a(I)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/g/a/d/g;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/g/a/d/f;->c()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/g/a/d/f;->a(I)V

    invoke-virtual {v0}, Lcom/google/g/a/d/f;->e()V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/g/a/d/g;->c()Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit v1

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/g/a/d/f;->c()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/g/a/d/f;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/google/g/a/d/g;->d()Lcom/google/g/a/d/f;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/google/g/a/d/f;->g()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
