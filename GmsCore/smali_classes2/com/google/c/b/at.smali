.class final enum Lcom/google/c/b/at;
.super Lcom/google/c/b/aq;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 404
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/b/aq;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/a/u;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/google/c/a/x;->a:Lcom/google/c/a/x;

    return-object v0
.end method

.method final a(Lcom/google/c/b/an;Lcom/google/c/b/am;Ljava/lang/Object;I)Lcom/google/c/b/ba;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Lcom/google/c/b/bf;

    iget-object v1, p1, Lcom/google/c/b/an;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/c/b/bf;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/am;)V

    return-object v0
.end method
