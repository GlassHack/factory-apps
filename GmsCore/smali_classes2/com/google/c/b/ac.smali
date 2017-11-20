.class final enum Lcom/google/c/b/ac;
.super Lcom/google/c/b/u;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 529
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/b/u;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/c/b/an;Lcom/google/c/b/am;Lcom/google/c/b/am;)Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 539
    invoke-super {p0, p1, p2, p3}, Lcom/google/c/b/u;->a(Lcom/google/c/b/an;Lcom/google/c/b/am;Lcom/google/c/b/am;)Lcom/google/c/b/am;

    move-result-object v0

    .line 540
    invoke-static {p2, v0}, Lcom/google/c/b/ac;->a(Lcom/google/c/b/am;Lcom/google/c/b/am;)V

    .line 541
    invoke-static {p2, v0}, Lcom/google/c/b/ac;->b(Lcom/google/c/b/am;Lcom/google/c/b/am;)V

    .line 542
    return-object v0
.end method

.method final a(Lcom/google/c/b/an;Ljava/lang/Object;ILcom/google/c/b/am;)Lcom/google/c/b/am;
    .locals 2

    .prologue
    .line 533
    new-instance v0, Lcom/google/c/b/bd;

    iget-object v1, p1, Lcom/google/c/b/an;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/c/b/bd;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/am;)V

    return-object v0
.end method
