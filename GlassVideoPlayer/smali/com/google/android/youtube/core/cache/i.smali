.class public final Lcom/google/android/youtube/core/cache/i;
.super Lcom/google/android/youtube/core/cache/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/c;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private a(Ljava/io/Serializable;Ljava/io/BufferedOutputStream;)V
    .locals 3

    .prologue
    .line 32
    const/4 v2, 0x0

    .line 34
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/i;->a(Ljava/io/OutputStream;)V

    .line 39
    return-void

    .line 36
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 37
    :goto_0
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/i;->a(Ljava/io/OutputStream;)V

    .line 38
    throw v0

    .line 36
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/io/BufferedInputStream;)Ljava/io/Serializable;
    .locals 3

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 50
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/i;->a(Ljava/io/InputStream;)V

    .line 57
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 53
    :goto_0
    :try_start_2
    const-string v2, "Couldn\'t read object"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    :goto_1
    invoke-static {v1}, Lcom/google/android/youtube/core/cache/i;->a(Ljava/io/InputStream;)V

    .line 56
    throw v0

    .line 54
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 52
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Ljava/io/BufferedInputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/i;->b(Ljava/io/BufferedInputStream;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/io/BufferedOutputStream;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/cache/i;->a(Ljava/io/Serializable;Ljava/io/BufferedOutputStream;)V

    return-void
.end method
