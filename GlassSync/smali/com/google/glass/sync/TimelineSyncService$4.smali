.class Lcom/google/glass/sync/TimelineSyncService$4;
.super Ljava/lang/Object;
.source "TimelineSyncService.java"

# interfaces
.implements Lcom/google/glass/util/remote/RemoteCallbackOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineSyncService;->notifySyncComplete()V
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


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/TimelineSyncService;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$4;->this$0:Lcom/google/glass/sync/TimelineSyncService;

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
    .line 266
    check-cast p1, Lcom/google/glass/sync/ITimelineSyncListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineSyncService$4;->doOperation(Lcom/google/glass/sync/ITimelineSyncListener;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/sync/ITimelineSyncListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/glass/sync/ITimelineSyncListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-interface {p1}, Lcom/google/glass/sync/ITimelineSyncListener;->onSyncCycleComplete()V

    .line 270
    return-void
.end method
