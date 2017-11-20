.class abstract Lcom/google/common/collect/MapMakerInternalMap$HashIterator;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
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
.field currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/common/collect/MapMakerInternalMap;

    .prologue
    .line 2296
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$HashIterator;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2297
    iget-object v0, p1, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    .line 2298
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 2299
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->advance()V

    .line 2300
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    .prologue
    .line 2306
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$HashIterator;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2308
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2316
    :cond_2
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 2318
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 2319
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2320
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 2321
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method advanceTo(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 2362
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$HashIterator;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2363
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/MapMakerInternalMap;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 2364
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 2365
    new-instance v2, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2366
    const/4 v2, 0x1

    .line 2372
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 2369
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    .line 2372
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v2
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 2378
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$HashIterator;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method nextEntry()Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation

    .prologue
    .line 2382
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$HashIterator;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-nez v0, :cond_0

    .line 2383
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2386
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->advance()V

    .line 2387
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    return-object v0
.end method

.method nextInChain()Z
    .locals 1

    .prologue
    .line 2332
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$HashIterator;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_1

    .line 2333
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_1

    .line 2334
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->advanceTo(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2335
    const/4 v0, 0x1

    .line 2339
    :goto_1
    return v0

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    goto :goto_0

    .line 2339
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method nextInTable()Z
    .locals 3

    .prologue
    .line 2346
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$HashIterator;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 2347
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->advanceTo(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2349
    :cond_1
    const/4 v0, 0x1

    .line 2353
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 2392
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$HashIterator;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 2393
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2395
    return-void

    .line 2392
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
