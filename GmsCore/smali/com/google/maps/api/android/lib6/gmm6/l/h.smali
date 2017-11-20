.class public final Lcom/google/maps/api/android/lib6/gmm6/l/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public static a(D)D
    .locals 4

    const-wide v0, 0x41731680b1202bfeL    # 2.0015115070354454E7

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41c0000000000000L    # 5.36870912E8

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-virtual {p3, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :goto_0
    invoke-virtual {p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    invoke-virtual {p3, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_0
.end method

.method public static a(DD)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 10

    const-wide v8, 0x41a45f306dc9c883L    # 1.708913188941079E8

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    mul-double v2, p0, v4

    mul-double/2addr v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v6

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    return-object v0
.end method

.method public static a(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 6

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(DD)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 6

    const v5, -0x41b33333    # -0.2f

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/high16 v2, 0x10000000

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gez v0, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-ltz v0, :cond_3

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-ltz v0, :cond_3

    :cond_1
    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v2

    :cond_2
    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v0, v2

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/2addr v2, v3

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(III)V

    return-object v1

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gez v2, :cond_2

    neg-int v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 3

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    if-gez v0, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    neg-int v0, v0

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shr-int/2addr v1, v0

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shr-int v0, v2, v0

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    add-int/2addr v2, v0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shl-int/2addr v1, v0

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shl-int v0, v2, v0

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    add-int/2addr v2, v0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;[II)V
    .locals 6

    const/4 v5, 0x0

    mul-int/lit8 v0, p3, 0x3

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    if-gez v1, :cond_0

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    neg-int v1, v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int v1, v3, v1

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    aput v5, p2, v0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int v1, v3, v1

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    aput v5, p2, v0

    goto :goto_0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-float v0, v0

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-float v1, v1

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-float v2, v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static b(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(DD)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i()F

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method static b(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;[II)V
    .locals 5

    mul-int/lit8 v0, p3, 0x3

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    if-gez v1, :cond_0

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    neg-int v1, v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shr-int v1, v2, v1

    aput v1, p2, v0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shl-int v1, v2, v1

    aput v1, p2, v0

    goto :goto_0
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 7

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v5

    add-float/2addr v3, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    div-float v0, v3, v0

    return v0
.end method

.method public static c(I)I
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    move v0, p0

    :goto_0
    const/high16 v1, -0x20000000

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const/high16 v1, 0x20000000

    if-lt v0, v1, :cond_1

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static c(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 6

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(DD)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    return-object v0
.end method

.method public static e(II)Z
    .locals 2

    const/high16 v1, 0x20000000

    const/high16 v0, -0x20000000

    if-lt p0, v0, :cond_0

    if-ge p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;F)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-object v0
.end method

.method public final a(FF)V
    .locals 6

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p1

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    return-void
.end method

.method public final a(III)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final a(I[II)V
    .locals 7

    const/16 v6, 0x10

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v0, v0

    shl-long/2addr v0, v6

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v2, v1

    shl-long/2addr v2, v6

    int-to-long v4, p1

    div-long/2addr v2, v4

    long-to-int v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-long v2, v2

    shl-long/2addr v2, v6

    int-to-long v4, p1

    div-long/2addr v2, v4

    long-to-int v2, v2

    aput v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    aput v2, p2, v0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FF)V
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(I)I

    move-result v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p3

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/c;->a(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/high16 v1, 0x20000000

    sub-int v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-le v1, v0, :cond_1

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void

    :cond_1
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    neg-int v2, v0

    if-ge v1, v2, :cond_2

    neg-int v0, v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    goto :goto_0
.end method

.method public final a([II)V
    .locals 3

    mul-int/lit8 v0, p2, 0x3

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    aput v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    aput v1, p1, v0

    return-void
.end method

.method public final b()D
    .locals 6

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L    # 5.8516723170686385E-9

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final c()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final d()D
    .locals 6

    const-wide v4, 0x4076800000000000L    # 360.0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L    # 5.8516723170686385E-9

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    :goto_0
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    add-double/2addr v0, v4

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public final d(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public final d(II)V
    .locals 1

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final e()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 5

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    return v0
.end method

.method public final f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 5

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    return v0
.end method

.method public final g(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 20

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-long v8, v3

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v10, v3

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v12, v3

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-long v14, v3

    mul-long v16, v6, v14

    mul-long v18, v8, v12

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v3, v0

    iput v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    mul-long/2addr v8, v10

    mul-long/2addr v14, v4

    sub-long/2addr v8, v14

    long-to-int v3, v8

    iput v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    mul-long/2addr v4, v12

    mul-long/2addr v6, v10

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-object v2
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return v0
.end method

.method public final h(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 2

    const/high16 v0, -0x20000000

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(I)I

    move-result v1

    iput v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-ge v1, v0, :cond_0

    :goto_0
    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void

    :cond_0
    const/high16 v0, 0x20000000

    if-lt v1, v0, :cond_1

    const v0, 0x1fffffff

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xd

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x8

    xor-int/2addr v1, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0xd

    xor-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x10

    xor-int/2addr v1, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0x3

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0xa

    xor-int/2addr v1, v3

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()F
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(I)I

    move-result v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
