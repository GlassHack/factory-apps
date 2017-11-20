.class Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "AbstractObjectCountMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractObjectCountMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractObjectCountMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractObjectCountMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/AbstractObjectCountMap;

    .prologue
    .line 156
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.KeySetView;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.KeySetView;"
    new-instance v0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView$1;-><init>(Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.KeySetView;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget v0, v0, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.KeySetView;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractObjectCountMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget v2, v2, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ObjectArrays;->copyAsObjectArray([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.KeySetView;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractObjectCountMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget v2, v2, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
