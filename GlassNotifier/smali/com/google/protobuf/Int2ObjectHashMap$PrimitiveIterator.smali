.class final Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;
.super Ljava/lang/Object;
.source "Int2ObjectHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Int2ObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrimitiveIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry",
        "<TV;>;>;",
        "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private entryIndex:I

.field private nextIndex:I

.field private prevIndex:I

.field final synthetic this$0:Lcom/google/protobuf/Int2ObjectHashMap;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    const/4 v0, -0x1

    .line 581
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->prevIndex:I

    .line 583
    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->nextIndex:I

    .line 584
    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->entryIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;
    .param p2, "x1"    # Lcom/google/protobuf/Int2ObjectHashMap$1;

    .prologue
    .line 581
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    .prologue
    .line 581
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->entryIndex:I

    return v0
.end method

.method private scanNext()V
    .locals 2

    .prologue
    .line 588
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    :cond_0
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->nextIndex:I

    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->nextIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 592
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 596
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->scanNext()V

    .line 599
    :cond_0
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->nextIndex:I

    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->access$700(Lcom/google/protobuf/Int2ObjectHashMap;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public key()I
    .locals 2

    .prologue
    .line 636
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$700(Lcom/google/protobuf/Int2ObjectHashMap;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->entryIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public next()Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    invoke-virtual {p0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 608
    :cond_0
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->nextIndex:I

    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->prevIndex:I

    .line 609
    invoke-direct {p0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->scanNext()V

    .line 612
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->prevIndex:I

    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->entryIndex:I

    .line 613
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 581
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    invoke-virtual {p0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->next()Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 618
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->prevIndex:I

    if-gez v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before each remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->prevIndex:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Int2ObjectHashMap;->access$800(Lcom/google/protobuf/Int2ObjectHashMap;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->prevIndex:I

    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->nextIndex:I

    .line 628
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->prevIndex:I

    .line 629
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->entryIndex:I

    invoke-static {p1}, Lcom/google/protobuf/Int2ObjectHashMap;->access$1000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 647
    return-void
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.PrimitiveIterator;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->entryIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
