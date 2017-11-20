.class final Lcom/google/common/collect/MapMakerInternalMap$Values;
.super Ljava/util/AbstractCollection;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/MapMakerInternalMap;

    .prologue
    .line 2504
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Values;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Values;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2528
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Values;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Values;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->clear()V

    .line 2529
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2523
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Values;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Values;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2518
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Values;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Values;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2508
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Values;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.Values;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$ValueIterator;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Values;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueIterator;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2513
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Values;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Values;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2536
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Values;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.Values;"
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->access$800(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 2541
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$Values;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->access$800(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
