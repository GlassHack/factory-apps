.class abstract Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;
.super Ljava/lang/Object;
.source "ObjectCountLinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ObjectCountLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedItr"
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
.field private expectedModCount:I

.field private nextEntry:I

.field final synthetic this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

.field private toRemove:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ObjectCountLinkedHashMap;)V
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>.LinkedItr<TT;>;"
    iput-object p1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->access$000(Lcom/google/common/collect/ObjectCountLinkedHashMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->nextEntry:I

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->toRemove:I

    .line 172
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    iget v0, v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->modCount:I

    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ObjectCountLinkedHashMap;Lcom/google/common/collect/ObjectCountLinkedHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/ObjectCountLinkedHashMap;
    .param p2, "x1"    # Lcom/google/common/collect/ObjectCountLinkedHashMap$1;

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>.LinkedItr<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;-><init>(Lcom/google/common/collect/ObjectCountLinkedHashMap;)V

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .prologue
    .line 175
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>.LinkedItr<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    iget v0, v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->modCount:I

    iget v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
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
    .line 182
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>.LinkedItr<TT;>;"
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->nextEntry:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>.LinkedItr<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->checkForConcurrentModification()V

    .line 190
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 193
    :cond_0
    iget v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->nextEntry:I

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->getOutput(I)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->nextEntry:I

    iput v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->toRemove:I

    .line 195
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    iget v2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->nextEntry:I

    invoke-static {v1, v2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->access$100(Lcom/google/common/collect/ObjectCountLinkedHashMap;I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->nextEntry:I

    .line 196
    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>.LinkedItr<TT;>;"
    const/4 v3, -0x1

    .line 201
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->checkForConcurrentModification()V

    .line 202
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->toRemove:I

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 203
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    iget-object v1, v1, Lcom/google/common/collect/ObjectCountLinkedHashMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->toRemove:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->remove(Ljava/lang/Object;)I

    .line 204
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->nextEntry:I

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 205
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->toRemove:I

    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->nextEntry:I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    iget v0, v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->modCount:I

    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->expectedModCount:I

    .line 208
    iput v3, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;->toRemove:I

    .line 209
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
