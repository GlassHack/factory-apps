.class public final Lcom/google/android/location/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/location/c/a;


# instance fields
.field private b:Lcom/google/android/gms/playlog/a;

.field private final c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/location/c/a;->c:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/location/c/a;
    .locals 3

    .prologue
    .line 66
    const-class v1, Lcom/google/android/location/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/c/a;->a:Lcom/google/android/location/c/a;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/android/location/c/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/location/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/location/c/a;->a:Lcom/google/android/location/c/a;

    .line 70
    :cond_0
    sget-object v0, Lcom/google/android/location/c/a;->a:Lcom/google/android/location/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/c/a;->b:Lcom/google/android/gms/playlog/a;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/google/android/gms/playlog/a;

    iget-object v1, p0, Lcom/google/android/location/c/a;->c:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/playlog/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/location/c/a;->b:Lcom/google/android/gms/playlog/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/c/f/b/b;

    invoke-direct {v0}, Lcom/google/c/f/b/b;-><init>()V

    .line 82
    iput-object p1, v0, Lcom/google/c/f/b/b;->a:Ljava/lang/String;

    .line 85
    new-instance v1, Lcom/google/c/f/b/e;

    invoke-direct {v1}, Lcom/google/c/f/b/e;-><init>()V

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/e;->a:Ljava/lang/Integer;

    .line 87
    iput-object v0, v1, Lcom/google/c/f/b/e;->b:Lcom/google/c/f/b/b;

    .line 89
    new-instance v0, Lcom/google/c/f/b/d;

    invoke-direct {v0}, Lcom/google/c/f/b/d;-><init>()V

    .line 90
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/c/f/b/d;->a:Ljava/lang/Integer;

    .line 91
    iput-object v1, v0, Lcom/google/c/f/b/d;->b:Lcom/google/c/f/b/e;

    .line 93
    new-instance v1, Lcom/google/c/f/n;

    invoke-direct {v1}, Lcom/google/c/f/n;-><init>()V

    .line 94
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/n;->a:Ljava/lang/Integer;

    .line 95
    iput-object v0, v1, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    .line 97
    iget-object v0, p0, Lcom/google/android/location/c/a;->b:Lcom/google/android/gms/playlog/a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/location/c/a;->b:Lcom/google/android/gms/playlog/a;

    const-string v2, "NlpLog"

    invoke-static {v1}, Lcom/google/c/f/n;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/playlog/a;->a(Ljava/lang/String;[B[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/c/a;->b:Lcom/google/android/gms/playlog/a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/location/c/a;->b:Lcom/google/android/gms/playlog/a;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/a;->a()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/c/a;->b:Lcom/google/android/gms/playlog/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
