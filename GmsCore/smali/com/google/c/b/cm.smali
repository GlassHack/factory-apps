.class Lcom/google/c/b/cm;
.super Ljava/lang/ref/WeakReference;

# interfaces
.implements Lcom/google/c/b/dq;


# instance fields
.field private a:I

.field private b:Lcom/google/c/b/dq;

.field private volatile c:Lcom/google/c/b/ee;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/c/b/dq;)V
    .locals 1

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {}, Lcom/google/c/b/ch;->j()Lcom/google/c/b/ee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/cm;->c:Lcom/google/c/b/ee;

    iput p3, p0, Lcom/google/c/b/cm;->a:I

    iput-object p4, p0, Lcom/google/c/b/cm;->b:Lcom/google/c/b/dq;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(J)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/c/b/dq;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/c/b/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cm;->c:Lcom/google/c/b/ee;

    return-void
.end method

.method public b()Lcom/google/c/b/dq;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(J)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/c/b/dq;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()Lcom/google/c/b/dq;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(Lcom/google/c/b/dq;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(Lcom/google/c/b/dq;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()Lcom/google/c/b/dq;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public f()Lcom/google/c/b/dq;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/b/cm;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/c/b/ee;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cm;->c:Lcom/google/c/b/ee;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/c/b/cm;->a:I

    return v0
.end method

.method public final j()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cm;->b:Lcom/google/c/b/dq;

    return-object v0
.end method
