.class Lcom/google/common/collect/ObjectCountHashMap;
.super Lcom/google/common/collect/AbstractObjectCountMap;
.source "ObjectCountHashMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractObjectCountMap",
        "<TK;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 1.0f

.field static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient entries:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private transient loadFactor:F

.field private transient table:[I

.field private transient threshold:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractObjectCountMap;-><init>()V

    .line 104
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 105
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 120
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(IF)V

    .line 121
    return-void
.end method

.method constructor <init>(IF)V
    .locals 0
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractObjectCountMap;-><init>()V

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 125
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
    .line 107
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    .local p1, "map":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractObjectCountMap;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractObjectCountMap;->size()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 109
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractObjectCountMap;->firstIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Lcom/google/common/collect/AbstractObjectCountMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/AbstractObjectCountMap;->getValue(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    .line 109
    invoke-virtual {p1, v0}, Lcom/google/common/collect/AbstractObjectCountMap;->nextIndex(I)I

    move-result v0

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public static create()Lcom/google/common/collect/ObjectCountHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ObjectCountHashMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/ObjectCountHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/ObjectCountHashMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 2
    .param p0, "entry"    # J

    .prologue
    .line 158
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static getNext(J)I
    .locals 2
    .param p0, "entry"    # J

    .prologue
    .line 163
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newEntries(I)[J
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 148
    new-array v0, p0, [J

    .line 149
    .local v0, "array":[J
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 150
    return-object v0
.end method

.method private static newTable(I)[I
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 142
    new-array v0, p0, [I

    .line 143
    .local v0, "array":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 144
    return-object v0
.end method

.method private remove(Ljava/lang/Object;I)I
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "hash"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 317
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v4

    and-int v3, p2, v4

    .line 318
    .local v3, "tableIndex":I
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    aget v1, v4, v3

    .line 319
    .local v1, "next":I
    if-ne v1, v6, :cond_0

    .line 345
    :goto_0
    return v2

    .line 322
    :cond_0
    const/4 v0, -0x1

    .line 324
    .local v0, "last":I
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 325
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 326
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aget v2, v4, v1

    .line 328
    .local v2, "oldValue":I
    if-ne v0, v6, :cond_2

    .line 330
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v5

    aput v5, v4, v3

    .line 336
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->moveLastEntry(I)V

    .line 337
    iget v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 338
    iget v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    goto :goto_0

    .line 333
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v6, v5, v0

    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v8, v5, v1

    invoke-static {v8, v9}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v5

    invoke-static {v6, v7, v5}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v6

    aput-wide v6, v4, v0

    goto :goto_1

    .line 342
    .end local v2    # "oldValue":I
    :cond_3
    move v0, v1

    .line 343
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v1

    .line 344
    if-ne v1, v6, :cond_1

    goto :goto_0
.end method

.method private resizeMeMaybe(I)V
    .locals 4
    .param p1, "newSize"    # I

    .prologue
    .line 226
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    array-length v0, v2

    .line 227
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_1

    .line 228
    const/4 v2, 0x1

    ushr-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v1, v0, v2

    .line 229
    .local v1, "newCapacity":I
    if-gez v1, :cond_0

    .line 230
    const v1, 0x7fffffff

    .line 232
    :cond_0
    if-eq v1, v0, :cond_1

    .line 233
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeEntries(I)V

    .line 236
    .end local v1    # "newCapacity":I
    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 20
    .param p1, "newCapacity"    # I

    .prologue
    .line 255
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 256
    .local v12, "oldTable":[I
    array-length v9, v12

    .line 257
    .local v9, "oldCapacity":I
    const/high16 v14, 0x40000000    # 2.0f

    if-lt v9, v14, :cond_0

    .line 258
    const v14, 0x7fffffff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    .line 277
    :goto_0
    return-void

    .line 261
    :cond_0
    move/from16 v0, p1

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/common/collect/ObjectCountHashMap;->loadFactor:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/lit8 v7, v14, 0x1

    .line 262
    .local v7, "newThreshold":I
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/ObjectCountHashMap;->newTable(I)[I

    move-result-object v6

    .line 263
    .local v6, "newTable":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 265
    .local v2, "entries":[J
    array-length v14, v6

    add-int/lit8 v5, v14, -0x1

    .line 266
    .local v5, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    if-ge v4, v14, :cond_1

    .line 267
    aget-wide v10, v2, v4

    .line 268
    .local v10, "oldEntry":J
    invoke-static {v10, v11}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v3

    .line 269
    .local v3, "hash":I
    and-int v13, v3, v5

    .line 270
    .local v13, "tableIndex":I
    aget v8, v6, v13

    .line 271
    .local v8, "next":I
    aput v4, v6, v13

    .line 272
    int-to-long v14, v3

    const/16 v16, 0x20

    shl-long v14, v14, v16

    const-wide v16, 0xffffffffL

    int-to-long v0, v8

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    or-long v14, v14, v16

    aput-wide v14, v2, v4

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 275
    .end local v3    # "hash":I
    .end local v8    # "next":I
    .end local v10    # "oldEntry":J
    .end local v13    # "tableIndex":I
    :cond_1
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    .line 276
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    goto :goto_0
.end method

.method private static swapNext(JI)J
    .locals 6
    .param p0, "entry"    # J
    .param p2, "newNext"    # I

    .prologue
    .line 168
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const-wide v2, 0xffffffffL

    int-to-long v4, p2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    const/4 v4, 0x0

    .line 411
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    .line 412
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    invoke-static {v0, v4, v1, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 414
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 415
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 416
    iput v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 417
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 295
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 392
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView;-><init>(Lcom/google/common/collect/ObjectCountHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 300
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 301
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    const/4 v4, -0x1

    .line 281
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 282
    .local v2, "hash":I
    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v6

    and-int/2addr v6, v2

    aget v3, v5, v6

    .line 283
    .local v3, "next":I
    :goto_0
    if-eq v3, v4, :cond_1

    .line 284
    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v0, v5, v3

    .line 285
    .local v0, "entry":J
    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v5

    if-ne v5, v2, :cond_0

    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    .end local v0    # "entry":J
    .end local v3    # "next":I
    :goto_1
    return v3

    .line 288
    .restart local v0    # "entry":J
    .restart local v3    # "next":I
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v3

    .line 289
    goto :goto_0

    .end local v0    # "entry":J
    :cond_1
    move v3, v4

    .line 290
    goto :goto_1
.end method

.method init(IF)V
    .locals 6
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 128
    if-ltz p1, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "Initial capacity must be non-negative"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 129
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    move v3, v2

    :cond_0
    const-string v1, "Illegal load factor"

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 130
    float-to-double v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 131
    .local v0, "buckets":I
    invoke-static {v0}, Lcom/google/common/collect/ObjectCountHashMap;->newTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 132
    iput p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->loadFactor:F

    .line 134
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 135
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 137
    invoke-static {p1}, Lcom/google/common/collect/ObjectCountHashMap;->newEntries(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 138
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    .line 139
    return-void

    .end local v0    # "buckets":I
    :cond_1
    move v1, v3

    .line 128
    goto :goto_0
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "value"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    int-to-long v2, p4

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    const-wide v4, 0xffffffffL

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 220
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 221
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aput p3, v0, p1

    .line 222
    return-void
.end method

.method moveLastEntry(I)V
    .locals 14
    .param p1, "dstIndex"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 353
    .local v6, "srcIndex":I
    if-ge p1, v6, :cond_1

    .line 355
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v9, v9, v6

    aput-object v9, v8, p1

    .line 356
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    iget-object v9, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aget v9, v9, v6

    aput v9, v8, p1

    .line 357
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aput-object v11, v8, v6

    .line 358
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aput v10, v8, v6

    .line 361
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v2, v8, v6

    .line 362
    .local v2, "lastEntry":J
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aput-wide v2, v8, p1

    .line 363
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aput-wide v12, v8, v6

    .line 367
    invoke-static {v2, v3}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v8

    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v9

    and-int v7, v8, v9

    .line 368
    .local v7, "tableIndex":I
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    aget v4, v8, v7

    .line 369
    .local v4, "lastNext":I
    if-ne v4, v6, :cond_0

    .line 371
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    aput p1, v8, v7

    .line 388
    .end local v2    # "lastEntry":J
    .end local v4    # "lastNext":I
    .end local v7    # "tableIndex":I
    :goto_0
    return-void

    .line 377
    .restart local v2    # "lastEntry":J
    .restart local v4    # "lastNext":I
    .restart local v7    # "tableIndex":I
    :cond_0
    move v5, v4

    .line 378
    .local v5, "previous":I
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v0, v8, v4

    .local v0, "entry":J
    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v4

    .line 379
    if-ne v4, v6, :cond_0

    .line 381
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v10

    aput-wide v10, v8, v5

    goto :goto_0

    .line 384
    .end local v0    # "entry":J
    .end local v2    # "lastEntry":J
    .end local v4    # "lastNext":I
    .end local v5    # "previous":I
    .end local v7    # "tableIndex":I
    :cond_1
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aput-object v11, v8, p1

    .line 385
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aput v10, v8, p1

    .line 386
    iget-object v8, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aput-wide v12, v8, p1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;I)I
    .locals 18
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v16, "count"

    move/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 176
    .local v4, "entries":[J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 177
    .local v8, "keys":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 179
    .local v15, "values":[I
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v5

    .line 180
    .local v5, "hash":I
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v16

    and-int v14, v5, v16

    .line 181
    .local v14, "tableIndex":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 182
    .local v10, "newEntryIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    move-object/from16 v16, v0

    aget v12, v16, v14

    .line 183
    .local v12, "next":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    move-object/from16 v16, v0

    aput v10, v16, v14

    .line 201
    :goto_0
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v10, v0, :cond_2

    .line 202
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 189
    :cond_0
    move v9, v12

    .line 190
    .local v9, "last":I
    aget-wide v6, v4, v12

    .line 191
    .local v6, "entry":J
    invoke-static {v6, v7}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v5, :cond_1

    aget-object v16, v8, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 192
    aget v13, v15, v12

    .line 194
    .local v13, "oldValue":I
    aput p2, v15, v12

    .line 212
    .end local v6    # "entry":J
    .end local v9    # "last":I
    .end local v13    # "oldValue":I
    :goto_1
    return v13

    .line 197
    .restart local v6    # "entry":J
    .restart local v9    # "last":I
    :cond_1
    invoke-static {v6, v7}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v12

    .line 198
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_0

    .line 199
    invoke-static {v6, v7, v10}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v16

    aput-wide v16, v4, v9

    goto :goto_0

    .line 204
    .end local v6    # "entry":J
    .end local v9    # "last":I
    :cond_2
    add-int/lit8 v11, v10, 0x1

    .line 205
    .local v11, "newSize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/common/collect/ObjectCountHashMap;->resizeMeMaybe(I)V

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v10, v1, v2, v5}, Lcom/google/common/collect/ObjectCountHashMap;->insertEntry(ILjava/lang/Object;II)V

    .line 207
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_3

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeTable(I)V

    .line 211
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    .line 212
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method removeEntry(I)I
    .locals 4
    .param p1, "entryIndex"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method resizeEntries(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .prologue
    .line 243
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>;"
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 245
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 246
    .local v0, "entries":[J
    array-length v1, v0

    .line 247
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 248
    if-le p1, v1, :cond_0

    .line 249
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 251
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 252
    return-void
.end method
