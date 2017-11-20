.class final Lcom/google/c/b/ah;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/b/n;


# direct methods
.method constructor <init>(Lcom/google/c/b/n;)V
    .locals 0

    .prologue
    .line 4464
    iput-object p1, p0, Lcom/google/c/b/ah;->a:Lcom/google/c/b/n;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/google/c/b/ah;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->clear()V

    .line 4494
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 4483
    iget-object v0, p0, Lcom/google/c/b/ah;->a:Lcom/google/c/b/n;

    invoke-virtual {v0, p1}, Lcom/google/c/b/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 4478
    iget-object v0, p0, Lcom/google/c/b/ah;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 4468
    new-instance v0, Lcom/google/c/b/ag;

    iget-object v1, p0, Lcom/google/c/b/ah;->a:Lcom/google/c/b/n;

    invoke-direct {v0, v1}, Lcom/google/c/b/ag;-><init>(Lcom/google/c/b/n;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 4488
    iget-object v0, p0, Lcom/google/c/b/ah;->a:Lcom/google/c/b/n;

    invoke-virtual {v0, p1}, Lcom/google/c/b/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 4473
    iget-object v0, p0, Lcom/google/c/b/ah;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->size()I

    move-result v0

    return v0
.end method
