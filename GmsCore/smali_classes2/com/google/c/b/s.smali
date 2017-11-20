.class final Lcom/google/c/b/s;
.super Lcom/google/c/b/q;
.source "SourceFile"


# instance fields
.field a:Lcom/google/c/b/am;

.field b:Lcom/google/c/b/am;

.field final synthetic c:Lcom/google/c/b/r;


# direct methods
.method constructor <init>(Lcom/google/c/b/r;)V
    .locals 0

    .prologue
    .line 3760
    iput-object p1, p0, Lcom/google/c/b/s;->c:Lcom/google/c/b/r;

    invoke-direct {p0}, Lcom/google/c/b/q;-><init>()V

    .line 3770
    iput-object p0, p0, Lcom/google/c/b/s;->a:Lcom/google/c/b/am;

    .line 3782
    iput-object p0, p0, Lcom/google/c/b/s;->b:Lcom/google/c/b/am;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .prologue
    .line 3768
    return-void
.end method

.method public final a(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 3779
    iput-object p1, p0, Lcom/google/c/b/s;->a:Lcom/google/c/b/am;

    .line 3780
    return-void
.end method

.method public final b(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 3791
    iput-object p1, p0, Lcom/google/c/b/s;->b:Lcom/google/c/b/am;

    .line 3792
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 3764
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final f()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/google/c/b/s;->a:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final g()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 3786
    iget-object v0, p0, Lcom/google/c/b/s;->b:Lcom/google/c/b/am;

    return-object v0
.end method
