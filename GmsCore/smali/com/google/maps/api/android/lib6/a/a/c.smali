.class public final Lcom/google/maps/api/android/lib6/a/a/c;
.super Lcom/google/maps/api/android/lib6/a/a/a;


# instance fields
.field protected final b:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/a/a/a;-><init>()V

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/a/a/c;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/a/a/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/a/a/c;

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/a/a/c;->b:J

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/a/a/c;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/a/a/b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/maps/api/android/lib6/a/a/b;

    iget-wide v0, p1, Lcom/google/maps/api/android/lib6/a/a/b;->b:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/c;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/a/a/c;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/a/a/c;->b:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/c;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hash:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/c;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
