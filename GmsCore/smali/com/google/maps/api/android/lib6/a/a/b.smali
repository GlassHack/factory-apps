.class public Lcom/google/maps/api/android/lib6/a/a/b;
.super Lcom/google/maps/api/android/lib6/a/a/a;


# instance fields
.field protected final b:J

.field protected final c:J

.field protected final d:J


# direct methods
.method constructor <init>(J)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/maps/api/android/lib6/a/a/b;-><init>(JJ)V

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 9

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/a/a/a;-><init>()V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    const/16 v2, 0x20

    shl-long v2, p1, v2

    const-wide v4, 0xffffffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    ushr-long v4, p3, v4

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p3

    const/4 v6, 0x4

    shl-long v6, v0, v6

    const/16 v8, 0x2c

    ushr-long/2addr v0, v8

    xor-long/2addr v0, v6

    const-wide v6, 0xffffffffffffL

    and-long/2addr v0, v6

    xor-long/2addr v0, v2

    const/4 v2, 0x4

    shl-long v2, v0, v2

    const/16 v6, 0x2c

    ushr-long/2addr v0, v6

    xor-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/a/a/b;->b:J

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/a/a/b;->c:J

    iput-wide p3, p0, Lcom/google/maps/api/android/lib6/a/a/b;->d:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/b;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/a/a/b;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/a/a/b;

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/a/a/b;->c:J

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/a/a/b;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/a/a/b;->d:J

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/a/a/b;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/a/a/b;->b:J

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/a/a/b;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/a/a/c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/maps/api/android/lib6/a/a/c;

    iget-wide v0, p1, Lcom/google/maps/api/android/lib6/a/a/c;->b:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/b;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/a/a/b;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/a/a/b;->b:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/a/a/b;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
