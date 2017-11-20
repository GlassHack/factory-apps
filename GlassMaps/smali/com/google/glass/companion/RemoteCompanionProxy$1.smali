.class Lcom/google/glass/companion/RemoteCompanionProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 140
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {p2}, Lcom/google/glass/companion/IRemoteCompanionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/companion/IRemoteCompanionService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$302(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 142
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$500(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 144
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$302(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 134
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0, v4}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$402(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 135
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$500(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 136
    return-void
.end method
