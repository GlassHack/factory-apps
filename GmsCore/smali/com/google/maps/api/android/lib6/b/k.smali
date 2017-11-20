.class public final Lcom/google/maps/api/android/lib6/b/k;
.super Ljava/lang/Object;


# instance fields
.field volatile a:Ljava/lang/String;

.field private synthetic b:Lcom/google/maps/api/android/lib6/b/h;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/b/k;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/b/k;-><init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/b/k;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/k;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "REQUEST"

    invoke-static {v0, p1}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->j()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(I)V

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->i(Lcom/google/maps/api/android/lib6/b/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/n;->a()Lcom/google/maps/api/android/lib6/b/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/l;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->i(Lcom/google/maps/api/android/lib6/b/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/n;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/b/n;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/b/k;->a()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized c()J
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->j(Lcom/google/maps/api/android/lib6/b/h;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->k(Lcom/google/maps/api/android/lib6/b/h;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->k(Lcom/google/maps/api/android/lib6/b/h;)J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/h;->l(Lcom/google/maps/api/android/lib6/b/h;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/b/k;->b:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/b/h;->k(Lcom/google/maps/api/android/lib6/b/h;)J

    move-result-wide v4

    rem-long/2addr v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
