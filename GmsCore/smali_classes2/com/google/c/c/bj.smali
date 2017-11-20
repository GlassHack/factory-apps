.class final Lcom/google/c/c/bj;
.super Lcom/google/c/c/bb;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/c/c/bg;


# direct methods
.method constructor <init>(Lcom/google/c/c/bg;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/google/c/c/bb;-><init>()V

    .line 598
    iput-object p1, p0, Lcom/google/c/c/bj;->a:Lcom/google/c/c/bg;

    .line 599
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/ek;
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/c/c/bj;->a:Lcom/google/c/c/bg;

    invoke-virtual {v0}, Lcom/google/c/c/bg;->a()Lcom/google/c/c/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bb;->a()Lcom/google/c/c/ek;

    move-result-object v0

    .line 604
    new-instance v1, Lcom/google/c/c/bk;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/bk;-><init>(Lcom/google/c/c/bj;Ljava/util/Iterator;)V

    return-object v1
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/c/c/bj;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/c/c/bj;->a:Lcom/google/c/c/bg;

    invoke-virtual {v0}, Lcom/google/c/c/bg;->u_()I

    move-result v0

    return v0
.end method
