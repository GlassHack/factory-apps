.class public Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;
.super Ljava/lang/Object;
.source "CompoundStreamItemComparator.java"

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


# instance fields
.field private mSteamItemComparators:[Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "streamItemComparators":[Ljava/util/Comparator;, "[Ljava/util/Comparator<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;->mSteamItemComparators:[Ljava/util/Comparator;

    .line 16
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I
    .locals 5
    .param p1, "streamItem1"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "streamItem2"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;->mSteamItemComparators:[Ljava/util/Comparator;

    .local v0, "arr$":[Ljava/util/Comparator;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 21
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 22
    .local v4, "result":I
    if-eqz v4, :cond_0

    .line 26
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v4    # "result":I
    :goto_1
    return v4

    .line 20
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .restart local v4    # "result":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v4    # "result":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/stream/ranker/CompoundStreamItemComparator;->compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    return v0
.end method
