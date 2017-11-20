.class final Lcom/google/c/b/bd;
.super Lcom/google/c/b/be;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/am;


# instance fields
.field volatile a:J

.field b:Lcom/google/c/b/am;

.field c:Lcom/google/c/b/am;

.field volatile d:J

.field e:Lcom/google/c/b/am;

.field f:Lcom/google/c/b/am;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/am;)V
    .locals 4

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 1548
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/b/be;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/am;)V

    .line 1553
    iput-wide v2, p0, Lcom/google/c/b/bd;->a:J

    .line 1565
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bd;->b:Lcom/google/c/b/am;

    .line 1578
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bd;->c:Lcom/google/c/b/am;

    .line 1593
    iput-wide v2, p0, Lcom/google/c/b/bd;->d:J

    .line 1605
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bd;->e:Lcom/google/c/b/am;

    .line 1618
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bd;->f:Lcom/google/c/b/am;

    .line 1549
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 1562
    iput-wide p1, p0, Lcom/google/c/b/bd;->a:J

    .line 1563
    return-void
.end method

.method public final a(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/google/c/b/bd;->b:Lcom/google/c/b/am;

    .line 1576
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 1602
    iput-wide p1, p0, Lcom/google/c/b/bd;->d:J

    .line 1603
    return-void
.end method

.method public final b(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/google/c/b/bd;->c:Lcom/google/c/b/am;

    .line 1589
    return-void
.end method

.method public final c(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/google/c/b/bd;->e:Lcom/google/c/b/am;

    .line 1616
    return-void
.end method

.method public final d(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/google/c/b/bd;->f:Lcom/google/c/b/am;

    .line 1629
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1557
    iget-wide v0, p0, Lcom/google/c/b/bd;->a:J

    return-wide v0
.end method

.method public final f()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/google/c/b/bd;->b:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final g()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/c/b/bd;->c:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1597
    iget-wide v0, p0, Lcom/google/c/b/bd;->d:J

    return-wide v0
.end method

.method public final i()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/google/c/b/bd;->e:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final j()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/google/c/b/bd;->f:Lcom/google/c/b/am;

    return-object v0
.end method
