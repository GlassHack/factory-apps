.class Lcom/google/glass/sync/TimelineSyncService$3;
.super Ljava/lang/Object;
.source "TimelineSyncService.java"

# interfaces
.implements Lcom/google/glass/util/remote/RemoteCallbackOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineSyncService;->notifySyncItemComplete(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/google/glass/sync/TimelineSyncService;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/TimelineSyncService;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$3;->this$0:Lcom/google/glass/sync/TimelineSyncService;

    iput-object p2, p0, Lcom/google/glass/sync/TimelineSyncService$3;->val$id:Ljava/lang/String;

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
    .line 256
    check-cast p1, Lcom/google/glass/sync/ITimelineSyncListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineSyncService$3;->doOperation(Lcom/google/glass/sync/ITimelineSyncListener;)V

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
    .line 259
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncService$3;->val$id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/glass/sync/ITimelineSyncListener;->onSyncItemComplete(Ljava/lang/String;)V

    .line 260
    return-void
.end method
