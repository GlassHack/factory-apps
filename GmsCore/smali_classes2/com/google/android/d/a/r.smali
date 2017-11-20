.class final Lcom/google/android/d/a/r;
.super Lcom/google/android/d/a/d;
.source "SourceFile"


# instance fields
.field q:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/google/android/d/a/d;-><init>()V

    .line 606
    iput-object p1, p0, Lcom/google/android/d/a/r;->q:Ljava/util/List;

    .line 607
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/d/a/r;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 620
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v1, Lcom/google/android/d/a/r;

    invoke-direct {v1, v0}, Lcom/google/android/d/a/r;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected final a(Lcom/google/android/d/a/q;)V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/d/a/r;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/d/a/d;

    .line 626
    invoke-virtual {v0, p1}, Lcom/google/android/d/a/d;->a(Lcom/google/android/d/a/q;)V

    goto :goto_0

    .line 628
    :cond_0
    return-void
.end method

.method public final b(C)Z
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/d/a/r;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/d/a/d;

    .line 611
    invoke-virtual {v0, p1}, Lcom/google/android/d/a/d;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x1

    .line 615
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
