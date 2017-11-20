.class public final Lcom/google/maps/api/android/lib6/gmm6/l/ad;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    const/16 v3, 0xc

    move v2, v1

    move v5, v4

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;-><init>(IIIFFI)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    return-void
.end method

.method public constructor <init>(IIIFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->c:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->d:F

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->e:F

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f:I

    return-void
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/l/ad;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ad;
    .locals 7

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v5

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v5

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;-><init>(IIIFFI)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f:I

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f:I

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->b:I

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
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->a:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->a:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->d:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->d:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->b:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->c:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->c:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->e:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->e:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->c:I

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->d:F

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextStyle{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outlineColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leadingRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trackingRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
