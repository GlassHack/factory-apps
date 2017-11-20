.class public Lcom/google/android/clockwork/stream/StreamItemEntry;
.super Ljava/lang/Object;
.source "StreamItemEntry.java"

# interfaces
.implements Lcom/google/android/clockwork/stream/StreamItem;


# static fields
.field private static final DEFAULT_SORT_KEY:Ljava/lang/String; = ""


# instance fields
.field private final mCreatorNodeId:Ljava/lang/String;

.field private final mGroupId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

.field private final mId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

.field private final mIsGroupSummary:Z

.field private final mIsLocal:Z

.field private final mLastInterruptTime:J

.field private final mLastOngoingTime:J

.field private final mNotification:Landroid/app/Notification;

.field private final mOriginalPackageName:Ljava/lang/String;

.field private final mPostTime:J

.field private final mSortKey:Ljava/lang/String;

.field private final mWearableOptions:Landroid/support/v4/app/NotificationCompat$WearableExtender;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/google/android/clockwork/stream/StreamItemEntryId;Landroid/app/Notification;JLjava/lang/String;JJ)V
    .locals 4
    .param p1, "creatorNodeId"    # Ljava/lang/String;
    .param p2, "isLocal"    # Z
    .param p3, "id"    # Lcom/google/android/clockwork/stream/StreamItemEntryId;
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "postTime"    # J
    .param p7, "originalPackageName"    # Ljava/lang/String;
    .param p8, "lastInterruptTime"    # J
    .param p10, "lastOngoingTime"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mCreatorNodeId:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mIsLocal:Z

    .line 31
    iput-object p7, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mOriginalPackageName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 33
    iput-object p4, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mNotification:Landroid/app/Notification;

    .line 34
    iput-wide p5, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mPostTime:J

    .line 35
    invoke-static {p4}, Lcom/google/android/clockwork/stream/NotificationUtils;->isInterruptive(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide p8, p5

    .end local p8    # "lastInterruptTime":J
    :cond_0
    iput-wide p8, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mLastInterruptTime:J

    .line 37
    invoke-static {p4}, Lcom/google/android/clockwork/stream/NotificationUtils;->isOngoing(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local p5    # "postTime":J
    :goto_0
    iput-wide p5, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mLastOngoingTime:J

    .line 38
    invoke-static {p4}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getWearableOptions(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mWearableOptions:Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 39
    invoke-static {p4}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "groupKey":Ljava/lang/String;
    if-eqz v0, :cond_2

    new-instance v2, Lcom/google/android/clockwork/stream/StreamItemGroupId;

    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    iget-object v3, v3, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/google/android/clockwork/stream/StreamItemGroupId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mGroupId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .line 41
    invoke-static {p4}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mIsGroupSummary:Z

    .line 42
    invoke-static {p4}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "sortKey":Ljava/lang/String;
    if-eqz v1, :cond_3

    .end local v1    # "sortKey":Ljava/lang/String;
    :goto_2
    iput-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mSortKey:Ljava/lang/String;

    .line 44
    return-void

    .end local v0    # "groupKey":Ljava/lang/String;
    .restart local p5    # "postTime":J
    :cond_1
    move-wide p5, p10

    .line 37
    goto :goto_0

    .line 40
    .end local p5    # "postTime":J
    .restart local v0    # "groupKey":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 43
    .restart local v1    # "sortKey":Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_2
.end method


# virtual methods
.method public getCreatorNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mCreatorNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mGroupId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

    return-object v0
.end method

.method public getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    return-object v0
.end method

.method public bridge synthetic getId()Lcom/google/android/clockwork/stream/StreamItemId;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v0

    return-object v0
.end method

.method public getLastInterruptTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mLastInterruptTime:J

    return-wide v0
.end method

.method public getLastOngoingTime()J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mNotification:Landroid/app/Notification;

    invoke-static {v0}, Lcom/google/android/clockwork/stream/NotificationUtils;->isOngoing(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mLastOngoingTime:J

    goto :goto_0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method public getOriginalPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mOriginalPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mPostTime:J

    return-wide v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableOptions()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mWearableOptions:Landroid/support/v4/app/NotificationCompat$WearableExtender;

    return-object v0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupSummary()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mIsGroupSummary:Z

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mIsLocal:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "StreamItemEntry["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", creatorNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mCreatorNodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", originalPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", postTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mPostTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastInterruptTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mLastInterruptTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isGroupSummary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mIsGroupSummary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntry;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
