.class public interface abstract Lcom/google/android/clockwork/stream/StreamItem;
.super Ljava/lang/Object;
.source "StreamItem.java"


# virtual methods
.method public abstract getCreatorNodeId()Ljava/lang/String;
.end method

.method public abstract getId()Lcom/google/android/clockwork/stream/StreamItemId;
.end method

.method public abstract getLastInterruptTime()J
.end method

.method public abstract getLastOngoingTime()J
.end method

.method public abstract getNotification()Landroid/app/Notification;
.end method

.method public abstract getOriginalPackageName()Ljava/lang/String;
.end method

.method public abstract getPostTime()J
.end method

.method public abstract getSortKey()Ljava/lang/String;
.end method

.method public abstract getWearableOptions()Landroid/support/v4/app/NotificationCompat$WearableExtender;
.end method

.method public abstract isGroup()Z
.end method

.method public abstract isLocal()Z
.end method
