.class public final Lcom/google/android/location/p/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/location/p/a/b;

.field public static b:Lcom/google/android/location/p/a/c;


# direct methods
.method public static declared-synchronized a()Lcom/google/android/location/p/a/c;
    .locals 4

    .prologue
    .line 100
    const-class v1, Lcom/google/android/location/p/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/p/a/a;->b:Lcom/google/android/location/p/a/c;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/google/android/location/p/a/c;

    const-string v2, "NLP"

    sget-object v3, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-direct {v0, v2, v3}, Lcom/google/android/location/p/a/c;-><init>(Ljava/lang/String;Lcom/google/android/location/p/a/b;)V

    sput-object v0, Lcom/google/android/location/p/a/a;->b:Lcom/google/android/location/p/a/c;

    .line 104
    :cond_0
    sget-object v0, Lcom/google/android/location/p/a/a;->b:Lcom/google/android/location/p/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/google/android/location/p/a/b;)V
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/google/android/location/p/a/a;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/p/a/a;->b:Lcom/google/android/location/p/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit v1

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/p/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/location/p/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/p/a/b;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/p/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/p/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/p/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/p/a/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
