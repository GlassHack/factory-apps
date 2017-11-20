.class public final Lcom/google/android/location/f/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/g/a;
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 35
    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/g/a/b/b/a;->b()[B

    move-result-object v0

    .line 41
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 43
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    invoke-static {v2}, Lcom/google/android/location/g/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/g/a;

    move-result-object v0

    .line 45
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    goto :goto_0
.end method

.method public static b(Lcom/google/g/a/b/b/a;)Ljava/util/Map;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 60
    invoke-virtual {p0, v4, v0}, Lcom/google/g/a/b/b/a;->b(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/google/g/a/b/b/a;->a(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object v1
.end method
