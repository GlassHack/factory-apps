.class abstract Lcom/google/common/collect/EnumCountHashMap$EnumIterator;
.super Lcom/google/common/collect/AbstractObjectCountMap$Itr;
.source "EnumCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/EnumCountHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EnumIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractObjectCountMap",
        "<TK;>.Itr<TT;>;"
    }
.end annotation


# instance fields
.field nextIndex:I

.field final synthetic this$0:Lcom/google/common/collect/EnumCountHashMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/EnumCountHashMap;)V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$EnumIterator;, "Lcom/google/common/collect/EnumCountHashMap<TK;>.EnumIterator<TT;>;"
    iput-object p1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractObjectCountMap$Itr;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->nextIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/EnumCountHashMap;Lcom/google/common/collect/EnumCountHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/EnumCountHashMap;
    .param p2, "x1"    # Lcom/google/common/collect/EnumCountHashMap$1;

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$EnumIterator;, "Lcom/google/common/collect/EnumCountHashMap<TK;>.EnumIterator<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;-><init>(Lcom/google/common/collect/EnumCountHashMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$EnumIterator;, "Lcom/google/common/collect/EnumCountHashMap<TK;>.EnumIterator<TT;>;"
    :goto_0
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v1, v1, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v0, v0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    iget v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    aget v0, v0, v1

    if-gtz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    goto :goto_0

    .line 82
    :cond_0
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v1, v1, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$EnumIterator;, "Lcom/google/common/collect/EnumCountHashMap<TK;>.EnumIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->checkForConcurrentModification()V

    .line 88
    invoke-virtual {p0}, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->nextCalled:Z

    .line 92
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    iput v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->nextIndex:I

    .line 93
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->getOutput(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$EnumIterator;, "Lcom/google/common/collect/EnumCountHashMap<TK;>.EnumIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->checkForConcurrentModification()V

    .line 99
    iget-boolean v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->nextCalled:Z

    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 100
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->expectedModCount:I

    .line 101
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/EnumCountHashMap;->removeEntry(I)I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->nextCalled:Z

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->nextIndex:I

    .line 104
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumIterator;->index:I

    .line 105
    return-void
.end method
