.class public final Lcom/google/maps/api/android/lib6/a/a/d;
.super Lcom/google/maps/api/android/lib6/a/a/b;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/a/a/b;-><init>(JJ)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;
    .locals 8

    :try_start_0
    invoke-static {p0}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/a;

    move-result-object v3

    instance-of v2, v3, Lcom/google/maps/api/android/lib6/a/a/b;

    if-eqz v2, :cond_0

    new-instance v4, Lcom/google/maps/api/android/lib6/a/a/d;

    move-object v0, v3

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/b;

    move-object v2, v0

    iget-wide v6, v2, Lcom/google/maps/api/android/lib6/a/a/b;->c:J

    check-cast v3, Lcom/google/maps/api/android/lib6/a/a/b;

    iget-wide v2, v3, Lcom/google/maps/api/android/lib6/a/a/b;->d:J

    invoke-direct {v4, v6, v7, v2, v3}, Lcom/google/maps/api/android/lib6/a/a/d;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/a/a/d;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/a/a/d;

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/d;->d:J

    check-cast p1, Lcom/google/maps/api/android/lib6/a/a/d;

    iget-wide v4, p1, Lcom/google/maps/api/android/lib6/a/a/d;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/a/a/g;

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/d;->d:J

    check-cast p1, Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v4, p1, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    iget-wide v4, v4, Lcom/google/maps/api/android/lib6/a/a/d;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/a/a/d;->d:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/d;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
