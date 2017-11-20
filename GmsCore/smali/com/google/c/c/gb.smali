.class public final Lcom/google/c/c/gb;
.super Lcom/google/c/c/is;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J

.field e:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/c/c/is;-><init>()V

    iput v0, p0, Lcom/google/c/c/gb;->a:I

    iput v0, p0, Lcom/google/c/c/gb;->b:I

    iput v0, p0, Lcom/google/c/c/gb;->c:I

    iput-wide v2, p0, Lcom/google/c/c/gb;->d:J

    iput-wide v2, p0, Lcom/google/c/c/gb;->e:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    iget v1, p0, Lcom/google/c/c/gb;->a:I

    if-eq v1, v3, :cond_0

    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/c/c/gb;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    :cond_0
    iget v1, p0, Lcom/google/c/c/gb;->b:I

    if-eq v1, v3, :cond_1

    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/c/c/gb;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    :cond_1
    iget v1, p0, Lcom/google/c/c/gb;->c:I

    if-eq v1, v3, :cond_2

    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/c/c/gb;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    :cond_2
    iget-wide v2, p0, Lcom/google/c/c/gb;->d:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/c/c/gb;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    :cond_3
    iget-wide v2, p0, Lcom/google/c/c/gb;->e:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/c/c/gb;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    :cond_4
    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
