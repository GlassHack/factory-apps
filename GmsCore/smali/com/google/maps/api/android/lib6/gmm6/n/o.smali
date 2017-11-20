.class final Lcom/google/maps/api/android/lib6/gmm6/n/o;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->c:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/maps/api/android/lib6/gmm6/n/o;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/m;->d:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-virtual {v0, v4, v4}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_0
    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/m;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-virtual {v1, v4, v0}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/m;->d:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_1
    invoke-virtual {v1, v4, v0}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->s()Lcom/google/g/a/b/b/f;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a(Lcom/google/g/a/b/b/f;Lcom/google/g/a/b/b/f;)V

    invoke-virtual {v1}, Lcom/google/g/a/b/b/f;->c()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/g/a/b/b/f;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-object v0, Lcom/google/n/c/a/a/m;->c:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v6, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {v3, v7}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v8}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->d:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Landroid/content/Context;Lcom/google/g/a/b/b/f;Ljava/lang/String;)Z

    invoke-virtual {v3, v8}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v3

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/n/j;

    invoke-direct {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/n/j;-><init>(Lcom/google/g/a/b/b/f;)V

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a(Lcom/google/maps/api/android/lib6/gmm6/n/j;)Lcom/google/maps/api/android/lib6/gmm6/n/j;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v7}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v9}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/n/o;->e:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Landroid/content/Context;Lcom/google/g/a/b/b/f;Ljava/lang/String;)Z

    invoke-virtual {v3, v9}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v3

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/o/au;

    move-result-object v3

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/au;)Lcom/google/maps/api/android/lib6/gmm6/o/au;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->h()Z

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method
