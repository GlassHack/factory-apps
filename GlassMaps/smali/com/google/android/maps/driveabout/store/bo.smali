.class public final Lcom/google/android/maps/driveabout/store/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/v;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/model/av;

.field private static final b:[B


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/google/android/maps/driveabout/store/bq;

.field private final f:Ljava/util/Map;

.field private g:Lcom/google/android/maps/driveabout/store/y;

.field private final h:I

.field private i:Lcom/google/googlenav/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/maps/driveabout/model/y;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/y;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/store/bo;->a:Lcom/google/android/maps/driveabout/model/av;

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/maps/driveabout/store/bo;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/bq;)V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/google/googlenav/common/a/a;

    invoke-direct {v0}, Lcom/google/googlenav/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    .line 129
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    .line 130
    iput p2, p0, Lcom/google/android/maps/driveabout/store/bo;->d:I

    .line 131
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/bo;->e:Lcom/google/android/maps/driveabout/store/bq;

    .line 132
    invoke-static {}, Lcom/google/android/maps/driveabout/store/bo;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/bo;->h:I

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bo;->h:I

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    .line 134
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;[BI)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x1

    .line 312
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    instance-of v0, p2, Lcom/google/android/maps/driveabout/model/aa;

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t insert a MutableVectorTile into SD cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_2

    .line 387
    :goto_0
    return-void

    .line 317
    :cond_2
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Lcom/google/android/maps/driveabout/model/aw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 318
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->b(Lcom/google/android/maps/driveabout/model/aw;)Ljava/lang/String;

    move-result-object v3

    .line 320
    array-length v0, p3

    if-lez v0, :cond_8

    .line 324
    instance-of v0, p2, Lcom/google/android/maps/driveabout/model/i;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 325
    check-cast v0, Lcom/google/android/maps/driveabout/model/i;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/model/i;->a_()J

    move-result-wide v0

    .line 328
    cmp-long v2, v0, v8

    if-eqz v2, :cond_6

    .line 329
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 330
    cmp-long v2, v0, v4

    if-gez v2, :cond_6

    move-wide v1, v4

    :goto_1
    move-object v0, p2

    .line 336
    check-cast v0, Lcom/google/android/maps/driveabout/model/i;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/model/i;->b_()J

    move-result-wide v6

    .line 339
    cmp-long v0, v6, v8

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    .line 341
    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 342
    cmp-long v0, v6, v4

    if-gez v0, :cond_5

    .line 352
    :goto_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 354
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 356
    const/16 v0, 0x18

    :try_start_0
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 359
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 360
    invoke-virtual {v7, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 361
    invoke-virtual {v7, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 362
    invoke-virtual {v7, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 368
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 369
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 376
    :goto_3
    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    monitor-enter v7

    .line 378
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bp;

    .line 379
    if-eqz v0, :cond_4

    .line 380
    iget v0, v0, Lcom/google/android/maps/driveabout/store/bp;->c:I

    add-int v4, p4, v0

    .line 382
    :goto_4
    new-instance v0, Lcom/google/android/maps/driveabout/store/bp;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/store/bp;-><init>(JLjava/lang/String;I[BLcom/google/android/maps/driveabout/model/av;)V

    .line 383
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/store/bo;->h:I

    if-ge v1, v2, :cond_3

    .line 384
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 366
    :catch_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 368
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 369
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 373
    :catch_1
    move-exception v0

    goto :goto_3

    .line 366
    :catchall_1
    move-exception v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 368
    :try_start_4
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 369
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 372
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    .line 373
    :catch_3
    move-exception v0

    goto :goto_3

    :cond_4
    move v4, p4

    goto :goto_4

    :cond_5
    move-wide v4, v6

    goto :goto_2

    :cond_6
    move-wide v1, v0

    goto/16 :goto_1

    :cond_7
    move-wide v4, v8

    move-wide v1, v8

    goto :goto_2

    :cond_8
    move-object v5, p3

    goto :goto_3
.end method

.method private a(ILjava/util/Locale;)Z
    .locals 2

    .prologue
    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 469
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/store/y;->a(ILjava/util/Locale;)V

    .line 470
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    .line 470
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    return v0

    .line 157
    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/store/x;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/store/x;-><init>(Ljava/io/File;)V

    .line 159
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 161
    :try_start_0
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 173
    const-string v3, "SDCardTileCache"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    .line 174
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    .line 175
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x64

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Loaded cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " with "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries, data version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v3, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 165
    :try_start_1
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/maps/driveabout/store/bo;->d:I

    const/4 v6, -0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6, v7, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 167
    :catch_1
    move-exception v0

    .line 168
    const-string v1, "SDCardTileCache"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Creating cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static e()I
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->d()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    .line 145
    const/16 v1, 0x100

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V
    .locals 2

    .prologue
    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t store unencrypted tiles into SD cache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;[B)V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/store/bo;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;[BI)V

    .line 301
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/bo;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/av;)Z
    .locals 1

    .prologue
    .line 591
    sget-object v0, Lcom/google/android/maps/driveabout/store/bo;->a:Lcom/google/android/maps/driveabout/model/av;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/bo;->b(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/store/bo;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/aw;)[B
    .locals 5

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 560
    const/4 v0, 0x0

    .line 565
    :goto_0
    return-object v0

    .line 562
    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Lcom/google/android/maps/driveabout/model/aw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 563
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->b(Lcom/google/android/maps/driveabout/model/aw;)Ljava/lang/String;

    move-result-object v1

    .line 564
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final a_(Lcom/google/android/maps/driveabout/model/aw;)V
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/google/android/maps/driveabout/store/bo;->a:Lcom/google/android/maps/driveabout/model/av;

    sget-object v1, Lcom/google/android/maps/driveabout/store/bo;->b:[B

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/store/bo;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;[B)V

    .line 403
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/model/aw;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 571
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v2, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v2

    const/16 v3, 0x15

    if-le v2, v3, :cond_1

    .line 583
    :goto_0
    return v0

    .line 577
    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Lcom/google/android/maps/driveabout/model/aw;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 578
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->b(Lcom/google/android/maps/driveabout/model/aw;)Ljava/lang/String;

    move-result-object v3

    .line 579
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/maps/driveabout/store/y;->b(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 580
    goto :goto_0

    .line 582
    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    monitor-enter v2

    .line 583
    :try_start_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;
    .locals 13

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 481
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    move-object v0, v8

    .line 550
    :goto_0
    return-object v0

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bp;

    .line 487
    if-eqz v0, :cond_2

    .line 488
    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/bp;->e:Lcom/google/android/maps/driveabout/model/av;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    .line 492
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Lcom/google/android/maps/driveabout/model/aw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 493
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->b(Lcom/google/android/maps/driveabout/model/aw;)Ljava/lang/String;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;)[B

    move-result-object v2

    .line 495
    if-nez v2, :cond_3

    move-object v0, v8

    goto :goto_0

    .line 497
    :cond_3
    :try_start_1
    array-length v0, v2

    if-nez v0, :cond_4

    .line 498
    sget-object v0, Lcom/google/android/maps/driveabout/store/bo;->a:Lcom/google/android/maps/driveabout/model/av;

    goto :goto_0

    .line 502
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 506
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 507
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 509
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 510
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 511
    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    .line 515
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v11

    sub-long/2addr v4, v11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v11

    add-long/2addr v4, v11

    .line 516
    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    move-wide v4, v6

    .line 521
    :cond_5
    const/16 v0, 0x10

    if-le v3, v0, :cond_7

    .line 522
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 523
    cmp-long v9, v0, v9

    if-eqz v9, :cond_6

    .line 527
    iget-object v9, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v9}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v9

    sub-long/2addr v0, v9

    iget-object v9, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    .line 528
    invoke-interface {v9}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v9

    add-long/2addr v0, v9

    .line 529
    cmp-long v9, v0, v6

    if-gez v9, :cond_6

    .line 546
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->e:Lcom/google/android/maps/driveabout/store/bq;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/android/maps/driveabout/store/bq;->a(Lcom/google/android/maps/driveabout/model/aw;[BIJJ)Lcom/google/android/maps/driveabout/model/av;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    const-string v1, "SDCardTileCache"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Could not unpack tile in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 550
    goto/16 :goto_0

    :cond_6
    move-wide v6, v0

    goto :goto_1

    :cond_7
    move-wide v6, v9

    goto :goto_1
.end method

.method public final c()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final c_()V
    .locals 12

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    .line 598
    const-wide/16 v0, 0x0

    .line 600
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 601
    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    monitor-enter v7

    .line 602
    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bp;

    .line 603
    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/bp;->d:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    int-to-long v9, v1

    add-long v1, v2, v9

    .line 604
    iget-wide v9, v0, Lcom/google/android/maps/driveabout/store/bp;->a:J

    iget-object v3, v0, Lcom/google/android/maps/driveabout/store/bp;->b:Ljava/lang/String;

    iget v11, v0, Lcom/google/android/maps/driveabout/store/bp;->c:I

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/bp;->d:[B

    invoke-static {v9, v10, v3, v11, v0}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;I[B)Lcom/google/android/maps/driveabout/store/ac;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v2, v1

    .line 606
    goto :goto_0

    .line 603
    :cond_0
    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/bp;->d:[B

    array-length v1, v1

    goto :goto_1

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 608
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 611
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    :cond_2
    :goto_2
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 618
    const-string v4, "SDCardTileCache"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    .line 621
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit16 v9, v9, 0x93

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": Commit inserted "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tiles totaling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms. Number of tiles in DiskCache is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_3
    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final declared-synchronized d()V
    .locals 4

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :goto_0
    monitor-exit p0

    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    :try_start_2
    const-string v1, "SDCardTileCache"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "shutDown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
