.class final Lcom/google/c/a/s;
.super Lcom/google/c/a/e;
.source "SourceFile"


# instance fields
.field o:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/google/c/a/e;-><init>()V

    .line 622
    iput-object p1, p0, Lcom/google/c/a/s;->o:Ljava/util/List;

    .line 623
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/a/e;)Lcom/google/c/a/e;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/c/a/s;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 636
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v1, Lcom/google/c/a/s;

    invoke-direct {v1, v0}, Lcom/google/c/a/s;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method final a(Lcom/google/c/a/r;)V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/c/a/s;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/e;

    .line 642
    invoke-virtual {v0, p1}, Lcom/google/c/a/e;->a(Lcom/google/c/a/r;)V

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 618
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/c/a/s;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/e;

    .line 627
    invoke-virtual {v0, p1}, Lcom/google/c/a/e;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
