.class public final Lcom/google/maps/api/android/lib6/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xaba9500

    if-ne p2, v0, :cond_0

    mul-int/lit8 p2, p2, -0x1

    :cond_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/a/a/f;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/a/a/f;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/a/a/f;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/maps/api/android/lib6/a/a/f;

    iget v2, p1, Lcom/google/maps/api/android/lib6/a/a/f;->a:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/a/a/f;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/google/maps/api/android/lib6/a/a/f;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/a/a/f;->b:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/a/a/f;->a:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lcom/google/maps/api/android/lib6/a/a/f;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/maps/api/android/lib6/a/a/f;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/a/a/f;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
