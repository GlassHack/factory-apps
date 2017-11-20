.class public interface abstract Lcom/google/glass/sync/ITimelineSyncListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onDeletePhotosAndVideosComplete()V
.end method

.method public abstract onSyncCycleComplete()V
.end method

.method public abstract onSyncItemComplete(Ljava/lang/String;)V
.end method

.method public abstract onSyncItemStart(Ljava/lang/String;)V
.end method

.method public abstract updatePendingSyncSummary(Lcom/google/glass/sync/PendingSyncSummary;)V
.end method
