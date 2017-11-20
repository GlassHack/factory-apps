.class public final Lcom/google/android/location/collectionlib/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/b/n;


# instance fields
.field private final a:Lcom/google/android/location/d/j;

.field private final b:Lcom/google/android/location/p/a/c;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/p/a/c;)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/be;->b:Lcom/google/android/location/p/a/c;

    .line 61
    new-instance v1, Lcom/google/j/l;

    invoke-direct {v1}, Lcom/google/j/l;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "collectionlib:masf_address"

    invoke-static {v0, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const-string v0, "https://www.google.com/loc/m/api"

    .line 68
    :cond_0
    :goto_0
    iput-object v0, v1, Lcom/google/j/l;->a:Ljava/lang/String;

    .line 69
    const-string v0, "location"

    iput-object v0, v1, Lcom/google/j/l;->c:Ljava/lang/String;

    .line 70
    const-string v0, "1.0"

    iput-object v0, v1, Lcom/google/j/l;->d:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/google/android/location/collectionlib/bi;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/j/l;->e:Ljava/lang/String;

    .line 72
    const-string v0, "android"

    iput-object v0, v1, Lcom/google/j/l;->f:Ljava/lang/String;

    .line 73
    invoke-static {p1, v1}, Lcom/google/android/location/d/j;->a(Landroid/content/Context;Lcom/google/j/l;)Lcom/google/android/location/d/j;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/d/j;->a(Landroid/content/Context;)Lcom/google/android/location/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/be;->a:Lcom/google/android/location/d/j;

    .line 75
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/be;->c:Ljava/util/Map;

    .line 76
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/be;->d:Ljava/util/Map;

    .line 77
    return-void

    .line 66
    :cond_1
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/be;->b:Lcom/google/android/location/p/a/c;

    const-string v3, "Using MASF address overwrite."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/google/g/a/b/b/a;)Lcom/google/j/b/m;
    .locals 3

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p2}, Lcom/google/g/a/b/b/a;->f()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    new-instance v1, Lcom/google/android/location/p/c;

    invoke-direct {v1, p1, v0}, Lcom/google/android/location/p/c;-><init>(Ljava/lang/String;[B)V

    .line 154
    invoke-virtual {v1}, Lcom/google/j/b/m;->h()V

    .line 155
    invoke-virtual {v1, p0}, Lcom/google/j/b/m;->a(Lcom/google/j/b/n;)V

    .line 156
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/google/j/b/m;Lcom/google/g/a/b/b/a;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v0, p0, Lcom/google/android/location/collectionlib/be;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/bf;

    .line 229
    if-eqz v0, :cond_1

    .line 230
    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/collectionlib/bf;->b:Landroid/util/Pair;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bf;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/be;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 234
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/collectionlib/ae;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez p2, :cond_2

    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4, p3}, Lcom/google/android/location/collectionlib/by;-><init>(ZLcom/google/g/a/b/b/a;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/google/android/location/collectionlib/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p2, v4}, Lcom/google/android/location/collectionlib/by;-><init>(ZLcom/google/g/a/b/b/a;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 172
    :try_start_0
    iget v1, p2, Lcom/google/j/b/o;->d:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server error, RC="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/google/j/b/o;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 205
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/collectionlib/be;->a(Lcom/google/j/b/m;Lcom/google/g/a/b/b/a;Ljava/lang/String;)V

    .line 206
    return-void

    .line 179
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/google/j/b/o;->t_()Ljava/io/InputStream;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 182
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_2

    .line 184
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v1

    .line 202
    const-string v2, "Failed to read data from MASF: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 203
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/be;->b:Lcom/google/android/location/p/a/c;

    invoke-virtual {v2, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 187
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v3, Lcom/google/android/location/n/a;->T:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 188
    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/a;->b([B)Lcom/google/g/a/b/b/a;

    .line 189
    invoke-virtual {v1}, Lcom/google/g/a/b/b/a;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 190
    new-instance v1, Ljava/io/IOException;

    const-string v2, "isValid returned after parsing reply"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    const-string v2, "GLS error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 195
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/be;->b:Lcom/google/android/location/p/a/c;

    invoke-virtual {v2, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_4
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 197
    goto :goto_0
.end method

.method public final a(Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 211
    const-string v0, "Failed to send data to MASF: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/be;->b:Lcom/google/android/location/p/a/c;

    invoke-virtual {v1, v0}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 213
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/location/collectionlib/be;->a(Lcom/google/j/b/m;Lcom/google/g/a/b/b/a;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/ae;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    iget-object v2, p0, Lcom/google/android/location/collectionlib/be;->a:Lcom/google/android/location/d/j;

    if-nez v2, :cond_1

    .line 101
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/be;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Could not initialize MASF service."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const-string v2, "g:loc/uil"

    invoke-direct {p0, v2, p1}, Lcom/google/android/location/collectionlib/be;->a(Ljava/lang/String;Lcom/google/g/a/b/b/a;)Lcom/google/j/b/m;

    move-result-object v2

    .line 105
    if-eqz p2, :cond_3

    .line 106
    iget-object v3, p0, Lcom/google/android/location/collectionlib/be;->d:Ljava/util/Map;

    monitor-enter v3

    .line 107
    :try_start_0
    iget-object v4, p0, Lcom/google/android/location/collectionlib/be;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    :cond_2
    const-string v4, "Duplicated request."

    invoke-static {v0, v4}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/location/collectionlib/be;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/collectionlib/be;->a:Lcom/google/android/location/d/j;

    invoke-virtual {v0, v2}, Lcom/google/android/location/d/j;->a(Lcom/google/j/b/m;)V

    move v0, v1

    .line 114
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
