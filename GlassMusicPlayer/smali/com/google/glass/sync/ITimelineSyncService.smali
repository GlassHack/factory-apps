.class public interface abstract Lcom/google/glass/sync/ITimelineSyncService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addListener(Lcom/google/glass/sync/ITimelineSyncListener;)V
.end method

.method public abstract deleteSyncedItemsWithMedia()V
.end method

.method public abstract getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;
.end method

.method public abstract notifySyncComplete()V
.end method

.method public abstract notifySyncItemComplete(Ljava/lang/String;)V
.end method

.method public abstract notifySyncItemStart(Ljava/lang/String;)V
.end method

.method public abstract removeListener(Lcom/google/glass/sync/ITimelineSyncListener;)V
.end method

.method public abstract setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V
.end method

.method public abstract updatePendingSyncSummaryAndNotify()V
.end method
