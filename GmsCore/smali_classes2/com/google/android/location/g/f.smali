.class final Lcom/google/android/location/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/google/android/location/g/f;->a:I

    .line 155
    iput p2, p0, Lcom/google/android/location/g/f;->b:F

    .line 156
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    if-ne p0, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/g/f;

    if-nez v2, :cond_2

    move v0, v1

    .line 186
    goto :goto_0

    .line 189
    :cond_2
    check-cast p1, Lcom/google/android/location/g/f;

    .line 191
    iget v2, p0, Lcom/google/android/location/g/f;->a:I

    iget v3, p1, Lcom/google/android/location/g/f;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/location/g/f;->b:F

    iget v3, p1, Lcom/google/android/location/g/f;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/google/android/location/g/f;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 199
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/location/g/f;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    iget v0, p0, Lcom/google/android/location/g/f;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 162
    const-string v0, "%+.4f"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/location/g/f;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%+.4f * [%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/location/g/f;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/location/g/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
