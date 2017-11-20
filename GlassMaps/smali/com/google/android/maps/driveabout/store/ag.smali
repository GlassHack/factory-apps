.class final Lcom/google/android/maps/driveabout/store/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 2429
    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/ag;-><init>(I[B)V

    .line 2430
    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    .prologue
    .line 2432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2426
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    .line 2433
    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    .line 2434
    iput p1, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    .line 2435
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    .line 2436
    return-void
.end method

.method private constructor <init>([B)V
    .locals 2

    .prologue
    .line 2438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2426
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    .line 2439
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    .line 2440
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    .line 2441
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    .line 2442
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/ag;)I
    .locals 1

    .prologue
    .line 2410
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    return v0
.end method

.method static a(Lcom/google/android/maps/driveabout/store/ay;)Lcom/google/android/maps/driveabout/store/ag;
    .locals 5

    .prologue
    const/16 v2, 0x1ffc

    .line 2445
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2446
    invoke-interface {p0, v0}, Lcom/google/android/maps/driveabout/store/ay;->a([B)V

    .line 2449
    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v1

    .line 2450
    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v2

    .line 2451
    if-eq v1, v2, :cond_0

    .line 2452
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x37

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected checksum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2455
    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/store/ag;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/store/ag;-><init>([B)V

    return-object v1
.end method

.method private a(Lcom/google/android/maps/driveabout/store/af;I)V
    .locals 2

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/af;->a([BI)V

    .line 2503
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/ag;)I
    .locals 1

    .prologue
    .line 2410
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    return v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 2467
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    return v0
.end method

.method final a(I)V
    .locals 4

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a([BIJ)V

    .line 2477
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/af;)V
    .locals 2

    .prologue
    .line 2496
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/af;I)V

    .line 2497
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    .line 2498
    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/store/af;->d:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/google/android/maps/driveabout/store/af;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    .line 2499
    return-void
.end method

.method final b()I
    .locals 1

    .prologue
    .line 2471
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    return v0
.end method

.method final b(I)J
    .locals 2

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/af;->b([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method final b(Lcom/google/android/maps/driveabout/store/ay;)V
    .locals 5

    .prologue
    const/16 v4, 0x1ffc

    const/4 v3, 0x0

    .line 2459
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    invoke-static {v0, v3, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    .line 2460
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    .line 2461
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    invoke-static {v0, v3, v4}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v0

    .line 2462
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    invoke-static {v1, v4, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    .line 2463
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    .line 2464
    return-void
.end method

.method final c()I
    .locals 3

    .prologue
    .line 2506
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    if-nez v0, :cond_0

    .line 2507
    const/4 v0, 0x0

    .line 2513
    :goto_0
    return v0

    .line 2509
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    if-gez v0, :cond_1

    .line 2510
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/ag;->e(I)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v0

    .line 2511
    iget v1, v0, Lcom/google/android/maps/driveabout/store/af;->b:I

    iget v2, v0, Lcom/google/android/maps/driveabout/store/af;->d:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/google/android/maps/driveabout/store/af;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    .line 2513
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    goto :goto_0
.end method

.method final c(I)I
    .locals 2

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/af;->c([BI)I

    move-result v0

    return v0
.end method

.method final d(I)I
    .locals 2

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/af;->d([BI)I

    move-result v0

    return v0
.end method

.method final e(I)Lcom/google/android/maps/driveabout/store/af;
    .locals 3

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/maps/driveabout/store/af;->a([BIII)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2522
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
