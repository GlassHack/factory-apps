.class final Lcom/google/common/collect/y;
.super Lcom/google/common/collect/ks;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/x;


# direct methods
.method constructor <init>(Lcom/google/common/collect/x;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/common/collect/y;->b:Lcom/google/common/collect/x;

    iput-object p2, p0, Lcom/google/common/collect/y;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ks;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/collect/y;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    .line 106
    if-nez v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/common/collect/y;->b:Lcom/google/common/collect/x;

    iget-object v0, v0, Lcom/google/common/collect/x;->c:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/y;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/collect/y;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
