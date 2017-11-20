.class Lcom/google/glass/sync/TimelineSyncService$6;
.super Ljava/lang/Object;
.source "TimelineSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineSyncService;->updatePendingSyncSummaryAndNotify()V
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
    .line 407
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$6;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncService$6;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-virtual {v1}, Lcom/google/glass/sync/TimelineSyncService;->getPendingSyncSummary()Lcom/google/glass/sync/PendingSyncSummary;

    move-result-object v0

    .line 411
    .local v0, "pendingSyncSummary":Lcom/google/glass/sync/PendingSyncSummary;
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncService$6;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    invoke-static {v1}, Lcom/google/glass/sync/TimelineSyncService;->access$300(Lcom/google/glass/sync/TimelineSyncService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    move-result-object v1

    new-instance v2, Lcom/google/glass/sync/TimelineSyncService$6$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/sync/TimelineSyncService$6$1;-><init>(Lcom/google/glass/sync/TimelineSyncService$6;Lcom/google/glass/sync/PendingSyncSummary;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 417
    return-void
.end method
