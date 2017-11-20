.class final Lcom/google/c/b/bg;
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
    .line 1500
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/b/be;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/am;)V

    .line 1505
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/c/b/bg;->a:J

    .line 1517
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bg;->b:Lcom/google/c/b/am;

    .line 1530
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/bg;->c:Lcom/google/c/b/am;

    .line 1501
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 1

    .prologue
    .line 1514
    iput-wide p1, p0, Lcom/google/c/b/bg;->a:J

    .line 1515
    return-void
.end method

.method public final c(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/google/c/b/bg;->b:Lcom/google/c/b/am;

    .line 1528
    return-void
.end method

.method public final d(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/google/c/b/bg;->c:Lcom/google/c/b/am;

    .line 1541
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1509
    iget-wide v0, p0, Lcom/google/c/b/bg;->a:J

    return-wide v0
.end method

.method public final i()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/google/c/b/bg;->b:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final j()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/google/c/b/bg;->c:Lcom/google/c/b/am;

    return-object v0
.end method
