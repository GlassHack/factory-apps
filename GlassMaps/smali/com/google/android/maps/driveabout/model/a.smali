.class public final Lcom/google/android/maps/driveabout/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/ab;

.field private final b:I

.field private final c:F

.field private final d:Lcom/google/android/maps/driveabout/model/ab;

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ab;IFLcom/google/android/maps/driveabout/model/ab;FFF)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/a;->a:Lcom/google/android/maps/driveabout/model/ab;

    .line 43
    iput p2, p0, Lcom/google/android/maps/driveabout/model/a;->b:I

    .line 44
    iput p3, p0, Lcom/google/android/maps/driveabout/model/a;->c:F

    .line 45
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/a;->d:Lcom/google/android/maps/driveabout/model/ab;

    .line 46
    iput p5, p0, Lcom/google/android/maps/driveabout/model/a;->e:F

    .line 47
    iput p6, p0, Lcom/google/android/maps/driveabout/model/a;->f:F

    .line 48
    iput p7, p0, Lcom/google/android/maps/driveabout/model/a;->g:F

    .line 49
    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;I)Lcom/google/android/maps/driveabout/model/a;
    .locals 8

    .prologue
    const/high16 v0, 0x7fc00000    # NaNf

    .line 62
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/model/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 63
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 67
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/model/z;->d(I)F

    move-result v3

    .line 74
    :goto_0
    const/4 v4, 0x0

    .line 78
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/model/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 82
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/z;->d(I)F

    move-result v5

    .line 83
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/z;->a(I)F

    move-result v6

    .line 84
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/z;->a(I)F

    move-result v7

    .line 87
    :goto_1
    new-instance v0, Lcom/google/android/maps/driveabout/model/a;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/model/a;-><init>(Lcom/google/android/maps/driveabout/model/ab;IFLcom/google/android/maps/driveabout/model/ab;FFF)V

    return-object v0

    :cond_0
    move v7, v0

    move v6, v0

    move v5, v0

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/a;->a:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 175
    check-cast p1, Lcom/google/android/maps/driveabout/model/a;

    .line 176
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/a;->d:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v2, :cond_4

    .line 177
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/a;->d:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v2, :cond_0

    .line 179
    :cond_2
    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/model/a;->f:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 181
    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/model/a;->e:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 183
    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/model/a;->g:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 185
    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/a;->b:I

    if-ne v2, v3, :cond_0

    .line 186
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/a;->a:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v2, :cond_5

    .line 187
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/a;->a:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v2, :cond_0

    .line 189
    :cond_3
    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/model/a;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    .line 178
    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/a;->d:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/a;->d:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 188
    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/a;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/a;->a:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 189
    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    .line 160
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/a;->d:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/a;->b:I

    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/a;->a:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/a;->d:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->hashCode()I

    move-result v0

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/a;->a:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->hashCode()I

    move-result v1

    goto :goto_1
.end method
