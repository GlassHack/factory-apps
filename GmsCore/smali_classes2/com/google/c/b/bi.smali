.class final Lcom/google/c/b/bi;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/c/b/am;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3622
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3623
    new-instance v0, Lcom/google/c/b/bj;

    invoke-direct {v0, p0}, Lcom/google/c/b/bj;-><init>(Lcom/google/c/b/bi;)V

    iput-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    return-void
.end method

.method private a()Lcom/google/c/b/am;
    .locals 2

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-interface {v0}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v0

    .line 3675
    iget-object v1, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 3725
    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-interface {v0}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v0

    .line 3726
    :goto_0
    iget-object v1, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    if-eq v0, v1, :cond_0

    .line 3727
    invoke-interface {v0}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v1

    .line 3728
    invoke-static {v0}, Lcom/google/c/b/n;->c(Lcom/google/c/b/am;)V

    move-object v0, v1

    .line 3730
    goto :goto_0

    .line 3732
    :cond_0
    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    iget-object v1, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-interface {v0, v1}, Lcom/google/c/b/am;->c(Lcom/google/c/b/am;)V

    .line 3733
    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    iget-object v1, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-interface {v0, v1}, Lcom/google/c/b/am;->d(Lcom/google/c/b/am;)V

    .line 3734
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3704
    check-cast p1, Lcom/google/c/b/am;

    .line 3705
    invoke-interface {p1}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v0

    sget-object v1, Lcom/google/c/b/al;->a:Lcom/google/c/b/al;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 3710
    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-interface {v0}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 3738
    new-instance v0, Lcom/google/c/b/bk;

    invoke-direct {p0}, Lcom/google/c/b/bi;->a()Lcom/google/c/b/am;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/bk;-><init>(Lcom/google/c/b/bi;Lcom/google/c/b/am;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3622
    check-cast p1, Lcom/google/c/b/am;

    invoke-interface {p1}, Lcom/google/c/b/am;->j()Lcom/google/c/b/am;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/b/n;->b(Lcom/google/c/b/am;Lcom/google/c/b/am;)V

    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-interface {v0}, Lcom/google/c/b/am;->j()Lcom/google/c/b/am;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/b/n;->b(Lcom/google/c/b/am;Lcom/google/c/b/am;)V

    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-static {p1, v0}, Lcom/google/c/b/n;->b(Lcom/google/c/b/am;Lcom/google/c/b/am;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3622
    invoke-direct {p0}, Lcom/google/c/b/bi;->a()Lcom/google/c/b/am;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-interface {v0}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/c/b/bi;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3692
    check-cast p1, Lcom/google/c/b/am;

    .line 3693
    invoke-interface {p1}, Lcom/google/c/b/am;->j()Lcom/google/c/b/am;

    move-result-object v0

    .line 3694
    invoke-interface {p1}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v1

    .line 3695
    invoke-static {v0, v1}, Lcom/google/c/b/n;->b(Lcom/google/c/b/am;Lcom/google/c/b/am;)V

    .line 3696
    invoke-static {p1}, Lcom/google/c/b/n;->c(Lcom/google/c/b/am;)V

    .line 3698
    sget-object v0, Lcom/google/c/b/al;->a:Lcom/google/c/b/al;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    .prologue
    .line 3715
    const/4 v1, 0x0

    .line 3716
    iget-object v0, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    invoke-interface {v0}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    if-eq v0, v2, :cond_0

    .line 3718
    add-int/lit8 v1, v1, 0x1

    .line 3717
    invoke-interface {v0}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v0

    goto :goto_0

    .line 3720
    :cond_0
    return v1
.end method
