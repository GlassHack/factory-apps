.class final Lcom/google/c/b/cl;
.super Lcom/google/c/b/cm;

# interfaces
.implements Lcom/google/c/b/dq;


# instance fields
.field private volatile a:J

.field private b:Lcom/google/c/b/dq;

.field private c:Lcom/google/c/b/dq;

.field private volatile d:J

.field private e:Lcom/google/c/b/dq;

.field private f:Lcom/google/c/b/dq;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/dq;)V
    .locals 4

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/b/cm;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/dq;)V

    iput-wide v2, p0, Lcom/google/c/b/cl;->a:J

    invoke-static {}, Lcom/google/c/b/ch;->k()Lcom/google/c/b/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/cl;->b:Lcom/google/c/b/dq;

    invoke-static {}, Lcom/google/c/b/ch;->k()Lcom/google/c/b/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/cl;->c:Lcom/google/c/b/dq;

    iput-wide v2, p0, Lcom/google/c/b/cl;->d:J

    invoke-static {}, Lcom/google/c/b/ch;->k()Lcom/google/c/b/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/cl;->e:Lcom/google/c/b/dq;

    invoke-static {}, Lcom/google/c/b/ch;->k()Lcom/google/c/b/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/cl;->f:Lcom/google/c/b/dq;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/c/b/cl;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/c/b/cl;->a:J

    return-void
.end method

.method public final a(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cl;->b:Lcom/google/c/b/dq;

    return-void
.end method

.method public final b()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cl;->b:Lcom/google/c/b/dq;

    return-object v0
.end method

.method public final b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/c/b/cl;->d:J

    return-void
.end method

.method public final b(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cl;->c:Lcom/google/c/b/dq;

    return-void
.end method

.method public final c()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cl;->c:Lcom/google/c/b/dq;

    return-object v0
.end method

.method public final c(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cl;->e:Lcom/google/c/b/dq;

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/c/b/cl;->d:J

    return-wide v0
.end method

.method public final d(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cl;->f:Lcom/google/c/b/dq;

    return-void
.end method

.method public final e()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cl;->e:Lcom/google/c/b/dq;

    return-object v0
.end method

.method public final f()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cl;->f:Lcom/google/c/b/dq;

    return-object v0
.end method
