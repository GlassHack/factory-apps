.class public final Lcom/google/android/gms/panorama/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano"

    invoke-interface {v0, v1, v2}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/a/a/b;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/a/a/c;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-static {p0}, Lcom/google/android/gms/panorama/h/a;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    move-object v0, v2

    .line 115
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/panorama/h/b;

    .line 101
    iget-object v3, v0, Lcom/google/android/gms/panorama/h/b;->c:[B

    invoke-static {v3}, Lcom/google/android/gms/panorama/h/a;->a([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, v0, Lcom/google/android/gms/panorama/h/b;->c:[B

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lez v1, :cond_3

    aget-byte v4, v3, v1

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 103
    :goto_2
    add-int/lit8 v1, v1, -0x1d

    new-array v1, v1, [B

    .line 104
    iget-object v0, v0, Lcom/google/android/gms/panorama/h/b;->c:[B

    const/16 v3, 0x1d

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :try_start_0
    invoke-static {v1}, Lcom/a/a/d;->a([B)Lcom/a/a/c;
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    array-length v1, v3

    goto :goto_2

    .line 110
    :catch_0
    move-exception v0

    const-string v0, "XmpUtil"

    const-string v1, "XMP parse error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 111
    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 115
    goto :goto_0
.end method

.method private static a([B)Z
    .locals 5

    .prologue
    const/16 v2, 0x1d

    const/4 v0, 0x0

    .line 281
    array-length v1, p0

    if-ge v1, v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    const/16 v1, 0x1d

    :try_start_0
    new-array v1, v1, [B

    .line 286
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1d

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/4 v7, -0x1

    const/4 v0, 0x0

    .line 328
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 330
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    if-ne v1, v8, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_1

    .line 331
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 388
    :goto_0
    return-object v0

    .line 333
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    :goto_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eq v3, v7, :cond_8

    .line 336
    if-eq v3, v8, :cond_2

    .line 337
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 340
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eq v3, v8, :cond_2

    .line 342
    if-ne v3, v7, :cond_3

    .line 343
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 346
    :cond_3
    const/16 v4, 0xda

    if-ne v3, v4, :cond_4

    .line 383
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_2
    move-object v0, v1

    .line 388
    goto :goto_0

    .line 359
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 360
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    .line 361
    if-eq v4, v7, :cond_5

    if-ne v5, v7, :cond_6

    .line 362
    :cond_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 364
    :cond_6
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    .line 365
    const/16 v5, 0xe1

    if-ne v3, v5, :cond_7

    .line 366
    :try_start_9
    new-instance v5, Lcom/google/android/gms/panorama/h/b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/gms/panorama/h/b;-><init>(B)V

    .line 367
    iput v3, v5, Lcom/google/android/gms/panorama/h/b;->a:I

    .line 368
    iput v4, v5, Lcom/google/android/gms/panorama/h/b;->b:I

    .line 369
    add-int/lit8 v3, v4, -0x2

    new-array v3, v3, [B

    iput-object v3, v5, Lcom/google/android/gms/panorama/h/b;->c:[B

    .line 370
    iget-object v3, v5, Lcom/google/android/gms/panorama/h/b;->c:[B

    const/4 v6, 0x0

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 371
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 379
    :catch_3
    move-exception v1

    .line 380
    :try_start_a
    const-string v3, "XmpUtil"

    const-string v4, "Could not parse file."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 381
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    .line 375
    :cond_7
    add-int/lit8 v3, v4, -0x2

    int-to-long v4, v3

    :try_start_c
    invoke-virtual {v2, v4, v5}, Ljava/io/DataInputStream;->skip(J)J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    .line 385
    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 388
    :goto_3
    throw v0

    .line 383
    :cond_8
    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :goto_4
    move-object v0, v1

    .line 388
    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3
.end method
