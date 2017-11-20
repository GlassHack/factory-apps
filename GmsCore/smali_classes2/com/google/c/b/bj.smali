.class final Lcom/google/c/b/bj;
.super Lcom/google/c/b/q;
.source "SourceFile"


# instance fields
.field a:Lcom/google/c/b/am;

.field b:Lcom/google/c/b/am;

.field final synthetic c:Lcom/google/c/b/bi;


# direct methods
.method constructor <init>(Lcom/google/c/b/bi;)V
    .locals 0

    .prologue
    .line 3623
    iput-object p1, p0, Lcom/google/c/b/bj;->c:Lcom/google/c/b/bi;

    invoke-direct {p0}, Lcom/google/c/b/q;-><init>()V

    .line 3633
    iput-object p0, p0, Lcom/google/c/b/bj;->a:Lcom/google/c/b/am;

    .line 3645
    iput-object p0, p0, Lcom/google/c/b/bj;->b:Lcom/google/c/b/am;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0

    .prologue
    .line 3631
    return-void
.end method

.method public final c(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 3642
    iput-object p1, p0, Lcom/google/c/b/bj;->a:Lcom/google/c/b/am;

    .line 3643
    return-void
.end method

.method public final d(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 3654
    iput-object p1, p0, Lcom/google/c/b/bj;->b:Lcom/google/c/b/am;

    .line 3655
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 3627
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final i()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/c/b/bj;->a:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final j()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/google/c/b/bj;->b:Lcom/google/c/b/am;

    return-object v0
.end method
