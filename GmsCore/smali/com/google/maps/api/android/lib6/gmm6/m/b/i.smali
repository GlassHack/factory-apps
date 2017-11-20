.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/i;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field b:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit16 v0, p1, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->b:I

    return-void
.end method

.method static a(J)[I
    .locals 12

    const/4 v0, 0x0

    const-wide/16 v10, 0x1fd3

    const/16 v8, 0x16

    const/4 v1, 0x3

    new-array v1, v1, [I

    invoke-static {p0, p1, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    rem-long v4, v2, v10

    long-to-int v4, v4

    aput v4, v1, v0

    invoke-static {v2, v3, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const/4 v4, 0x1

    rem-long v6, v2, v10

    long-to-int v5, v6

    aput v5, v1, v4

    invoke-static {v2, v3, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const/4 v4, 0x2

    rem-long/2addr v2, v10

    long-to-int v2, v2

    aput v2, v1, v4

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    if-gez v2, :cond_0

    aget v2, v1, v0

    add-int/lit16 v2, v2, 0x1fd3

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method final a(I)V
    .locals 4

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    add-int/lit16 v2, v0, 0x3fc

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method final a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V
    .locals 10

    const/4 v1, 0x0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a(I)V

    move v0, v1

    :goto_0
    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a(J)[I

    move-result-object v3

    mul-int/lit16 v4, v4, 0x400

    move v2, v1

    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_0

    aget v5, v3, v2

    shr-int/lit8 v5, v5, 0x3

    aget v6, v3, v2

    and-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    add-int/2addr v5, v4

    aget-byte v8, v7, v5

    const/4 v9, 0x1

    shl-int v6, v9, v6

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->b:I

    if-lt v0, v1, :cond_2

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->b:I

    :cond_2
    return-void
.end method

.method final a([II)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    mul-int/lit16 v3, p2, 0x400

    move v0, v1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x3

    aget v5, p1, v0

    and-int/lit8 v5, v5, 0x7

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    add-int/2addr v4, v3

    aget-byte v4, v6, v4

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method final b(I)V
    .locals 3

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    return-void
.end method
