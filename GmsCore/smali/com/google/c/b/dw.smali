.class final enum Lcom/google/c/b/dw;
.super Lcom/google/c/b/du;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/b/du;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/a/bw;
    .locals 1

    sget-object v0, Lcom/google/c/a/by;->a:Lcom/google/c/a/by;

    return-object v0
.end method

.method final a(Lcom/google/c/b/dr;Lcom/google/c/b/dq;Ljava/lang/Object;)Lcom/google/c/b/ee;
    .locals 2

    new-instance v0, Lcom/google/c/b/dt;

    iget-object v1, p1, Lcom/google/c/b/dr;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/c/b/dt;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/dq;)V

    return-object v0
.end method
