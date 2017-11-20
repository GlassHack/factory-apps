.class public Lcom/google/android/clockwork/stream/ReadStateManager;
.super Ljava/lang/Object;
.source "ReadStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadStateManager"

.field private static sInstance:Lcom/google/android/clockwork/stream/ReadStateManager;


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMarkedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRankedAsUnreadItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mUnviewedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mViewedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mUnviewedItems:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mViewedItems:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mMarkedItems:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mRankedAsUnreadItems:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mListeners:Ljava/util/List;

    .line 127
    return-void
.end method

.method public static getInstance()Lcom/google/android/clockwork/stream/ReadStateManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/clockwork/stream/ReadStateManager;->sInstance:Lcom/google/android/clockwork/stream/ReadStateManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/google/android/clockwork/stream/ReadStateManager;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/ReadStateManager;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/stream/ReadStateManager;->sInstance:Lcom/google/android/clockwork/stream/ReadStateManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/google/android/clockwork/stream/ReadStateManager;->sInstance:Lcom/google/android/clockwork/stream/ReadStateManager;

    return-object v0
.end method

.method private notifyListeners(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 122
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;

    .line 123
    .local v1, "listener":Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;
    invoke-interface {v1, p1}, Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;->onItemRead(I)V

    goto :goto_0

    .line 125
    .end local v1    # "listener":Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public addOrUpdateItem(Lcom/google/android/clockwork/stream/StreamItem;)V
    .locals 4
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 49
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mUnviewedItems:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mViewedItems:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 52
    .local v0, "isNew":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/clockwork/stream/NotificationUtils;->isInterruptive(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mUnviewedItems:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mRankedAsUnreadItems:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/clockwork/stream/NotificationUtils;->isInterruptive(Landroid/app/Notification;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->isTutorialNotification(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mMarkedItems:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3
    monitor-exit v2

    .line 61
    return-void

    .line 50
    .end local v0    # "isNew":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMarkedItemCount()I
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mMarkedItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasBeenViewed(Lcom/google/android/clockwork/stream/StreamItemId;)Z
    .locals 2
    .param p1, "id"    # Lcom/google/android/clockwork/stream/StreamItemId;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mUnviewedItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFirstItemUnread()Z
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcom/google/android/clockwork/stream/StreamManager;->getInstance()Lcom/google/android/clockwork/stream/StreamManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamManager;->getFirstTopLevelItem()Lcom/google/android/clockwork/stream/StreamItem;

    move-result-object v0

    .line 104
    .local v0, "item":Lcom/google/android/clockwork/stream/StreamItem;
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mMarkedItems:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onItemViewed(Lcom/google/android/clockwork/stream/StreamItemId;)V
    .locals 4
    .param p1, "id"    # Lcom/google/android/clockwork/stream/StreamItemId;

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "newCount":I
    iget-object v3, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mMarkedItems:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mRankedAsUnreadItems:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mUnviewedItems:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    .local v1, "wasUnviewed":Z
    iget-object v2, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mViewedItems:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/ReadStateManager;->getMarkedItemCount()I

    move-result v0

    .line 83
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v1, :cond_1

    .line 85
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/ReadStateManager;->notifyListeners(I)V

    .line 87
    :cond_1
    return-void

    .line 83
    .end local v1    # "wasUnviewed":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeItem(Lcom/google/android/clockwork/stream/StreamItemId;)V
    .locals 2
    .param p1, "id"    # Lcom/google/android/clockwork/stream/StreamItemId;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mViewedItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mUnviewedItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mMarkedItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mRankedAsUnreadItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/clockwork/stream/ReadStateManager$ReadStateListener;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public shouldDisplayAsUnread(Lcom/google/android/clockwork/stream/StreamItemId;)Z
    .locals 1
    .param p1, "id"    # Lcom/google/android/clockwork/stream/StreamItemId;

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/clockwork/host/GKeys;->DISABLE_UNREAD_UI:Lcom/google/android/gsf/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/gsf/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mMarkedItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldRankAsUnread(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-static {p1}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->isOngoing(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/stream/ReadStateManager;->mRankedAsUnreadItems:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
