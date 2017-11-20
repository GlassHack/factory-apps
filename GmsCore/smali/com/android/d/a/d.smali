.class public final Lcom/android/d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/d/b;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:J

.field private final c:Ljava/io/File;

.field private final d:I


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/d/a/d;->a:Ljava/util/Map;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/d/a/d;->b:J

    .line 72
    iput-object p1, p0, Lcom/android/d/a/d;->c:Ljava/io/File;

    .line 73
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/android/d/a/d;->d:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/File;B)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/d/a/d;-><init>(Ljava/io/File;)V

    .line 83
    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 491
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    .line 493
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 494
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 495
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 496
    return v0
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    .line 484
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 485
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 486
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 487
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 488
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 3

    .prologue
    .line 500
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 501
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 502
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 503
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 504
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 505
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 506
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 507
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 508
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 524
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 525
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/android/d/a/d;->a(Ljava/io/OutputStream;J)V

    .line 526
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 527
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/d/a/e;)V
    .locals 6

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/d/a/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-wide v0, p0, Lcom/android/d/a/d;->b:J

    iget-wide v2, p2, Lcom/android/d/a/e;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/d/a/d;->b:J

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/android/d/a/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/d/a/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/d/a/e;

    .line 301
    iget-wide v2, p0, Lcom/android/d/a/d;->b:J

    iget-wide v4, p2, Lcom/android/d/a/e;->a:J

    iget-wide v0, v0, Lcom/android/d/a/e;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/d/a/d;->b:J

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .locals 4

    .prologue
    .line 321
    new-array v1, p1, [B

    .line 323
    const/4 v0, 0x0

    .line 324
    :goto_0
    if-ge v0, p1, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 325
    add-int/2addr v0, v2

    goto :goto_0

    .line 327
    :cond_0
    if-eq v0, p1, :cond_1

    .line 328
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_1
    return-object v1
.end method

.method static b(Ljava/io/InputStream;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 511
    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 513
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 514
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 515
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 516
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 517
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 518
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 519
    invoke-static {p0}, Lcom/android/d/a/d;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 520
    return-wide v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/d/a/d;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 224
    iget-object v0, p0, Lcom/android/d/a/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/d/a/e;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/d/a/d;->b:J

    iget-wide v4, v0, Lcom/android/d/a/e;->a:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/d/a/d;->b:J

    iget-object v0, p0, Lcom/android/d/a/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    if-nez v1, :cond_1

    .line 226
    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/android/d/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/d/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_1
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 530
    invoke-static {p0}, Lcom/android/d/a/d;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 531
    invoke-static {p0, v0}, Lcom/android/d/a/d;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 532
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 238
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/d/a/d;->c:Ljava/io/File;

    invoke-static {p1}, Lcom/android/d/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static d(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5

    .prologue
    .line 548
    invoke-static {p0}, Lcom/android/d/a/d;->a(Ljava/io/InputStream;)I

    move-result v2

    .line 549
    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 552
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 553
    invoke-static {p0}, Lcom/android/d/a/d;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-static {p0}, Lcom/android/d/a/d;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 549
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 557
    :cond_1
    return-object v0
.end method

.method private static e(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 477
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 478
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 480
    :cond_0
    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/android/d/c;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/d/a/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/d/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    if-nez v0, :cond_0

    move-object v0, v1

    .line 128
    :goto_0
    monitor-exit p0

    return-object v0

    .line 112
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/d/a/d;->d(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 115
    :try_start_2
    new-instance v3, Lcom/android/d/a/f;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/android/d/a/f;-><init>(Ljava/io/InputStream;B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :try_start_3
    invoke-static {v3}, Lcom/android/d/a/e;->a(Ljava/io/InputStream;)Lcom/android/d/a/e;

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v3}, Lcom/android/d/a/f;->a(Lcom/android/d/a/f;)I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    long-to-int v2, v6

    invoke-static {v3, v2}, Lcom/android/d/a/d;->a(Ljava/io/InputStream;I)[B

    move-result-object v5

    .line 118
    new-instance v2, Lcom/android/d/c;

    invoke-direct {v2}, Lcom/android/d/c;-><init>()V

    iput-object v5, v2, Lcom/android/d/c;->a:[B

    iget-object v5, v0, Lcom/android/d/a/e;->c:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/d/c;->b:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/d/a/e;->d:J

    iput-wide v6, v2, Lcom/android/d/c;->c:J

    iget-wide v6, v0, Lcom/android/d/a/e;->e:J

    iput-wide v6, v2, Lcom/android/d/c;->d:J

    iget-wide v6, v0, Lcom/android/d/a/e;->f:J

    iput-wide v6, v2, Lcom/android/d/c;->e:J

    iget-object v0, v0, Lcom/android/d/a/e;->g:Ljava/util/Map;

    iput-object v0, v2, Lcom/android/d/c;->f:Ljava/util/Map;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 124
    :try_start_4
    invoke-virtual {v3}, Lcom/android/d/a/f;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v2

    .line 128
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 120
    :goto_1
    :try_start_5
    const-string v3, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Lcom/android/d/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/d/a/d;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 122
    if-eqz v2, :cond_1

    .line 126
    :try_start_6
    invoke-virtual {v2}, Lcom/android/d/a/f;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    move-object v0, v1

    .line 128
    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_2

    .line 126
    :try_start_7
    invoke-virtual {v3}, Lcom/android/d/a/f;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 128
    :cond_2
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 124
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 119
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public final declared-synchronized a()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/d/a/d;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/d/a/d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/d/a/d;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/d/ab;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/d/a/d;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 148
    if-eqz v3, :cond_0

    .line 151
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    const/4 v1, 0x0

    .line 154
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-static {v0}, Lcom/android/d/a/e;->a(Ljava/io/InputStream;)Lcom/android/d/a/e;

    move-result-object v1

    .line 156
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/d/a/e;->a:J

    .line 157
    iget-object v6, v1, Lcom/android/d/a/e;->b:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/android/d/a/d;->a(Ljava/lang/String;Lcom/android/d/a/e;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v5, :cond_3

    .line 160
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 164
    :cond_3
    if-eqz v0, :cond_2

    .line 165
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    :goto_3
    if-eqz v1, :cond_4

    .line 165
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 167
    :cond_4
    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 140
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 163
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    .line 159
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/android/d/c;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lcom/android/d/c;->a:[B

    array-length v2, v0

    iget-wide v4, p0, Lcom/android/d/a/d;->b:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget v0, p0, Lcom/android/d/a/d;->d:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    sget-boolean v0, Lcom/android/d/ab;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "Pruning old cache entries."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-wide v4, p0, Lcom/android/d/a/d;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/d/a/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/d/a/e;

    iget-object v8, v0, Lcom/android/d/a/e;->b:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/d/a/d;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/android/d/a/d;->b:J

    iget-wide v10, v0, Lcom/android/d/a/e;->a:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/d/a/d;->b:J

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    iget-wide v8, p0, Lcom/android/d/a/d;->b:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lcom/android/d/a/d;->d:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-gez v1, :cond_5

    :goto_2
    sget-boolean v1, Lcom/android/d/ab;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-wide v8, p0, Lcom/android/d/a/d;->b:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/d/a/d;->d(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 198
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 199
    new-instance v2, Lcom/android/d/a/e;

    invoke-direct {v2, p1, p2}, Lcom/android/d/a/e;-><init>(Ljava/lang/String;Lcom/android/d/c;)V

    .line 200
    invoke-virtual {v2, v1}, Lcom/android/d/a/e;->a(Ljava/io/OutputStream;)Z

    move-result v3

    .line 201
    if-nez v3, :cond_4

    .line 202
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 203
    const-string v1, "Failed to write header for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/d/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 213
    if-nez v1, :cond_2

    .line 214
    const-string v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/android/d/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    .line 195
    :cond_3
    :try_start_3
    const-string v8, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/d/a/e;->b:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v0, v0, Lcom/android/d/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/d/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/android/d/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :cond_4
    :try_start_4
    iget-object v3, p2, Lcom/android/d/c;->a:[B

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 207
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 208
    invoke-direct {p0, p1, v2}, Lcom/android/d/a/d;->a(Ljava/lang/String;Lcom/android/d/a/e;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_5
    move v1, v0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_2
.end method
