.class Lcom/google/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/RopeByteString$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/RopeByteString$1;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/protobuf/RopeByteString$Balancer;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/RopeByteString$Balancer;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;
    .param p2, "x2"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/RopeByteString$Balancer;->balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 4
    .param p1, "left"    # Lcom/google/protobuf/ByteString;
    .param p2, "right"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 551
    invoke-direct {p0, p2}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 554
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 555
    .local v1, "partialString":Lcom/google/protobuf/ByteString;
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 557
    .local v0, "newLeft":Lcom/google/protobuf/ByteString;
    new-instance v2, Lcom/google/protobuf/RopeByteString;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .end local v1    # "partialString":Lcom/google/protobuf/ByteString;
    .local v2, "partialString":Lcom/google/protobuf/ByteString;
    move-object v1, v2

    .line 558
    .end local v2    # "partialString":Lcom/google/protobuf/ByteString;
    .restart local v1    # "partialString":Lcom/google/protobuf/ByteString;
    goto :goto_0

    .line 561
    .end local v0    # "newLeft":Lcom/google/protobuf/ByteString;
    :cond_0
    return-object v1
.end method

.method private doBalance(Lcom/google/protobuf/ByteString;)V
    .locals 5
    .param p1, "root"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isBalanced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->insert(Lcom/google/protobuf/ByteString;)V

    .line 580
    :goto_0
    return-void

    .line 571
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/RopeByteString;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 572
    check-cast v0, Lcom/google/protobuf/RopeByteString;

    .line 573
    .local v0, "rbs":Lcom/google/protobuf/RopeByteString;
    invoke-static {v0}, Lcom/google/protobuf/RopeByteString;->access$400(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    .line 574
    invoke-static {v0}, Lcom/google/protobuf/RopeByteString;->access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 576
    .end local v0    # "rbs":Lcom/google/protobuf/RopeByteString;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 578
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Has a new type of ByteString been created? Found "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getDepthBinForLength(I)I
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 636
    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$600()[I

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 637
    .local v0, "depth":I
    if-gez v0, :cond_0

    .line 640
    add-int/lit8 v2, v0, 0x1

    neg-int v1, v2

    .line 641
    .local v1, "insertionPoint":I
    add-int/lit8 v0, v1, -0x1

    .line 644
    .end local v1    # "insertionPoint":I
    :cond_0
    return v0
.end method

.method private insert(Lcom/google/protobuf/ByteString;)V
    .locals 9
    .param p1, "byteString"    # Lcom/google/protobuf/ByteString;

    .prologue
    const/4 v8, 0x0

    .line 597
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v2

    .line 598
    .local v2, "depthBin":I
    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$600()[I

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget v0, v6, v7

    .line 604
    .local v0, "binEnd":I
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    if-lt v6, v0, :cond_1

    .line 605
    :cond_0
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$600()[I

    move-result-object v6

    aget v1, v6, v2

    .line 610
    .local v1, "binStart":I
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 611
    .local v4, "newTree":Lcom/google/protobuf/ByteString;
    :goto_1
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    .line 612
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v6, v1, :cond_2

    .line 613
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 614
    .local v3, "left":Lcom/google/protobuf/ByteString;
    new-instance v5, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v5, v3, v4, v8}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .end local v4    # "newTree":Lcom/google/protobuf/ByteString;
    .local v5, "newTree":Lcom/google/protobuf/ByteString;
    move-object v4, v5

    .line 615
    .end local v5    # "newTree":Lcom/google/protobuf/ByteString;
    .restart local v4    # "newTree":Lcom/google/protobuf/ByteString;
    goto :goto_1

    .line 618
    .end local v3    # "left":Lcom/google/protobuf/ByteString;
    :cond_2
    new-instance v5, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v5, v4, p1, v8}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .end local v4    # "newTree":Lcom/google/protobuf/ByteString;
    .restart local v5    # "newTree":Lcom/google/protobuf/ByteString;
    move-object v4, v5

    .line 621
    .end local v5    # "newTree":Lcom/google/protobuf/ByteString;
    .restart local v4    # "newTree":Lcom/google/protobuf/ByteString;
    :goto_2
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 622
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v2

    .line 623
    invoke-static {}, Lcom/google/protobuf/RopeByteString;->access$600()[I

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget v0, v6, v7

    .line 624
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v6, v0, :cond_3

    .line 625
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 626
    .restart local v3    # "left":Lcom/google/protobuf/ByteString;
    new-instance v5, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v5, v3, v4, v8}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .end local v4    # "newTree":Lcom/google/protobuf/ByteString;
    .restart local v5    # "newTree":Lcom/google/protobuf/ByteString;
    move-object v4, v5

    .line 627
    .end local v5    # "newTree":Lcom/google/protobuf/ByteString;
    .restart local v4    # "newTree":Lcom/google/protobuf/ByteString;
    goto :goto_2

    .line 631
    .end local v3    # "left":Lcom/google/protobuf/ByteString;
    :cond_3
    iget-object v6, p0, Lcom/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Stack;

    invoke-virtual {v6, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
