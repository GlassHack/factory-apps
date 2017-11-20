.class final Lcom/google/protobuf/Int2ObjectHashMap;
.super Ljava/lang/Object;
.source "Int2ObjectHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;,
        Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;,
        Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;,
        Lcom/google/protobuf/Int2ObjectHashMap$KeySet;,
        Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;,
        Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CAPACITY:I = 0x8

.field public static final DEFAULT_LOAD_FACTOR:F = 0.5f

.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final entries:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keys:[I

.field private final loadFactor:F

.field private mask:I

.field private maxSize:I

.field private size:I

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/Int2ObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/16 v0, 0x8

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>(IF)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>(IF)V

    .line 77
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v2, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;

    invoke-direct {v2, p0, v3}, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V

    iput-object v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keySet:Ljava/util/Set;

    .line 62
    new-instance v2, Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;

    invoke-direct {v2, p0, v3}, Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V

    iput-object v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->entrySet:Ljava/util/Set;

    .line 63
    new-instance v2, Lcom/google/protobuf/Int2ObjectHashMap$1;

    invoke-direct {v2, p0}, Lcom/google/protobuf/Int2ObjectHashMap$1;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;)V

    iput-object v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->entries:Ljava/lang/Iterable;

    .line 80
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "initialCapacity must be >= 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 86
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "loadFactor must be > 0 and <= 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_2
    iput p2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->loadFactor:F

    .line 92
    invoke-static {p1}, Lcom/google/protobuf/Int2ObjectHashMap;->findNextPositivePowerOfTwo(I)I

    move-result v0

    .line 93
    .local v0, "capacity":I
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->mask:I

    .line 96
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    .line 98
    new-array v1, v0, [Ljava/lang/Object;

    .line 99
    .local v1, "temp":[Ljava/lang/Object;, "[TV;"
    iput-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    .line 102
    invoke-direct {p0, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->calcMaxSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->maxSize:I

    .line 103
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/google/protobuf/Int2ObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Int2ObjectHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;

    .prologue
    .line 21
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/Int2ObjectHashMap;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/protobuf/Int2ObjectHashMap;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/protobuf/Int2ObjectHashMap;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->removeAt(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/google/protobuf/Int2ObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private calcMaxSize(I)I
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 431
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    add-int/lit8 v0, p1, -0x1

    .line 432
    .local v0, "upperBound":I
    int-to-float v1, p1

    iget v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private static findNextPositivePowerOfTwo(I)I
    .locals 5
    .param p0, "value"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 721
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value (%s) cannot be Integer.MIN_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    .line 723
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-lt p0, v0, :cond_1

    .line 726
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value (%s) cannot be >= 2^30"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    shl-int v0, v2, v0

    return v0
.end method

.method private growSize()V
    .locals 4

    .prologue
    .line 378
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    .line 380
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap;->maxSize:I

    if-le v0, v1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    array-length v0, v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Max capacity reached at size="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->rehash(I)V

    .line 388
    :cond_1
    return-void
.end method

.method private static hashCode(I)I
    .locals 0
    .param p0, "key"    # I

    .prologue
    .line 366
    return p0
.end method

.method private hashIndex(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 361
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-static {p1}, Lcom/google/protobuf/Int2ObjectHashMap;->hashCode(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private indexOf(I)I
    .locals 4
    .param p1, "key"    # I

    .prologue
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/4 v2, -0x1

    .line 338
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->hashIndex(I)I

    move-result v1

    .line 339
    .local v1, "startIndex":I
    move v0, v1

    .line 342
    .local v0, "index":I
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 352
    :goto_0
    return v2

    .line 346
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_2

    move v2, v0

    .line 347
    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->probeNext(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private objectToKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 328
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private probeNext(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 373
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private rehash(I)V
    .locals 8
    .param p1, "newCapacity"    # I

    .prologue
    .line 441
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    .line 442
    .local v3, "oldKeys":[I
    iget-object v5, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    .line 444
    .local v5, "oldVals":[Ljava/lang/Object;, "[TV;"
    new-array v7, p1, [I

    iput-object v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    .line 446
    new-array v6, p1, [Ljava/lang/Object;

    .line 447
    .local v6, "temp":[Ljava/lang/Object;, "[TV;"
    iput-object v6, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    .line 449
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->calcMaxSize(I)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->maxSize:I

    .line 450
    add-int/lit8 v7, p1, -0x1

    iput v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->mask:I

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_2

    .line 454
    aget-object v4, v5, v0

    .line 455
    .local v4, "oldVal":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_0

    .line 458
    aget v2, v3, v0

    .line 459
    .local v2, "oldKey":I
    invoke-direct {p0, v2}, Lcom/google/protobuf/Int2ObjectHashMap;->hashIndex(I)I

    move-result v1

    .line 462
    .local v1, "index":I
    :goto_1
    iget-object v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v7, v7, v1

    if-nez v7, :cond_1

    .line 463
    iget-object v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aput v2, v7, v1

    .line 464
    iget-object v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aput-object v4, v7, v1

    .line 453
    .end local v1    # "index":I
    .end local v2    # "oldKey":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .restart local v1    # "index":I
    .restart local v2    # "oldKey":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/protobuf/Int2ObjectHashMap;->probeNext(I)I

    move-result v1

    goto :goto_1

    .line 473
    .end local v1    # "index":I
    .end local v2    # "oldKey":I
    .end local v4    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_2
    return-void
.end method

.method private removeAt(I)Z
    .locals 8
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 398
    iget v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    .line 401
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aput v6, v4, p1

    .line 402
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aput-object v7, v4, p1

    .line 409
    const/4 v2, 0x0

    .line 410
    .local v2, "movedBack":Z
    move v3, p1

    .line 411
    .local v3, "nextFree":I
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->probeNext(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    .line 412
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/google/protobuf/Int2ObjectHashMap;->hashIndex(I)I

    move-result v0

    .line 413
    .local v0, "bucket":I
    if-ge v1, v0, :cond_0

    if-le v0, v3, :cond_1

    if-le v3, v1, :cond_1

    :cond_0
    if-gt v0, v3, :cond_2

    if-gt v3, v1, :cond_2

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    iget-object v5, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aget v5, v5, v1

    aput v5, v4, v3

    .line 417
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, v3

    .line 418
    const/4 v2, 0x1

    .line 420
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aput v6, v4, v1

    .line 421
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aput-object v7, v4, v1

    .line 422
    move v3, v1

    .line 411
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/protobuf/Int2ObjectHashMap;->probeNext(I)I

    move-result v1

    goto :goto_0

    .line 425
    .end local v0    # "bucket":I
    :cond_3
    return v2
.end method

.method private static toExternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/google/protobuf/Int2ObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p0
.end method

.method private static toInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    sget-object p0, Lcom/google/protobuf/Int2ObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    .end local p0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 191
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    iput v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    .line 193
    return-void
.end method

.method public containsKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 196
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 299
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->objectToKey(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->containsKey(I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/4 v2, 0x0

    .line 202
    invoke-static {p1}, Lcom/google/protobuf/Int2ObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "v1":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 205
    .local v1, "v2":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    const/4 v2, 0x1

    .line 209
    .end local v1    # "v2":Ljava/lang/Object;, "TV;"
    :cond_0
    return v2

    .line 203
    .restart local v1    # "v2":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public entries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->entries:Ljava/lang/Iterable;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 269
    if-ne p0, p1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v5

    .line 272
    :cond_1
    instance-of v7, p1, Lcom/google/protobuf/Int2ObjectHashMap;

    if-nez v7, :cond_2

    move v5, v6

    .line 273
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 276
    check-cast v2, Lcom/google/protobuf/Int2ObjectHashMap;

    .line 277
    .local v2, "other":Lcom/google/protobuf/Int2ObjectHashMap;
    iget v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    invoke-virtual {v2}, Lcom/google/protobuf/Int2ObjectHashMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 278
    goto :goto_0

    .line 280
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v0, v7, :cond_0

    .line 281
    iget-object v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v4, v7, v0

    .line 282
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_5

    .line 283
    iget-object v7, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aget v1, v7, v0

    .line 284
    .local v1, "key":I
    invoke-virtual {v2, v1}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 285
    .local v3, "otherValue":Ljava/lang/Object;
    sget-object v7, Lcom/google/protobuf/Int2ObjectHashMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne v4, v7, :cond_4

    .line 286
    if-eqz v3, :cond_5

    move v5, v6

    .line 287
    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v6

    .line 290
    goto :goto_0

    .line 280
    .end local v1    # "key":I
    .end local v3    # "otherValue":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->indexOf(I)I

    move-result v0

    .line 116
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->objectToKey(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 253
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    .line 254
    .local v0, "hash":I
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 262
    .local v1, "key":I
    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->hashCode(I)I

    move-result v5

    xor-int/2addr v0, v5

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "key":I
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method protected keyToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 503
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->hashIndex(I)I

    move-result v2

    .line 121
    .local v2, "startIndex":I
    move v0, v2

    .line 124
    .local v0, "index":I
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aput p1, v3, v0

    .line 127
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/protobuf/Int2ObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 128
    invoke-direct {p0}, Lcom/google/protobuf/Int2ObjectHashMap;->growSize()V

    .line 129
    const/4 v3, 0x0

    .line 135
    :goto_0
    return-object v3

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 133
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 134
    .local v1, "previousValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/protobuf/Int2ObjectHashMap;->toInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 135
    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 139
    .end local v1    # "previousValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->probeNext(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 141
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to insert"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public put(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->objectToKey(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int2ObjectHashMap;->put(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Integer;",
            "+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    .local p1, "sourceMap":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Integer;+TV;>;"
    instance-of v4, p1, Lcom/google/protobuf/Int2ObjectHashMap;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 151
    check-cast v2, Lcom/google/protobuf/Int2ObjectHashMap;

    .line 152
    .local v2, "source":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, v2, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 153
    iget-object v4, v2, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v4, v1

    .line 154
    .local v3, "sourceValue":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 155
    iget-object v4, v2, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4, v3}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    .end local v2    # "source":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    .end local v3    # "sourceValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Integer;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/google/protobuf/Int2ObjectHashMap;->put(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 165
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Integer;+TV;>;"
    :cond_2
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->indexOf(I)I

    move-result v0

    .line 169
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 170
    const/4 v2, 0x0

    .line 175
    :goto_0
    return-object v2

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 174
    .local v1, "prev":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->removeAt(I)Z

    .line 175
    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->objectToKey(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    iget v0, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 477
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/Int2ObjectHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    const-string v4, "{}"

    .line 495
    :goto_0
    return-object v4

    .line 480
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->size:I

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 481
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    const/4 v0, 0x1

    .line 483
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 484
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v4, v1

    .line 485
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_2

    .line 486
    if-nez v0, :cond_1

    .line 487
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/Int2ObjectHashMap;->keys:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/google/protobuf/Int2ObjectHashMap;->keyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    .line 490
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v3, p0, :cond_3

    .line 491
    const-string v4, "(this Map)"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    const/4 v0, 0x0

    .line 483
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    :cond_3
    invoke-static {v3}, Lcom/google/protobuf/Int2ObjectHashMap;->toExternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 495
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>;"
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap$2;

    invoke-direct {v0, p0}, Lcom/google/protobuf/Int2ObjectHashMap$2;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;)V

    return-object v0
.end method
