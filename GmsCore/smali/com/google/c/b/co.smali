.class final Lcom/google/c/b/co;
.super Lcom/google/c/b/cm;

# interfaces
.implements Lcom/google/c/b/dq;


# instance fields
.field private volatile a:J

.field private b:Lcom/google/c/b/dq;

.field private c:Lcom/google/c/b/dq;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/dq;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/b/cm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/dq;)V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/c/b/co;->a:J

    invoke-static {}, Lcom/google/c/b/ch;->k()Lcom/google/c/b/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/co;->b:Lcom/google/c/b/dq;

    invoke-static {}, Lcom/google/c/b/ch;->k()Lcom/google/c/b/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/co;->c:Lcom/google/c/b/dq;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/c/b/co;->a:J

    return-void
.end method

.method public final c(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/co;->b:Lcom/google/c/b/dq;

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/c/b/co;->a:J

    return-wide v0
.end method

.method public final d(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/co;->c:Lcom/google/c/b/dq;

    return-void
.end method

.method public final e()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/co;->b:Lcom/google/c/b/dq;

    return-object v0
.end method

.method public final f()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/co;->c:Lcom/google/c/b/dq;

    return-object v0
.end method
