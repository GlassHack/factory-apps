.class final enum Lcom/google/c/b/dd;
.super Lcom/google/c/b/cy;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/b/cy;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/c/b/dr;Ljava/lang/Object;ILcom/google/c/b/dq;)Lcom/google/c/b/dq;
    .locals 2

    new-instance v0, Lcom/google/c/b/cm;

    iget-object v1, p1, Lcom/google/c/b/dr;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/c/b/cm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/dq;)V

    return-object v0
.end method
