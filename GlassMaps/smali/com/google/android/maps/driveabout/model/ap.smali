.class public final Lcom/google/android/maps/driveabout/model/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:F

.field private final c:[I

.field private final d:I


# direct methods
.method private constructor <init>(IF[II)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ap;->a:I

    .line 38
    iput p2, p0, Lcom/google/android/maps/driveabout/model/ap;->b:F

    .line 39
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/ap;->c:[I

    .line 40
    iput p4, p0, Lcom/google/android/maps/driveabout/model/ap;->d:I

    .line 41
    return-void
.end method

.method public static a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/ap;
    .locals 6

    .prologue
    .line 45
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 48
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/z;->a(I)F

    move-result v2

    .line 51
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 52
    new-array v4, v3, [I

    .line 53
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 54
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v5

    aput v5, v4, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 60
    new-instance v3, Lcom/google/android/maps/driveabout/model/ap;

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/google/android/maps/driveabout/model/ap;-><init>(IF[II)V

    return-object v3
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ap;->a:I

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ap;->b:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 114
    check-cast p1, Lcom/google/android/maps/driveabout/model/ap;

    .line 115
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ap;->a:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ap;->a:I

    if-ne v2, v3, :cond_0

    .line 116
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ap;->c:[I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/ap;->c:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ap;->d:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ap;->d:I

    if-ne v2, v3, :cond_0

    .line 118
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ap;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ap;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 100
    .line 102
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ap;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ap;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ap;->d:I

    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ap;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v1, "Stroke{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "color="

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ap;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ap;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dashes="

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ap;->c:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endCaps="

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ap;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ap;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 137
    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
