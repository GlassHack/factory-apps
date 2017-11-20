.class public final Lcom/google/maps/api/android/lib6/gmm6/h/t;
.super Ljava/lang/Object;


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iput-wide p3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    return-void
.end method

.method public static a(DD)D
    .locals 6

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    sub-double v0, p2, p0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    add-double v0, p2, v4

    sub-double v2, p0, v4

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public static a(I)D
    .locals 4

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x41c0000000000000L    # 5.36870912E8

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/h/t;
    .locals 6

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public final a(D)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    cmpl-double v2, p1, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->c()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_4

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    sub-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    sub-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v4, p1, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    iget-wide v4, p1, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const-wide/16 v0, 0x275

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x25

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
