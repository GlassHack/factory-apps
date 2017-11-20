.class public final Lcom/google/maps/api/android/lib6/gmm6/h/x;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public static a(DDDDDD)D
    .locals 8

    sub-double v0, p4, p0

    sub-double v2, p10, p2

    mul-double/2addr v0, v2

    sub-double v2, p8, p0

    sub-double v4, p6, p2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    sub-double v2, p0, p8

    sub-double v4, p0, p8

    mul-double/2addr v2, v4

    sub-double v4, p2, p10

    sub-double v6, p2, p10

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sub-double v4, p0, p4

    sub-double v6, p0, p4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sub-double v4, p2, p6

    sub-double v6, p2, p6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v4, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public static a(DDDD)I
    .locals 2

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3, p6, p7}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/x;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/h/x;

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a:D

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/x;->b:D

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/x;->b:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/x;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/x;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
