.class final Lcom/google/maps/api/android/lib6/c/at;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/maps/api/android/lib6/c/at;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Lcom/google/maps/api/android/lib6/b/o;

.field private final d:Lcom/google/maps/api/android/lib6/c/av;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/at;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/c/av;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/at;->c:Lcom/google/maps/api/android/lib6/b/o;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/at;->d:Lcom/google/maps/api/android/lib6/c/av;

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/google/maps/api/android/lib6/c/at;
    .locals 6

    sget-object v1, Lcom/google/maps/api/android/lib6/c/at;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/c/at;->a:Lcom/google/maps/api/android/lib6/c/at;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/c/at;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v2

    new-instance v3, Lcom/google/maps/api/android/lib6/c/av;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.maps._m_u"

    invoke-direct {v3, v4, v5}, Lcom/google/maps/api/android/lib6/c/av;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/google/maps/api/android/lib6/c/at;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/c/av;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/at;->a:Lcom/google/maps/api/android/lib6/c/at;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/maps/api/android/lib6/c/at;->a:Lcom/google/maps/api/android/lib6/c/at;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/c/at;)Lcom/google/maps/api/android/lib6/c/av;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/at;->d:Lcom/google/maps/api/android/lib6/c/av;

    return-object v0
.end method

.method static a(Lcom/google/g/a/b/b/f;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/google/g/a/b/b/f;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/c/at;)Lcom/google/maps/api/android/lib6/b/o;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/at;->c:Lcom/google/maps/api/android/lib6/b/o;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/at;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/at;->e:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/at;->c:Lcom/google/maps/api/android/lib6/b/o;

    new-instance v1, Lcom/google/maps/api/android/lib6/c/au;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/c/au;-><init>(Lcom/google/maps/api/android/lib6/c/at;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/b/o;->c(Lcom/google/maps/api/android/lib6/b/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/c/at;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/at;->e:Z

    return v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/at;->d:Lcom/google/maps/api/android/lib6/c/av;

    sget-object v1, Lcom/google/n/c/a/a/h;->c:Lcom/google/g/a/b/b/h;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/av;->a(Lcom/google/g/a/b/b/h;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/h;->c:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    :cond_0
    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/h;->d:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/f;->a(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/at;->d:Lcom/google/maps/api/android/lib6/c/av;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/c/av;->a(Lcom/google/g/a/b/b/f;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/at;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
