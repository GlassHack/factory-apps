.class public final Lcom/google/android/maps/driveabout/store/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/b;


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private b:Lcom/google/android/maps/driveabout/store/y;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/common/a;

.field private final e:Ljava/util/Map;

.field private final f:Lcom/google/googlenav/common/io/b/d;

.field private final g:I

.field private final h:J

.field private i:Lcom/google/android/maps/driveabout/store/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/q;->a:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;IJ)V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/q;->d:Lcom/google/googlenav/common/a;

    .line 160
    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/q;->c:Ljava/lang/String;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 162
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    .line 163
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/q;->f:Lcom/google/googlenav/common/io/b/d;

    .line 164
    iput p4, p0, Lcom/google/android/maps/driveabout/store/q;->g:I

    .line 165
    iput-wide p5, p0, Lcom/google/android/maps/driveabout/store/q;->h:J

    .line 166
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 10

    .prologue
    .line 452
    .line 453
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 454
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 455
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 457
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/s;

    .line 458
    iget-object v5, v0, Lcom/google/android/maps/driveabout/store/s;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;)J

    move-result-wide v5

    .line 459
    iget-object v7, v0, Lcom/google/android/maps/driveabout/store/s;->a:Ljava/lang/String;

    .line 462
    :try_start_0
    iget v8, v0, Lcom/google/android/maps/driveabout/store/s;->c:I

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 463
    iget-wide v8, v0, Lcom/google/android/maps/driveabout/store/s;->d:J

    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 464
    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/s;->b:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;)V

    .line 465
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 473
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 475
    invoke-static {v5, v6, v7, v0}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;[B)Lcom/google/android/maps/driveabout/store/ac;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 468
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/q;)Z
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/q;->d()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;)V
    .locals 8

    .prologue
    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    .line 496
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 497
    const-string v2, "DiskProtoBufCache"

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/q;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    .line 498
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x47

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":Commit inserted "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_1
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    const-string v3, "DiskProtoBufCache"

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized d()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 519
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->i:Lcom/google/android/maps/driveabout/store/r;

    .line 522
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v0, v1

    .line 548
    :goto_0
    monitor-exit p0

    return v0

    .line 525
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 526
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 528
    :try_start_3
    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 529
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/store/q;->b(Ljava/util/List;)V

    .line 533
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 534
    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/s;

    .line 537
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/maps/driveabout/store/s;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 538
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/s;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 546
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 519
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 526
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 542
    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->i:Lcom/google/android/maps/driveabout/store/r;

    .line 544
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v1

    goto :goto_0

    .line 546
    :cond_3
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 548
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    .line 336
    const/4 v0, -0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/t;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    move-object v0, v7

    .line 304
    :goto_0
    return-object v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/maps/driveabout/store/s;

    .line 274
    if-eqz v6, :cond_1

    .line 275
    new-instance v0, Lcom/google/android/maps/driveabout/store/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/q;->d:Lcom/google/googlenav/common/a;

    iget v2, v6, Lcom/google/android/maps/driveabout/store/s;->c:I

    iget-wide v3, v6, Lcom/google/android/maps/driveabout/store/s;->d:J

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/a;-><init>(Lcom/google/googlenav/common/a;IJLcom/google/android/maps/driveabout/store/b;)V

    .line 278
    new-instance v1, Lcom/google/android/maps/driveabout/store/t;

    iget-object v2, v6, Lcom/google/android/maps/driveabout/store/s;->b:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/store/t;-><init>(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)V

    move-object v0, v1

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 282
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;)[B

    move-result-object v0

    .line 283
    if-nez v0, :cond_2

    move-object v0, v7

    .line 284
    goto :goto_0

    .line 287
    :cond_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 288
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 291
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 292
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 294
    new-instance v6, Lcom/google/googlenav/common/io/b/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/q;->f:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v6, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 296
    invoke-virtual {v6, v0, v1}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;I)I

    .line 298
    new-instance v0, Lcom/google/android/maps/driveabout/store/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/q;->d:Lcom/google/googlenav/common/a;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/a;-><init>(Lcom/google/googlenav/common/a;IJLcom/google/android/maps/driveabout/store/b;)V

    .line 299
    new-instance v1, Lcom/google/android/maps/driveabout/store/t;

    invoke-direct {v1, v6, v0}, Lcom/google/android/maps/driveabout/store/t;-><init>(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 304
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/googlenav/common/io/b/a;)V
    .locals 8

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    monitor-enter v6

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    new-instance v0, Lcom/google/android/maps/driveabout/store/s;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    .line 250
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/q;->d:Lcom/google/googlenav/common/a;

    .line 251
    invoke-interface {v1}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/s;-><init>(Ljava/lang/String;Lcom/google/googlenav/common/io/b/a;IJ)V

    .line 249
    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->i:Lcom/google/android/maps/driveabout/store/r;

    if-nez v0, :cond_2

    .line 256
    new-instance v0, Lcom/google/android/maps/driveabout/store/r;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/q;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/maps/driveabout/store/q;->g:I

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/maps/driveabout/store/r;-><init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->i:Lcom/google/android/maps/driveabout/store/r;

    .line 258
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final a(Ljava/io/File;)Z
    .locals 10

    .prologue
    .line 176
    new-instance v0, Lcom/google/android/maps/driveabout/store/x;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/store/x;-><init>(Ljava/io/File;)V

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/q;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 194
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    .line 196
    const-string v0, "DiskProtoBufCache"

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/q;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    .line 197
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    .line 198
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x64

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Loaded cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " with "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries, data version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v3

    .line 185
    :try_start_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/q;->c:Ljava/lang/String;

    const/16 v4, 0xffa

    const/4 v5, -0x1

    sget-object v6, Lcom/google/android/maps/driveabout/store/q;->a:Ljava/util/Locale;

    invoke-static {v3, v4, v5, v6, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/util/Locale;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 375
    :goto_0
    monitor-exit p0

    return v0

    .line 361
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 362
    goto :goto_0

    .line 368
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/google/android/maps/driveabout/store/y;->a(ILjava/util/Locale;)V

    .line 369
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/q;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 375
    goto :goto_0

    .line 370
    :catch_0
    move-exception v1

    .line 371
    :try_start_3
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/q;->h:J

    return-wide v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/q;->d()Z

    .line 213
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/q;->b:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_2
    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
