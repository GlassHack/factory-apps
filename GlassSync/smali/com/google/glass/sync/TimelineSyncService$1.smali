.class Lcom/google/glass/sync/TimelineSyncService$1;
.super Lcom/google/glass/sync/ITimelineSyncService$Stub;
.source "TimelineSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/TimelineSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/TimelineSyncService;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/TimelineSyncService;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-direct {p0}, Lcom/google/glass/sync/ITimelineSyncService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/sync/ITimelineSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/sync/ITimelineSyncListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0, p1}, Lcom/google/glass/sync/TimelineSyncService;->addListener(Lcom/google/glass/sync/ITimelineSyncListener;)V

    .line 81
    return-void
.end method

.method public deleteSyncedItemsWithMedia()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncService;->deleteSyncedItemsWithMedia()V

    .line 96
    return-void
.end method

.method public getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncService;->getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v0

    return-object v0
.end method

.method public notifySyncComplete()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncService;->notifySyncComplete()V

    .line 111
    return-void
.end method

.method public notifySyncItemComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0, p1}, Lcom/google/glass/sync/TimelineSyncService;->notifySyncItemComplete(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public notifySyncItemStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0, p1}, Lcom/google/glass/sync/TimelineSyncService;->notifySyncItemStart(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public removeListener(Lcom/google/glass/sync/ITimelineSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/sync/ITimelineSyncListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0, p1}, Lcom/google/glass/sync/TimelineSyncService;->removeListener(Lcom/google/glass/sync/ITimelineSyncListener;)V

    .line 86
    return-void
.end method

.method public setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V
    .locals 1
    .param p1, "overridePolicy"    # Lcom/google/glass/sync/OverridePolicy;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0, p1}, Lcom/google/glass/sync/TimelineSyncService;->setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V

    .line 101
    return-void
.end method

.method public updatePendingSyncSummaryAndNotify()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncService;->updatePendingSyncSummaryAndNotify()V

    .line 91
    return-void
.end method
