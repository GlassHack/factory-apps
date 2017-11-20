.class final Lcom/google/android/maps/driveabout/store/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I


# direct methods
.method constructor <init>(JIIIIIII)V
    .locals 0

    .prologue
    .line 2311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2312
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/store/af;->a:J

    .line 2313
    iput p3, p0, Lcom/google/android/maps/driveabout/store/af;->b:I

    .line 2314
    iput p6, p0, Lcom/google/android/maps/driveabout/store/af;->c:I

    .line 2315
    iput p4, p0, Lcom/google/android/maps/driveabout/store/af;->d:I

    .line 2316
    iput p5, p0, Lcom/google/android/maps/driveabout/store/af;->e:I

    .line 2317
    iput p7, p0, Lcom/google/android/maps/driveabout/store/af;->f:I

    .line 2318
    iput p8, p0, Lcom/google/android/maps/driveabout/store/af;->g:I

    .line 2319
    iput p9, p0, Lcom/google/android/maps/driveabout/store/af;->h:I

    .line 2320
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 2347
    ushr-int/lit8 v0, p0, 0x5

    return v0
.end method

.method static a([BIII)Lcom/google/android/maps/driveabout/store/af;
    .locals 10

    .prologue
    .line 2373
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->c([BI)J

    move-result-wide v1

    add-int/lit8 v0, p1, 0x8

    .line 2374
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    .line 2375
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v5

    add-int/lit8 v0, v0, 0x4

    .line 2376
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v7

    .line 2377
    invoke-static {v4}, Lcom/google/android/maps/driveabout/store/af;->a(I)I

    move-result v3

    .line 2378
    invoke-static {v4}, Lcom/google/android/maps/driveabout/store/af;->b(I)I

    move-result v6

    .line 2379
    invoke-static {v5}, Lcom/google/android/maps/driveabout/store/af;->c(I)I

    move-result v4

    .line 2380
    const v0, 0xffffff

    and-int/2addr v5, v0

    .line 2381
    new-instance v0, Lcom/google/android/maps/driveabout/store/af;

    move v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/store/af;-><init>(JIIIIIII)V

    return-object v0
.end method

.method private static b(I)I
    .locals 1

    .prologue
    .line 2351
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static b([BI)J
    .locals 2

    .prologue
    .line 2386
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->c([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(I)I
    .locals 1

    .prologue
    .line 2355
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method static c([BI)I
    .locals 1

    .prologue
    .line 2390
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    .line 2391
    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/af;->c(I)I

    move-result v0

    return v0
.end method

.method static d([BI)I
    .locals 1

    .prologue
    .line 2395
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    .line 2396
    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/af;->b(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method final a([BI)V
    .locals 4

    .prologue
    .line 2359
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BIJ)V

    add-int/lit8 v0, p2, 0x8

    .line 2360
    iget v1, p0, Lcom/google/android/maps/driveabout/store/af;->b:I

    shl-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/store/af;->c:I

    or-int/2addr v1, v2

    .line 2361
    invoke-static {v1}, Lcom/google/android/maps/driveabout/store/af;->a(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/store/af;->b:I

    if-eq v2, v3, :cond_0

    .line 2362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/maps/driveabout/store/af;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not pack data offset of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2364
    :cond_0
    invoke-static {v1}, Lcom/google/android/maps/driveabout/store/af;->b(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/store/af;->c:I

    if-eq v2, v3, :cond_1

    .line 2365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/maps/driveabout/store/af;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not pack refcount of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2367
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 2368
    iget v1, p0, Lcom/google/android/maps/driveabout/store/af;->d:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/google/android/maps/driveabout/store/af;->e:I

    or-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 2369
    iget v1, p0, Lcom/google/android/maps/driveabout/store/af;->f:I

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    .line 2370
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2324
    if-ne p0, p1, :cond_1

    .line 2334
    :cond_0
    :goto_0
    return v0

    .line 2328
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 2329
    goto :goto_0

    .line 2332
    :cond_3
    check-cast p1, Lcom/google/android/maps/driveabout/store/af;

    .line 2334
    iget v2, p0, Lcom/google/android/maps/driveabout/store/af;->g:I

    iget v3, p1, Lcom/google/android/maps/driveabout/store/af;->g:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/maps/driveabout/store/af;->h:I

    iget v3, p1, Lcom/google/android/maps/driveabout/store/af;->h:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 2341
    iget v0, p0, Lcom/google/android/maps/driveabout/store/af;->g:I

    .line 2342
    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/google/android/maps/driveabout/store/af;->h:I

    add-int/2addr v0, v1

    .line 2343
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2401
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/af;->a:J

    iget v2, p0, Lcom/google/android/maps/driveabout/store/af;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/store/af;->d:I

    iget v4, p0, Lcom/google/android/maps/driveabout/store/af;->e:I

    iget v5, p0, Lcom/google/android/maps/driveabout/store/af;->f:I

    iget v6, p0, Lcom/google/android/maps/driveabout/store/af;->g:I

    iget v7, p0, Lcom/google/android/maps/driveabout/store/af;->h:I

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x8c

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "ID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Off:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KeyLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Shard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ShardIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
