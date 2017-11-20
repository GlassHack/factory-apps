.class Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;
.super Lcom/google/android/gtalkservice/IGTalkService$Stub;
.source "GTalkServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/gtalkservice/IGTalkConnectionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V

    .line 45
    return-void
.end method

.method public dismissAllNotifications()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkService;->dismissAllNotifications()V

    .line 70
    return-void
.end method

.method public dismissNotificationFor(Ljava/lang/String;J)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationFor(Ljava/lang/String;J)V

    .line 80
    return-void
.end method

.method public dismissNotificationsForAccount(J)V
    .locals 1
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationsForAccount(J)V

    .line 75
    return-void
.end method

.method public getActiveConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkService;->getActiveConnections()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gtalkservice/IGTalkService;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkService;->getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceStorageLow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkService;->getDeviceStorageLow()Z

    move-result v0

    return v0
.end method

.method public getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    return-object v0
.end method

.method public printDiagnostics()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkService;->printDiagnostics()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTalkForegroundState()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy$1;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkServiceProxy;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkService;->setTalkForegroundState()V

    .line 95
    return-void
.end method
