.class Lcom/google/glass/sync/TimelineSyncService$6$1;
.super Ljava/lang/Object;
.source "TimelineSyncService.java"

# interfaces
.implements Lcom/google/glass/util/remote/RemoteCallbackOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineSyncService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/util/remote/RemoteCallbackOperation",
        "<",
        "Lcom/google/glass/sync/ITimelineSyncListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/sync/TimelineSyncService$6;

.field final synthetic val$pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncService$6;Lcom/google/glass/sync/PendingSyncSummary;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/sync/TimelineSyncService$6;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$6$1;->this$1:Lcom/google/glass/sync/TimelineSyncService$6;

    iput-object p2, p0, Lcom/google/glass/sync/TimelineSyncService$6$1;->val$pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doOperation(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    check-cast p1, Lcom/google/glass/sync/ITimelineSyncListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineSyncService$6$1;->doOperation(Lcom/google/glass/sync/ITimelineSyncListener;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/sync/ITimelineSyncListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/glass/sync/ITimelineSyncListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$6$1;->val$pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    invoke-interface {p1, v0}, Lcom/google/glass/sync/ITimelineSyncListener;->updatePendingSyncSummary(Lcom/google/glass/sync/PendingSyncSummary;)V

    .line 415
    return-void
.end method
