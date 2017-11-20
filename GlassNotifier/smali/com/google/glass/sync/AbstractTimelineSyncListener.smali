.class public abstract Lcom/google/glass/sync/AbstractTimelineSyncListener;
.super Lcom/google/glass/sync/ITimelineSyncListener$Stub;
.source "AbstractTimelineSyncListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/glass/sync/ITimelineSyncListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDcimStateChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "absolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method

.method public onDeletePhotosAndVideosComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method

.method public onSyncCycleComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method

.method public onSyncItemComplete(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 14
    return-void
.end method

.method public onSyncItemStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11
    return-void
.end method
