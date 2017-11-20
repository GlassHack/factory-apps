.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/d;
.super Lcom/google/maps/api/android/lib6/gmm6/streetview/x;


# instance fields
.field private final b:[F


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->b:[F

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final a(IIFFIFFFFZ)Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;
    .locals 13

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid sphere face."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v8, p1, 0x1

    add-int/lit8 v9, p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, v0, p4

    sub-float v10, v0, p7

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;

    invoke-direct {v0, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;-><init>(II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_4

    int-to-float v2, v1

    int-to-float v3, p1

    div-float/2addr v2, v3

    mul-float v6, v2, p8

    mul-float v2, v2, p6

    add-float v2, v2, p3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF)F

    move-result v11

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_3

    int-to-float v3, v2

    int-to-float v4, p2

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v7, v4, p9

    mul-float v3, v3, p7

    add-float/2addr v3, v10

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF)F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->b:[F

    invoke-static {v11, v3, v4}, Lcom/google/maps/api/android/lib6/c/bb;->a(FF[F)V

    if-eqz p10, :cond_2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v4, :cond_2

    const/high16 v4, 0x43480000    # 200.0f

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v5, v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v3, v12}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FF[F)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    const/high16 v3, 0x43480000    # 200.0f

    :cond_1
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->b:[F

    aget v12, v5, v4

    mul-float/2addr v12, v3

    aput v12, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->b:[F

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->b:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->b:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->b:[F

    const/4 v12, 0x2

    aget v5, v5, v12

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a(IIFFFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;Lcom/google/maps/api/android/lib6/gmm6/streetview/l;II)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;Lcom/google/maps/api/android/lib6/gmm6/streetview/l;III)V

    return-void
.end method
