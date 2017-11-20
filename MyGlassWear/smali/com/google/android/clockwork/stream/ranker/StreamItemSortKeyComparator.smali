.class public final Lcom/google/android/clockwork/stream/ranker/StreamItemSortKeyComparator;
.super Ljava/lang/Object;
.source "StreamItemSortKeyComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/clockwork/stream/StreamItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareStatic(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I
    .locals 2
    .param p0, "streamItem1"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p1, "streamItem2"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->fromSamePackage(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SortKeyComparator is only valid for StreamItems from the same package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getSortKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I
    .locals 1
    .param p1, "streamItem1"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "streamItem2"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 14
    invoke-static {p1, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemSortKeyComparator;->compareStatic(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/clockwork/stream/StreamItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/clockwork/stream/StreamItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemSortKeyComparator;->compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    return v0
.end method
