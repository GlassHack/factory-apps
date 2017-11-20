.class final Lcom/google/c/b/cr;
.super Lcom/google/c/b/cu;


# instance fields
.field private a:Lcom/google/c/b/dq;

.field private b:Lcom/google/c/b/dq;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/b/cu;-><init>()V

    iput-object p0, p0, Lcom/google/c/b/cr;->a:Lcom/google/c/b/dq;

    iput-object p0, p0, Lcom/google/c/b/cr;->b:Lcom/google/c/b/dq;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cr;->a:Lcom/google/c/b/dq;

    return-void
.end method

.method public final d()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final d(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cr;->b:Lcom/google/c/b/dq;

    return-void
.end method

.method public final e()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cr;->a:Lcom/google/c/b/dq;

    return-object v0
.end method

.method public final f()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cr;->b:Lcom/google/c/b/dq;

    return-object v0
.end method
