.class final enum Lcom/google/c/b/w;
.super Lcom/google/c/b/u;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 445
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/b/u;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/c/b/an;Lcom/google/c/b/am;Lcom/google/c/b/am;)Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 455
    invoke-super {p0, p1, p2, p3}, Lcom/google/c/b/u;->a(Lcom/google/c/b/an;Lcom/google/c/b/am;Lcom/google/c/b/am;)Lcom/google/c/b/am;

    move-result-object v0

    .line 456
    invoke-static {p2, v0}, Lcom/google/c/b/w;->a(Lcom/google/c/b/am;Lcom/google/c/b/am;)V

    .line 457
    return-object v0
.end method

.method final a(Lcom/google/c/b/an;Ljava/lang/Object;ILcom/google/c/b/am;)Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 449
    new-instance v0, Lcom/google/c/b/au;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/c/b/au;-><init>(Ljava/lang/Object;ILcom/google/c/b/am;)V

    return-object v0
.end method
