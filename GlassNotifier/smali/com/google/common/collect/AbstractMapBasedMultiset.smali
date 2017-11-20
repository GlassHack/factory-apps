.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field transient backingMap:Lcom/google/common/collect/AbstractObjectCountMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractObjectCountMap",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Lcom/google/common/collect/AbstractObjectCountMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/AbstractObjectCountMap",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "backingMap":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/AbstractObjectCountMap;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    .line 59
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMapBasedMultiset;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMapBasedMultiset;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide p1
.end method

.method static synthetic access$010(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .locals 4
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMapBasedMultiset;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 204
    if-nez p2, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 213
    :goto_0
    return v2

    .line 207
    :cond_0
    if-lez p2, :cond_1

    move v3, v4

    :goto_1
    const-string v6, "occurrences cannot be negative: %s"

    invoke-static {v3, v6, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 208
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/AbstractObjectCountMap;->get(Ljava/lang/Object;)I

    move-result v2

    .line 209
    .local v2, "oldCount":I
    int-to-long v6, v2

    int-to-long v8, p2

    add-long v0, v6, v8

    .line 210
    .local v0, "newCount":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v0, v6

    if-gtz v3, :cond_2

    :goto_2
    const-string v3, "too many occurrences: %s"

    invoke-static {v4, v3, v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 211
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    long-to-int v4, v0

    invoke-virtual {v3, p1, v4}, Lcom/google/common/collect/AbstractObjectCountMap;->put(Ljava/lang/Object;I)I

    .line 212
    iget-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0

    .end local v0    # "newCount":J
    .end local v2    # "oldCount":I
    :cond_1
    move v3, v5

    .line 207
    goto :goto_1

    .restart local v0    # "newCount":J
    .restart local v2    # "oldCount":I
    :cond_2
    move v4, v5

    .line 210
    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 118
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractObjectCountMap;->clear()V

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 120
    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractObjectCountMap;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractObjectCountMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultiset;)V

    return-object v0
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractObjectCountMap;->size()I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractObjectCountMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "backingEntries":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    if-nez p2, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 233
    :goto_0
    return v1

    .line 222
    :cond_0
    if-lez p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "occurrences cannot be negative: %s"

    invoke-static {v2, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 223
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/AbstractObjectCountMap;->get(Ljava/lang/Object;)I

    move-result v1

    .line 225
    .local v1, "oldCount":I
    if-le v1, p2, :cond_2

    .line 226
    move v0, p2

    .line 227
    .local v0, "numberRemoved":I
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    sub-int v3, v1, p2

    invoke-virtual {v2, p1, v3}, Lcom/google/common/collect/AbstractObjectCountMap;->put(Ljava/lang/Object;I)I

    .line 232
    :goto_2
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0

    .line 222
    .end local v0    # "numberRemoved":I
    .end local v1    # "oldCount":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 229
    .restart local v1    # "oldCount":I
    :cond_2
    move v0, v1

    .line 230
    .restart local v0    # "numberRemoved":I
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/AbstractObjectCountMap;->remove(Ljava/lang/Object;)I

    goto :goto_2
.end method

.method setBackingMap(Lcom/google/common/collect/AbstractObjectCountMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/AbstractObjectCountMap",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "backingMap":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TE;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    .line 65
    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v1, "count"

    invoke-static {p2, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 241
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/AbstractObjectCountMap;->remove(Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "oldCount":I
    :goto_0
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v1, p2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 243
    return v0

    .line 241
    .end local v0    # "oldCount":I
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/AbstractObjectCountMap;->put(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 131
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
