.class public final Lcom/google/android/maps/driveabout/model/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:I


# direct methods
.method private constructor <init>(IIIFFI)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/maps/driveabout/model/au;->a:I

    .line 47
    iput p2, p0, Lcom/google/android/maps/driveabout/model/au;->b:I

    .line 48
    iput p3, p0, Lcom/google/android/maps/driveabout/model/au;->c:I

    .line 49
    iput p4, p0, Lcom/google/android/maps/driveabout/model/au;->d:F

    .line 50
    iput p5, p0, Lcom/google/android/maps/driveabout/model/au;->e:F

    .line 51
    iput p6, p0, Lcom/google/android/maps/driveabout/model/au;->f:I

    .line 52
    return-void
.end method

.method public static a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/au;
    .locals 7

    .prologue
    .line 56
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 59
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 62
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 65
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/z;->b(I)F

    move-result v4

    .line 68
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/z;->b(I)F

    move-result v5

    .line 71
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 73
    new-instance v0, Lcom/google/android/maps/driveabout/model/au;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/model/au;-><init>(IIIFFI)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/maps/driveabout/model/au;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/maps/driveabout/model/au;->c:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 140
    check-cast p1, Lcom/google/android/maps/driveabout/model/au;

    .line 141
    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->f:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/au;->f:I

    if-ne v2, v3, :cond_0

    .line 142
    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->a:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/au;->a:I

    if-ne v2, v3, :cond_0

    .line 143
    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->d:F

    iget v3, p1, Lcom/google/android/maps/driveabout/model/au;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 144
    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/au;->b:I

    if-ne v2, v3, :cond_0

    .line 145
    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/au;->c:I

    if-ne v2, v3, :cond_0

    .line 146
    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->e:F

    iget v3, p1, Lcom/google/android/maps/driveabout/model/au;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

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
    .line 124
    .line 126
    iget v0, p0, Lcom/google/android/maps/driveabout/model/au;->f:I

    add-int/lit8 v0, v0, 0x1f

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/au;->a:I

    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/au;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/au;->b:I

    add-int/2addr v0, v1

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/au;->c:I

    add-int/2addr v0, v1

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/au;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    const-string v1, "TextStyle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "color="

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outlineColor="

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leadingRatio="

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trackingRatio="

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attributes="

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/au;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
