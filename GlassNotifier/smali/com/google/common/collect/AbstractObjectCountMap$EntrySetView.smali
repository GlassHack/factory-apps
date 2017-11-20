.class abstract Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "AbstractObjectCountMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractObjectCountMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractObjectCountMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractObjectCountMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/AbstractObjectCountMap;

    .prologue
    .line 246
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.EntrySetView;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.EntrySetView;"
    const/4 v2, 0x0

    .line 250
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 251
    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 252
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v3, p0, Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/AbstractObjectCountMap;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 253
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v3, v3, Lcom/google/common/collect/AbstractObjectCountMap;->values:[I

    aget v3, v3, v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 255
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1    # "index":I
    :cond_0
    return v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.EntrySetView;"
    instance-of v2, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 261
    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 262
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/AbstractObjectCountMap;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 263
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v2, v2, Lcom/google/common/collect/AbstractObjectCountMap;->values:[I

    aget v2, v2, v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 264
    iget-object v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/AbstractObjectCountMap;->removeEntry(I)I

    .line 265
    const/4 v2, 0x1

    .line 268
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1    # "index":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 273
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget v0, v0, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    return v0
.end method
