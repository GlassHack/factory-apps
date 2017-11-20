.class final Lcom/google/common/collect/fb;
.super Lcom/google/common/collect/ma;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 731
    new-instance v0, Lcom/google/common/collect/fk;

    iget-object v1, p0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/fk;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fa;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 726
    iget-object v0, p0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
