.class public Lcom/google/android/clockwork/stream/ranker/RankerUtils;
.super Ljava/lang/Object;
.source "RankerUtils.java"


# static fields
.field public static final CLOCKWORK_PACKAGE:Ljava/lang/String; = "com.google.android.wearable.app"

.field public static final EXTRA_NOTIFICATION_SPECIES:Ljava/lang/String; = "android.species"

.field protected static final MAX_AGE_FOR_JUST_INTERRUPTED_NOTIFICATION_MS:J = 0x7530L

.field protected static final MAX_AGE_FOR_ONGOING_NOTIFICATION_MS:J = 0x1d4c0L

.field public static final NOW_PREFIX:Ljava/lang/String; = "now/"

.field private static final TUTORIAL_NOTIFICATION_TAG:Ljava/lang/String; = "hometutorial"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSamePackage(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 5
    .param p0, "item1"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p1, "item2"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    const/4 v2, 0x0

    .line 104
    const-string v3, "com.google.android.wearable.app"

    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, p0

    .line 111
    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .local v0, "item1Entry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    move-object v1, p1

    .line 112
    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 115
    .local v1, "item2Entry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static interruptedWithinMs(JLcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 8
    .param p0, "maxAge"    # J
    .param p2, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    const/4 v5, 0x1

    .line 68
    invoke-interface {p2}, Lcom/google/android/clockwork/stream/StreamItem;->getLastInterruptTime()J

    move-result-wide v3

    .line 69
    .local v3, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    cmp-long v6, v6, p0

    if-gez v6, :cond_0

    .line 80
    :goto_0
    return v5

    .line 72
    :cond_0
    invoke-interface {p2}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, p2

    .line 73
    check-cast v2, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 74
    .local v2, "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 75
    .local v0, "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-static {p0, p1, v0}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->interruptedWithinMs(JLcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 80
    .end local v0    # "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isNowNotification(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 3
    .param p0, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 99
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.species"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "now/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOngoing(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 10
    .param p0, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    const/4 v5, 0x1

    .line 48
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getLastOngoingTime()J

    move-result-wide v3

    .line 49
    .local v3, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 60
    :goto_0
    return v5

    .line 52
    :cond_0
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, p0

    .line 53
    check-cast v2, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 54
    .local v2, "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 55
    .local v0, "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-static {v0}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->isOngoing(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 60
    .end local v0    # "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isOngoingInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 6
    .param p0, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 33
    .local v3, "notif":Landroid/app/Notification;
    invoke-static {v3}, Lcom/google/android/clockwork/stream/NotificationUtils;->isOngoing(Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lcom/google/android/clockwork/stream/NotificationUtils;->isInterruptive(Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    :goto_0
    return v4

    .line 36
    :cond_0
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, p0

    .line 37
    check-cast v2, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 38
    .local v2, "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 39
    .local v0, "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-static {v0}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->isOngoingInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 44
    .end local v0    # "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isTutorialNotification(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 4
    .param p0, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 125
    .local v0, "id":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    const-string v2, "hometutorial"

    iget-object v3, v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.google.android.wearable.app"

    iget-object v3, v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static justInterrupted(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 2
    .param p0, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 64
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1, p0}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->interruptedWithinMs(JLcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v0

    return v0
.end method

.method public static wasEverInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z
    .locals 8
    .param p0, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    const/4 v3, 0x1

    .line 84
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getLastInterruptTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 95
    :goto_0
    return v3

    .line 87
    :cond_0
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, p0

    .line 88
    check-cast v2, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 89
    .local v2, "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 90
    .local v0, "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-static {v0}, Lcom/google/android/clockwork/stream/ranker/RankerUtils;->wasEverInterruptive(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 95
    .end local v0    # "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
