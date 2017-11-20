.class final Lcom/google/protobuf/Int2ObjectHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "Int2ObjectHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Int2ObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/Int2ObjectHashMap;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 0

    .prologue
    .line 520
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;
    .param p2, "x1"    # Lcom/google/protobuf/Int2ObjectHashMap$1;

    .prologue
    .line 520
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.KeySet;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 551
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->clear()V

    .line 552
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 528
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.KeySet;"
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;-><init>(Lcom/google/protobuf/Int2ObjectHashMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 533
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.KeySet;"
    .local p1, "retainedKeys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 539
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v3}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 541
    .local v1, "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<TV;>;"
    invoke-interface {v1}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 542
    const/4 v0, 0x1

    .line 543
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 546
    .end local v1    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<TV;>;"
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 523
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->size()I

    move-result v0

    return v0
.end method
