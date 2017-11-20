.class Lcom/google/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;,
        Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;,
        Lcom/google/common/collect/MapMakerInternalMap$SafeToArraySet;,
        Lcom/google/common/collect/MapMakerInternalMap$EntrySet;,
        Lcom/google/common/collect/MapMakerInternalMap$Values;,
        Lcom/google/common/collect/MapMakerInternalMap$KeySet;,
        Lcom/google/common/collect/MapMakerInternalMap$EntryIterator;,
        Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$ValueIterator;,
        Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;,
        Lcom/google/common/collect/MapMakerInternalMap$HashIterator;,
        Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;,
        Lcom/google/common/collect/MapMakerInternalMap$Segment;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;,
        Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;,
        Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;,
        Lcom/google/common/collect/MapMakerInternalMap$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
        "<TK;TV;TE;>;S:",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CLEANUP_EXECUTOR_DELAY_SECS:J = 0x3cL

.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET_WEAK_VALUE_REFERENCE:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final concurrencyLevel:I

.field final transient entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final transient segmentMask:I

.field final transient segmentShift:I

.field final transient segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 835
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V
    .locals 8
    .param p1, "builder"    # Lcom/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper",
            "<TK;TV;TE;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p2, "entryHelper":Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<TK;TV;TE;TS;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 160
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v6

    const/high16 v7, 0x10000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    .line 162
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getKeyEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 163
    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 165
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 169
    .local v1, "initialCapacity":I
    const/4 v4, 0x0

    .line 170
    .local v4, "segmentShift":I
    const/4 v3, 0x1

    .line 171
    .local v3, "segmentCount":I
    :goto_0
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v3, v6, :cond_0

    .line 172
    add-int/lit8 v4, v4, 0x1

    .line 173
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    rsub-int/lit8 v6, v4, 0x20

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentShift:I

    .line 176
    add-int/lit8 v6, v3, -0x1

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentMask:I

    .line 178
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap;->newSegmentArray(I)[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 180
    div-int v2, v1, v3

    .line 181
    .local v2, "segmentCapacity":I
    mul-int v6, v2, v3

    if-ge v6, v1, :cond_1

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 185
    :cond_1
    const/4 v5, 0x1

    .line 186
    .local v5, "segmentSize":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 187
    shl-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 191
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    const/4 v7, -0x1

    invoke-virtual {p0, v5, v7}, Lcom/google/common/collect/MapMakerInternalMap;->createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v7

    aput-object v7, v6, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 193
    :cond_3
    return-void
.end method

.method static synthetic access$800(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMakerInternalMap;
    .locals 2
    .param p0, "builder"    # Lcom/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMaker;",
            ")",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;*>;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 199
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 201
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->instance()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    .line 216
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 205
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 207
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->instance()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 211
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 213
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->instance()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_3

    .line 216
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 218
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->instance()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    goto :goto_0

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static rehash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 890
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 891
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 892
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 893
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 894
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 895
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2611
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2612
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 2613
    return-object v0
.end method

.method static unsetWeakValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;TE;>;>()",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;"
        }
    .end annotation

    .prologue
    .line 368
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 2255
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 2256
    .local v0, "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clear()V

    .line 2255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2258
    .end local v0    # "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2142
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2143
    const/4 v1, 0x0

    .line 2146
    :goto_0
    return v1

    .line 2145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2146
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2151
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2152
    const/4 v14, 0x0

    .line 2184
    :goto_0
    return v14

    .line 2160
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 2161
    .local v8, "segments":[Lcom/google/common/collect/MapMakerInternalMap$Segment;, "[Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const-wide/16 v6, -0x1

    .line 2162
    .local v6, "last":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v14, 0x3

    if-ge v3, v14, :cond_5

    .line 2163
    const-wide/16 v10, 0x0

    .line 2164
    .local v10, "sum":J
    array-length v15, v8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_4

    aget-object v5, v8, v14

    .line 2166
    .local v5, "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    iget v12, v5, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2168
    .local v12, "unused":I
    iget-object v9, v5, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2169
    .local v9, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_3

    .line 2170
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .local v2, "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :goto_4
    if-eqz v2, :cond_2

    .line 2171
    invoke-virtual {v5, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v13

    .line 2172
    .local v13, "v":Ljava/lang/Object;, "TV;"
    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2173
    const/4 v14, 0x1

    goto :goto_0

    .line 2170
    :cond_1
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    goto :goto_4

    .line 2169
    .end local v13    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2177
    .end local v2    # "e":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :cond_3
    iget v0, v5, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    .line 2164
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2179
    .end local v4    # "j":I
    .end local v5    # "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    .end local v9    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v12    # "unused":I
    :cond_4
    cmp-long v14, v10, v6

    if-nez v14, :cond_6

    .line 2184
    .end local v10    # "sum":J
    :cond_5
    const/4 v14, 0x0

    goto :goto_0

    .line 2182
    .restart local v10    # "sum":J
    :cond_6
    move-wide v6, v10

    .line 2162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "original":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    .local p2, "newNext":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 905
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    return-object v1
.end method

.method createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation

    .prologue
    .line 945
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

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
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2280
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    .line 2281
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$EntrySet;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2121
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2122
    const/4 v1, 0x0

    .line 2125
    :goto_0
    return-object v1

    .line 2124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2125
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method getEntry(Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 2133
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2134
    const/4 v1, 0x0

    .line 2137
    :goto_0
    return-object v1

    .line 2136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2137
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    goto :goto_0
.end method

.method getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    const/4 v1, 0x0

    .line 953
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 960
    :cond_0
    :goto_0
    return-object v0

    .line 956
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 957
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    move-object v0, v1

    .line 958
    goto :goto_0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 909
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 910
    .local v0, "h":I
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->rehash(I)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 2086
    const-wide/16 v2, 0x0

    .line 2087
    .local v2, "sum":J
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 2088
    .local v1, "segments":[Lcom/google/common/collect/MapMakerInternalMap$Segment;, "[Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 2089
    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v5, :cond_1

    .line 2106
    :cond_0
    :goto_1
    return v4

    .line 2092
    :cond_1
    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 2088
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2095
    :cond_2
    cmp-long v5, v2, v8

    if-eqz v5, :cond_4

    .line 2096
    const/4 v0, 0x0

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 2097
    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-nez v5, :cond_0

    .line 2100
    aget-object v5, v1, v0

    iget v5, v5, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 2096
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2102
    :cond_3
    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    .line 2106
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method isLiveForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)Z"
        }
    .end annotation

    .prologue
    .line 930
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValueForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2264
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    .line 2265
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$KeySet;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2062
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    return-object v0
.end method

.method final newSegmentArray(I)[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .param p1, "ssize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation

    .prologue
    .line 965
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    new-array v0, p1, [Lcom/google/common/collect/MapMakerInternalMap$Segment;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2190
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2193
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2207
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2208
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2210
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2199
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2202
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 921
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;I)Z

    .line 922
    return-void
.end method

.method reclaimValue(Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference",
            "<TK;TV;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "valueReference":Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;TE;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;->getEntry()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 915
    .local v0, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    .line 916
    .local v1, "hash":I
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z

    .line 917
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2215
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-nez p1, :cond_0

    .line 2216
    const/4 v1, 0x0

    .line 2219
    :goto_0
    return-object v1

    .line 2218
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2219
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 2225
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2226
    :cond_0
    const/4 v1, 0x0

    .line 2229
    :goto_0
    return v1

    .line 2228
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2229
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2247
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2250
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2235
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    if-nez p2, :cond_0

    .line 2238
    const/4 v1, 0x0

    .line 2241
    :goto_0
    return v1

    .line 2240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2241
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;TE;TS;>;"
        }
    .end annotation

    .prologue
    .line 941
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 2111
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 2112
    .local v1, "segments":[Lcom/google/common/collect/MapMakerInternalMap$Segment;, "[Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;TE;TS;>;"
    const-wide/16 v2, 0x0

    .line 2113
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 2114
    aget-object v4, v1, v0

    iget v4, v4, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 2113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2116
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    return v4
.end method

.method valueEquivalence()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2072
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2067
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    return-object v0
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
    .line 2272
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    .line 2273
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$Values;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 2621
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2622
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2623
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2625
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v4

    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V

    .line 2621
    return-object v0
.end method
