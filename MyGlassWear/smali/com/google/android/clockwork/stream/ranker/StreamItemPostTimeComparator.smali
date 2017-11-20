.class public final Lcom/google/android/clockwork/stream/ranker/StreamItemPostTimeComparator;
.super Ljava/lang/Object;
.source "StreamItemPostTimeComparator.java"

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


# virtual methods
.method public compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I
    .locals 4
    .param p1, "streamItem1"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "streamItem2"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 14
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getPostTime()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/google/android/clockwork/stream/StreamItem;->getPostTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getPostTime()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/google/android/clockwork/stream/StreamItem;->getPostTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 18
    const/4 v0, -0x1

    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPostTimeComparator;->compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    return v0
.end method
