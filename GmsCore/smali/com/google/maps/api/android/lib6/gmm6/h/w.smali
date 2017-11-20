.class final Lcom/google/maps/api/android/lib6/gmm6/h/w;
.super Lcom/google/maps/api/android/lib6/gmm6/h/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add triangle to immutable empty mesh"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/v;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/h/v;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->d()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
