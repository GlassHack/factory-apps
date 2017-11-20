.class final enum Lcom/google/c/b/z;
.super Lcom/google/c/b/u;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 492
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/b/u;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/c/b/an;Ljava/lang/Object;ILcom/google/c/b/am;)Lcom/google/c/b/am;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Lcom/google/c/b/be;

    iget-object v1, p1, Lcom/google/c/b/an;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/c/b/be;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/am;)V

    return-object v0
.end method
