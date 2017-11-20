.class public final Lcom/google/android/clockwork/stream/ranker/StreamItemPriorityComparator;
.super Ljava/lang/Object;
.source "StreamItemPriorityComparator.java"

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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clampPriority(I)I
    .locals 2
    .param p1, "priority"    # I

    .prologue
    .line 22
    const/4 v0, -0x2

    const/4 v1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I
    .locals 3
    .param p1, "streamItem1"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "streamItem2"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 16
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->priority:I

    invoke-direct {p0, v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPriorityComparator;->clampPriority(I)I

    move-result v0

    .line 17
    .local v0, "item1Priority":I
    invoke-interface {p2}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->priority:I

    invoke-direct {p0, v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPriorityComparator;->clampPriority(I)I

    move-result v1

    .line 18
    .local v1, "item2Priority":I
    if-ge v1, v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-le v1, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/clockwork/stream/StreamItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/clockwork/stream/StreamItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPriorityComparator;->compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    return v0
.end method
