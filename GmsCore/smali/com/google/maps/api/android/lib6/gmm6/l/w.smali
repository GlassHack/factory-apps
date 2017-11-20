.class public final Lcom/google/maps/api/android/lib6/gmm6/l/w;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/google/maps/api/android/lib6/gmm6/l/w;


# instance fields
.field private final a:I

.field private final b:F

.field private final c:[I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/w;

    const/high16 v1, 0x3f800000    # 1.0f

    new-array v2, v3, [I

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/w;-><init>(IF[II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->e:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    return-void
.end method

.method public constructor <init>(IF[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b:F

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d:I

    return-void
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/l/w;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->e:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/w;
    .locals 7

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float v4, v0, v1

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v0, v5, [I

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v6

    aput v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/google/maps/api/android/lib6/gmm6/a/b;->b:Z

    if-eqz v1, :cond_1

    new-array v0, v2, [I

    :cond_1
    array-length v5, v0

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget v6, v0, v1

    if-nez v6, :cond_3

    new-array v0, v2, [I

    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/w;-><init>(IF[II)V

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a:I

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b:F

    return v0
.end method

.method public final d()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/w;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stroke{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dashes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->c:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endCaps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/w;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
