.class abstract Lcom/google/common/collect/AbstractObjectCountMap$Itr;
.super Ljava/lang/Object;
.source "AbstractObjectCountMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractObjectCountMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field index:I

.field nextCalled:Z

.field final synthetic this$0:Lcom/google/common/collect/AbstractObjectCountMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractObjectCountMap;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/common/collect/AbstractObjectCountMap;

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$Itr;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.Itr<TT;>;"
    const/4 v1, 0x0

    .line 192
    iput-object p1, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget v0, v0, Lcom/google/common/collect/AbstractObjectCountMap;->modCount:I

    iput v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->expectedModCount:I

    .line 194
    iput-boolean v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->nextCalled:Z

    .line 195
    iput v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->index:I

    return-void
.end method


# virtual methods
.method checkForConcurrentModification()V
    .locals 2

    .prologue
    .line 225
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$Itr;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.Itr<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget v0, v0, Lcom/google/common/collect/AbstractObjectCountMap;->modCount:I

    iget v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 228
    :cond_0
    return-void
.end method

.method abstract getOutput(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 199
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$Itr;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.Itr<TT;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->index:I

    iget-object v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget v1, v1, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$Itr;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.Itr<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->checkForConcurrentModification()V

    .line 207
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->nextCalled:Z

    .line 211
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->index:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->getOutput(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 216
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$Itr;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.Itr<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->checkForConcurrentModification()V

    .line 217
    iget-boolean v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->nextCalled:Z

    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 218
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->expectedModCount:I

    .line 219
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->index:I

    .line 220
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->index:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/AbstractObjectCountMap;->removeEntry(I)I

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$Itr;->nextCalled:Z

    .line 222
    return-void
.end method
