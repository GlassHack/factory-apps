.class public final Lcom/google/maps/api/android/lib6/gmm6/n/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Lcom/google/maps/api/android/lib6/gmm6/n/j;

.field private static volatile e:Lcom/google/maps/api/android/lib6/gmm6/o/au;

.field private static volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/j;

    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/m;->i:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/j;-><init>(Lcom/google/g/a/b/b/f;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->d:Lcom/google/maps/api/android/lib6/gmm6/n/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/maps/api/android/lib6/gmm6/n/j;
    .locals 2

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/n/l;->d:Lcom/google/maps/api/android/lib6/gmm6/n/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/n/j;)Lcom/google/maps/api/android/lib6/gmm6/n/j;
    .locals 0

    sput-object p0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->d:Lcom/google/maps/api/android/lib6/gmm6/n/j;

    return-object p0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/au;)Lcom/google/maps/api/android/lib6/gmm6/o/au;
    .locals 0

    sput-object p0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;)V
    .locals 2

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/m;

    const-string v1, "ParameterManagerLoad"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/n/m;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/m;->start()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->b(Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const-class v7, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->a()V

    sget-object v0, Lcom/google/n/c/a/a/m;->d:Lcom/google/g/a/b/b/h;

    invoke-static {p0, p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/g/a/b/b/h;)Lcom/google/g/a/b/b/f;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/maps/api/android/lib6/gmm6/n/l;->c:Z

    :goto_0
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/n/j;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/j;-><init>(Lcom/google/g/a/b/b/f;)V

    sput-object v2, Lcom/google/maps/api/android/lib6/gmm6/n/l;->d:Lcom/google/maps/api/android/lib6/gmm6/n/j;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    sget-object v0, Lcom/google/n/c/a/a/m;->d:Lcom/google/g/a/b/b/h;

    invoke-static {p0, p4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/g/a/b/b/h;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/o/au;

    move-result-object v1

    sput-object v1, Lcom/google/maps/api/android/lib6/gmm6/n/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_0
    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    if-eqz p1, :cond_4

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/b/h;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->f:Z

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/n;

    invoke-direct {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/n/n;-><init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/o;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/n/o;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;B)V

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    :cond_4
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :cond_5
    :try_start_1
    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/n/c/a/a/m;->d:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/m;->i:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_6
    move-object v2, v4

    goto :goto_1
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized c()Lcom/google/maps/api/android/lib6/gmm6/o/au;
    .locals 2

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    monitor-enter v1

    :goto_0
    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/au;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->f:Z

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a:Z

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->b:Z

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->c:Z

    return-void
.end method

.method static synthetic f()Lcom/google/maps/api/android/lib6/gmm6/o/au;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->f:Z

    return v0
.end method

.method static synthetic h()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/n/l;->b:Z

    return v0
.end method
