.class public final Lcom/google/android/location/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/location/d/j;


# instance fields
.field private final b:Lcom/google/j/h;


# direct methods
.method private constructor <init>(Lcom/google/j/h;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/android/location/d/j;->b:Lcom/google/j/h;

    .line 89
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/location/d/j;
    .locals 5

    .prologue
    .line 53
    const-class v2, Lcom/google/android/location/d/j;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/location/d/j;->a:Lcom/google/android/location/d/j;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 54
    invoke-static {p0}, Lcom/google/g/a/a;->a(Landroid/content/Context;)Lcom/google/g/a/a;

    const-string v1, "https://www.google.com/loc/m/api"

    sget-object v0, Lcom/google/android/location/d/a;->q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v3, " "

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const-string v4, "rewrite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "MasfConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "using "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v1, Lcom/google/j/l;

    invoke-direct {v1}, Lcom/google/j/l;-><init>()V

    iput-object v0, v1, Lcom/google/j/l;->a:Ljava/lang/String;

    const-string v0, "location"

    iput-object v0, v1, Lcom/google/j/l;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/location/d/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/j/l;->d:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, v1, Lcom/google/j/l;->e:Ljava/lang/String;

    const-string v0, "gms"

    iput-object v0, v1, Lcom/google/j/l;->f:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/location/d/j;->a(Landroid/content/Context;Lcom/google/j/l;)Lcom/google/android/location/d/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/j;->a:Lcom/google/android/location/d/j;

    .line 56
    :cond_1
    sget-object v0, Lcom/google/android/location/d/j;->a:Lcom/google/android/location/d/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/google/j/l;)Lcom/google/android/location/d/j;
    .locals 3

    .prologue
    .line 37
    const-class v1, Lcom/google/android/location/d/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/d/j;->a:Lcom/google/android/location/d/j;

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/google/g/a/a;->a(Landroid/content/Context;)Lcom/google/g/a/a;

    .line 39
    invoke-static {p1}, Lcom/google/j/h;->a(Lcom/google/j/l;)V

    .line 40
    new-instance v0, Lcom/google/android/location/d/j;

    invoke-static {}, Lcom/google/j/h;->b()Lcom/google/j/h;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/location/d/j;-><init>(Lcom/google/j/h;)V

    sput-object v0, Lcom/google/android/location/d/j;->a:Lcom/google/android/location/d/j;

    .line 43
    :cond_0
    sget-object v0, Lcom/google/android/location/d/j;->a:Lcom/google/android/location/d/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/j/b/m;)V
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/d/j;->b:Lcom/google/j/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/j/h;->a(Lcom/google/j/b/m;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
