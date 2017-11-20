.class public final Lcom/google/maps/api/android/lib6/gmm6/k/a;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lcom/google/maps/api/android/lib6/gmm6/k/c;

.field private static f:[I


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->f:[I

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/c;->a(I)Lcom/google/maps/api/android/lib6/gmm6/k/c;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->e:Lcom/google/maps/api/android/lib6/gmm6/k/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a(I)I

    move-result v1

    const v0, 0x4c4b400

    if-le p1, v0, :cond_2

    const v0, 0x4c4b400

    :goto_0
    const v2, -0x4c4b400

    if-ge v0, v2, :cond_0

    const v0, -0x4c4b400

    :cond_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->c:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->d:I

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/k/a;->e:Lcom/google/maps/api/android/lib6/gmm6/k/c;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/k/c;->a()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    int-to-long v6, v1

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/k/c;->a()I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v6

    const-wide/32 v6, 0x15752a00

    div-long/2addr v2, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a:I

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/k/a;->e:Lcom/google/maps/api/android/lib6/gmm6/k/c;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v3, 0xf4240

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const v4, 0xf4240

    rem-int/2addr v3, v4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->c()[I

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget v5, v4, v5

    mul-int/lit8 v5, v5, -0x1

    aget v6, v4, v1

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x1

    aget v6, v4, v6

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v1, -0x1

    aget v6, v4, v6

    mul-int/lit8 v6, v6, 0x3

    aget v7, v4, v1

    mul-int/lit8 v7, v7, 0x6

    sub-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x1

    aget v7, v4, v7

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x6

    add-int/lit8 v7, v1, -0x1

    aget v7, v4, v7

    mul-int/lit8 v7, v7, -0x2

    aget v8, v4, v1

    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x1

    aget v8, v4, v8

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x2

    aget v8, v4, v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x6

    aget v1, v4, v1

    int-to-long v4, v5

    int-to-long v8, v3

    mul-long/2addr v4, v8

    int-to-long v8, v3

    mul-long/2addr v4, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    int-to-long v8, v3

    mul-long/2addr v4, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    int-to-long v8, v6

    int-to-long v10, v3

    mul-long/2addr v8, v10

    int-to-long v10, v3

    mul-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    int-to-long v6, v7

    int-to-long v8, v3

    mul-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    long-to-int v1, v4

    if-gez v0, :cond_1

    neg-int v0, v1

    :goto_1
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/k/c;->a()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    int-to-long v0, v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/k/c;->a()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x15752a00

    div-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    sub-long v0, v4, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, p1

    goto/16 :goto_0
.end method

.method private static a(I)I
    .locals 3

    const v2, 0x15752a00

    move v0, p0

    :goto_0
    const v1, -0xaba9500

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const v1, 0xaba9500

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/k/a;
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v0, 0x2c

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/k/a;

    invoke-direct {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/k/a;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 10

    const v9, 0xf4240

    const/16 v5, 0x2e

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-static {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    const/4 v6, 0x2

    if-le v0, v6, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Coordinate has more than one decimal point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v0, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v0, v5, v2

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_0
    aget-object v7, v5, v1

    const/4 v8, 0x6

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x39

    if-le v2, v7, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid fractional part in \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int v4, v6, v9

    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    mul-int v0, v2, v1

    add-int/2addr v0, v4

    :goto_1
    return v0

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v9

    goto :goto_1
.end method

.method private static declared-synchronized c()[I
    .locals 7

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/k/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->f:[I

    if-nez v0, :cond_0

    const/16 v0, 0x54

    new-array v0, v0, [I

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->f:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xfd

    :try_start_1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/google/g/a/b/v;->a([B)Ljava/io/DataInput;

    move-result-object v2

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/k/a;->f:[I

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v4

    aput v4, v3, v0

    const/4 v0, 0x1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    or-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, v3, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t read mercator.dat"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->f:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x10t
        -0x43t
        -0x73t
        0xft
        0x42t
        0x73t
        0xft
        0x42t
        0x73t
        0xft
        0x43t
        -0x5dt
        0xft
        0x46t
        0x6t
        0xft
        0x49t
        -0x67t
        0xft
        0x4et
        0x61t
        0xft
        0x54t
        0x5et
        0xft
        0x5bt
        -0x6dt
        0xft
        0x64t
        0x2t
        0xft
        0x6dt
        -0x50t
        0xft
        0x78t
        -0x61t
        0xft
        -0x7ct
        -0x2ct
        0xft
        -0x6et
        0x54t
        0xft
        -0x5ft
        0x26t
        0xft
        -0x4ft
        0x4et
        0xft
        -0x3et
        -0x2dt
        0xft
        -0x2bt
        -0x43t
        0xft
        -0x16t
        0x15t
        0xft
        -0x1t
        -0x1ft
        0x10t
        0x17t
        0x2dt
        0x10t
        0x30t
        0x1t
        0x10t
        0x4at
        0x6bt
        0x10t
        0x66t
        0x74t
        0x10t
        -0x7ct
        0x2bt
        0x10t
        -0x5dt
        -0x64t
        0x10t
        -0x3ct
        -0x29t
        0x10t
        -0x19t
        -0x13t
        0x11t
        0xct
        -0x12t
        0x11t
        0x33t
        -0x14t
        0x11t
        0x5ct
        -0x4t
        0x11t
        -0x78t
        0x34t
        0x11t
        -0x4bt
        -0x57t
        0x11t
        -0x1bt
        0x76t
        0x12t
        0x17t
        -0x4ct
        0x12t
        0x4ct
        -0x7ft
        0x12t
        -0x7dt
        -0x3t
        0x12t
        -0x42t
        0x46t
        0x12t
        -0x5t
        -0x7ct
        0x13t
        0x3bt
        -0x25t
        0x13t
        0x7ft
        0x77t
        0x13t
        -0x3at
        -0x7at
        0x14t
        0x11t
        0x38t
        0x14t
        0x5ft
        -0x3ct
        0x14t
        -0x4et
        0x64t
        0x15t
        0x9t
        0x57t
        0x15t
        0x64t
        -0x1bt
        0x15t
        -0x3bt
        0x56t
        0x16t
        0x2at
        -0x1t
        0x16t
        -0x6at
        0x3at
        0x17t
        0x7t
        0x6dt
        0x17t
        0x7ft
        0x2t
        0x17t
        -0x3t
        0x75t
        0x18t
        -0x7dt
        0x48t
        0x19t
        0x11t
        0x14t
        0x19t
        -0x59t
        0x78t
        0x1at
        0x47t
        0x2et
        0x1at
        -0xft
        0x3t
        0x1bt
        -0x5bt
        -0x27t
        0x1ct
        0x66t
        -0x4dt
        0x1dt
        0x34t
        -0x4dt
        0x1et
        0x11t
        0x1ft
        0x1et
        -0x3t
        0x6ft
        0x1ft
        -0x5t
        0x4at
        0x21t
        0xct
        -0x69t
        0x22t
        0x33t
        -0x78t
        0x23t
        0x72t
        -0x5bt
        0x24t
        -0x34t
        -0x1et
        0x26t
        0x45t
        -0x4ct
        0x27t
        -0x1ft
        0x2at
        0x29t
        -0x5ct
        0x19t
        0x2bt
        -0x6ct
        0x46t
        0x2dt
        -0x48t
        -0x5bt
        0x30t
        0x19t
        -0x54t
        0x32t
        -0x3ft
        -0x3ft
        0x35t
        -0x43t
        -0x2ft
        0x39t
        0x1et
        0x1ct
        0x3ct
        -0x9t
        0x69t
        0x41t
        0x64t
        -0x60t
        0x46t
        -0x77t
        0x52t
        0x4ct
        -0x6bt
        0x73t
        0x53t
        -0x35t
        0x4ft
        0x5ct
        -0x77t
        0x34t
        0x67t
        0x5at
        0xct
    .end array-data
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/k/a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/k/a;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->c:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/k/a;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->d:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/k/a;->d:I

    if-eq v2, v3, :cond_0

    :cond_3
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/k/a;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/k/a;->b:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->c:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->c:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/k/a;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
