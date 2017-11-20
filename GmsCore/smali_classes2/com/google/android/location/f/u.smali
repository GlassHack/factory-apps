.class public final Lcom/google/android/location/f/u;
.super Lcom/google/android/location/f/an;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/location/n/a;->K:Lcom/google/g/a/b/b/c;

    invoke-direct {p0, v0}, Lcom/google/android/location/f/an;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 28
    return-void
.end method

.method public static a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/f/s;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    if-nez p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v1

    .line 52
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/f/ac;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/g/a;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 59
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/location/f/ac;->b(Lcom/google/g/a/b/b/a;)Ljava/util/Map;

    move-result-object v3

    .line 61
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v5

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v1}, Lcom/google/g/a/b/b/a;->a(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v1}, Lcom/google/g/a/b/b/a;->d(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_2
    new-instance v5, Lcom/google/android/location/f/as;

    invoke-direct {v5, v3, v2}, Lcom/google/android/location/f/as;-><init>(Ljava/util/Map;Lcom/google/android/location/g/a;)V

    .line 64
    new-instance v1, Lcom/google/android/location/f/s;

    invoke-direct {v1, v5, v4}, Lcom/google/android/location/f/s;-><init>(Lcom/google/android/location/f/as;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/google/android/location/j/a;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "LevelSelectorFactory"

    const-string v2, "Binary data of model corrupted."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
