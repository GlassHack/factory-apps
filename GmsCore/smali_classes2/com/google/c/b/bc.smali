.class final Lcom/google/c/b/bc;
.super Lcom/google/c/b/be;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/am;


# instance fields
.field volatile a:J

.field b:Lcom/google/c/b/am;

.field c:Lcom/google/c/b/am;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/am;)V
    .locals 2

    .prologue
    .line 1452
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/b/be;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/am;)V

    .line 1457
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/c/b/bc;->a:J

    .line 1469
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bc;->b:Lcom/google/c/b/am;

    .line 1482
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bc;->c:Lcom/google/c/b/am;

    .line 1453
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 1466
    iput-wide p1, p0, Lcom/google/c/b/bc;->a:J

    .line 1467
    return-void
.end method

.method public final a(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/google/c/b/bc;->b:Lcom/google/c/b/am;

    .line 1480
    return-void
.end method

.method public final b(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/google/c/b/bc;->c:Lcom/google/c/b/am;

    .line 1493
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1461
    iget-wide v0, p0, Lcom/google/c/b/bc;->a:J

    return-wide v0
.end method

.method public final f()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/google/c/b/bc;->b:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final g()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/google/c/b/bc;->c:Lcom/google/c/b/am;

    return-object v0
.end method
