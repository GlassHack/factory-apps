.class final Lcom/google/c/b/cw;
.super Lcom/google/c/b/cu;


# instance fields
.field private a:Lcom/google/c/b/dq;

.field private b:Lcom/google/c/b/dq;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/b/cu;-><init>()V

    iput-object p0, p0, Lcom/google/c/b/cw;->a:Lcom/google/c/b/dq;

    iput-object p0, p0, Lcom/google/c/b/cw;->b:Lcom/google/c/b/dq;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cw;->a:Lcom/google/c/b/dq;

    return-void
.end method

.method public final b()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cw;->a:Lcom/google/c/b/dq;

    return-object v0
.end method

.method public final b(Lcom/google/c/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/cw;->b:Lcom/google/c/b/dq;

    return-void
.end method

.method public final c()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/cw;->b:Lcom/google/c/b/dq;

    return-object v0
.end method
