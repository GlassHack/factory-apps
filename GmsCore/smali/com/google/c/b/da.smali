.class final enum Lcom/google/c/b/da;
.super Lcom/google/c/b/cy;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/b/cy;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/c/b/dr;Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/c/b/cy;->a(Lcom/google/c/b/dr;Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/c/b/da;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)V

    return-object v0
.end method

.method final a(Lcom/google/c/b/dr;Ljava/lang/Object;ILcom/google/c/b/dq;)Lcom/google/c/b/dq;
    .locals 1

    new-instance v0, Lcom/google/c/b/dy;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/c/b/dy;-><init>(Ljava/lang/Object;ILcom/google/c/b/dq;)V

    return-object v0
.end method
