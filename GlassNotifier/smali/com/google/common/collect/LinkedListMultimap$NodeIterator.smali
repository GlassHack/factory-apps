.class Lcom/google/common/collect/LinkedListMultimap$NodeIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field current:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field next:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field previous:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;I)V
    .locals 3
    .param p2, "index"    # I

    .prologue
    .line 323
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v2}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v2

    iput v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 324
    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v1

    .line 325
    .local v1, "size":I
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 326
    div-int/lit8 v2, v1, 0x2

    if-lt p2, v2, :cond_0

    .line 327
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 328
    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    move v0, p2

    .line 329
    .end local p2    # "index":I
    .local v0, "index":I
    :goto_0
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    if-ge v0, v1, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous()Lcom/google/common/collect/LinkedListMultimap$Node;

    move v0, p2

    .end local p2    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 333
    .end local v0    # "index":I
    .restart local p2    # "index":I
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    move v0, p2

    .line 334
    .end local p2    # "index":I
    .restart local v0    # "index":I
    :goto_1
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    if-lez v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next()Lcom/google/common/collect/LinkedListMultimap$Node;

    move v0, p2

    .end local p2    # "index":I
    .restart local v0    # "index":I
    goto :goto_1

    .line 338
    .end local v0    # "index":I
    .restart local p2    # "index":I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 339
    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .prologue
    .line 342
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 343
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 345
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->add(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public add(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 349
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 350
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 382
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 357
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 359
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 360
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 361
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next()Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 398
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    return v0
.end method

.method public previous()Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 389
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 391
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 392
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 393
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous()Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 366
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 368
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eq v0, v1, :cond_1

    .line 369
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 370
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 374
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 377
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->set(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public set(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 418
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 419
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
