.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/s;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field final b:[B

.field c:[B

.field d:[Ljava/lang/String;

.field e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

.field f:I

.field private g:[B

.field private h:[Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

.field private i:I

.field private j:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a:[B

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a:[B

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b:[B

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->j:Z

    return-void
.end method

.method private static a(FI)I
    .locals 1

    float-to-int v0, p0

    if-lt v0, p1, :cond_1

    sub-int/2addr v0, p1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez v0, :cond_0

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private static a([B)Lcom/google/maps/api/android/lib6/gmm6/streetview/af;
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private d()Z
    .locals 10

    const/16 v4, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a:[B

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a:[B

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a([B)Lcom/google/maps/api/android/lib6/gmm6/streetview/af;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedShort()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->i:I

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->i:I

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->g:[B

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->g:[B

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFully([B)V

    new-array v1, v3, [Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->h:[Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFloat()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFloat()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFloat()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFloat()F

    move-result v7

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->h:[Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    new-instance v9, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;-><init>(FFFF)V

    aput-object v9, v8, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()Z
    .locals 9

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b:[B

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b:[B

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a([B)Lcom/google/maps/api/android/lib6/gmm6/streetview/af;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedShort()I

    move-result v2

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedShort()I

    move-result v5

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    if-ne v6, v2, :cond_0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->i:I

    if-ne v2, v5, :cond_0

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v2

    if-ne v2, v7, :cond_0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->i:I

    mul-int/2addr v2, v5

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c:[B

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c:[B

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFully([B)V

    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v2, v5

    const/16 v2, 0x16

    new-array v5, v2, [B

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFully([B)V

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d:[Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-array v2, v4, [Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v2, v5

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFloat()F

    move-result v5

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readFloat()F

    move-result v6

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    invoke-direct {v8, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;-><init>(FF)V

    aput-object v8, v7, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(FF[F)F
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c()V

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FF)Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lt v1, v5, :cond_1

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;->a:F

    aput v1, p3, v2

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;->c:F

    neg-float v1, v1

    aput v1, p3, v4

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;->b:F

    aput v1, p3, v3

    :cond_1
    new-array v1, v5, [F

    invoke-static {p1, p2, v1}, Lcom/google/maps/api/android/lib6/c/bb;->a(FF[F)V

    aget v2, v1, v2

    aget v3, v1, v3

    neg-float v3, v3

    aget v1, v1, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;->a(FFF)F

    move-result v0

    goto :goto_0
.end method

.method final a(F)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FI)I

    move-result v0

    return v0
.end method

.method public final a(FF)Lcom/google/maps/api/android/lib6/gmm6/streetview/u;
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c()V

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(F)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b(F)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->g:[B

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->h:[Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/streetview/v;
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c()V

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->j:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d()Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e()Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->j:Z

    goto :goto_0
.end method

.method final b(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->i:I

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FI)I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->j:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->g:[B

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->h:[Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c:[B

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->j:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->j:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Depth map must be decompressed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
