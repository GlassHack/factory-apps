.class Lcom/google/common/collect/ObjectCountLinkedHashMap;
.super Lcom/google/common/collect/ObjectCountHashMap;
.source "ObjectCountLinkedHashMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ObjectCountHashMap",
        "<TK;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(I)V

    .line 77
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .prologue
    .line 80
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(IF)V

    .line 81
    return-void
.end method

.method constructor <init>(IF)V
    .locals 0
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(IF)V

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/AbstractObjectCountMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/AbstractObjectCountMap",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    .local p1, "map":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractObjectCountMap;->size()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->init(IF)V

    .line 89
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractObjectCountMap;->firstIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/common/collect/AbstractObjectCountMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/AbstractObjectCountMap;->getValue(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->put(Ljava/lang/Object;I)I

    .line 89
    invoke-virtual {p1, v0}, Lcom/google/common/collect/AbstractObjectCountMap;->nextIndex(I)I

    move-result v0

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ObjectCountLinkedHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ObjectCountLinkedHashMap;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/ObjectCountLinkedHashMap;I)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ObjectCountLinkedHashMap;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/ObjectCountLinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ObjectCountLinkedHashMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/ObjectCountLinkedHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/ObjectCountLinkedHashMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .prologue
    .line 115
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v0, v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private getSuccessor(I)I
    .locals 2
    .param p1, "entry"    # I

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v0, v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private setPredecessor(II)V
    .locals 8
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .prologue
    .line 128
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    const-wide v0, -0x100000000L

    .line 129
    .local v0, "predMask":J
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    iget-object v3, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v4, v3, p1

    const-wide/16 v6, -0x1

    xor-long/2addr v6, v0

    and-long/2addr v4, v6

    int-to-long v6, p2

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    aput-wide v4, v2, p1

    .line 130
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    const/4 v0, -0x2

    .line 133
    if-ne p1, v0, :cond_0

    .line 134
    iput p2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    .line 138
    :goto_0
    if-ne p2, v0, :cond_1

    .line 139
    iput p1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    .line 143
    :goto_1
    return-void

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSuccessor(II)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setPredecessor(II)V

    goto :goto_1
.end method

.method private setSuccessor(II)V
    .locals 8
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    const-wide v0, 0xffffffffL

    .line 124
    .local v0, "succMask":J
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    iget-object v3, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v4, v3, p1

    const-wide/16 v6, -0x1

    xor-long/2addr v6, v0

    and-long/2addr v4, v6

    int-to-long v6, p2

    and-long/2addr v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, p1

    .line 125
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    const/4 v0, -0x2

    .line 255
    invoke-super {p0}, Lcom/google/common/collect/ObjectCountHashMap;->clear()V

    .line 256
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    .line 257
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    .line 258
    return-void
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap$2;-><init>(Lcom/google/common/collect/ObjectCountLinkedHashMap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap$1;-><init>(Lcom/google/common/collect/ObjectCountLinkedHashMap;)V

    return-object v0
.end method

.method firstIndex()I
    .locals 2

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    goto :goto_0
.end method

.method init(IF)V
    .locals 4
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    const/4 v0, -0x2

    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 97
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    .line 98
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    .line 99
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    .line 100
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 101
    return-void
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p3, "value"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ObjectCountHashMap;->insertEntry(ILjava/lang/Object;II)V

    .line 148
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 149
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 150
    return-void
.end method

.method moveLastEntry(I)V
    .locals 3
    .param p1, "dstIndex"    # I

    .prologue
    .line 154
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 155
    .local v0, "srcIndex":I
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 156
    if-ge p1, v0, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 158
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 160
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->moveLastEntry(I)V

    .line 161
    return-void
.end method

.method nextIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v0

    .line 111
    .local v0, "result":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .prologue
    .line 165
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap;, "Lcom/google/common/collect/ObjectCountLinkedHashMap<TK;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeEntries(I)V

    .line 166
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    .line 167
    return-void
.end method
