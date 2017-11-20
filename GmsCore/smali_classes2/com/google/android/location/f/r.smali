.class public final Lcom/google/android/location/f/r;
.super Lcom/google/android/location/f/an;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/location/n/a;->L:Lcom/google/g/a/b/b/c;

    invoke-direct {p0, v0}, Lcom/google/android/location/f/an;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 28
    return-void
.end method

.method public static a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/f/p;
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v1

    .line 50
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/f/ac;->b(Lcom/google/g/a/b/b/a;)Ljava/util/Map;

    move-result-object v2

    .line 53
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/location/f/ac;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/g/a;

    move-result-object v3

    .line 55
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/location/f/ac;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/g/a;

    move-result-object v4

    .line 58
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 62
    new-instance v5, Lcom/google/android/location/f/as;

    invoke-direct {v5, v2, v3}, Lcom/google/android/location/f/as;-><init>(Ljava/util/Map;Lcom/google/android/location/g/a;)V

    .line 64
    new-instance v3, Lcom/google/android/location/f/as;

    invoke-direct {v3, v2, v4}, Lcom/google/android/location/f/as;-><init>(Ljava/util/Map;Lcom/google/android/location/g/a;)V

    .line 67
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    move v2, v1

    .line 69
    :goto_1
    new-instance v1, Lcom/google/android/location/f/b;

    invoke-direct {v1, v5, v3, v2}, Lcom/google/android/location/f/b;-><init>(Lcom/google/android/location/f/as;Lcom/google/android/location/f/as;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 67
    :cond_2
    const/16 v1, 0x3e8

    move v2, v1

    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/google/android/location/j/a;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "LevelModelFactory"

    const-string v2, "Binary data of model corrupted."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
