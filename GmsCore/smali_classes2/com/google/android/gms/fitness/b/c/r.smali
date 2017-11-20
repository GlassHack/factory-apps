.class public final Lcom/google/android/gms/fitness/b/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gms/fitness/b/c/q;->a:Ljava/util/Set;

    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-static {p0}, Lcom/google/android/gms/fitness/b/c/r;->e(Lcom/google/android/gms/fitness/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/google/android/gms/fitness/b/c/r;->e(Lcom/google/android/gms/fitness/b/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 2

    .prologue
    .line 31
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_activity_segment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/fitness/b/c/r;->e(Lcom/google/android/gms/fitness/b/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 2

    .prologue
    .line 39
    const-string v0, "com.google.android.apps.fitness"

    invoke-static {p0}, Lcom/google/android/gms/fitness/b/c/r;->e(Lcom/google/android/gms/fitness/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user_input"

    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Lcom/google/android/gms/fitness/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/e;->a()Lcom/google/android/gms/fitness/b/b;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
