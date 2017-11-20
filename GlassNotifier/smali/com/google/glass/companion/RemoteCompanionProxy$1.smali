.class Lcom/google/glass/companion/RemoteCompanionProxy$1;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/RemoteCompanionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 155
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

    .line 156
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {p2}, Lcom/google/glass/companion/IRemoteCompanionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/companion/IRemoteCompanionService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$302(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 157
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$800(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 158
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$500(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    move-result-object v0

    .line 159
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$302(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 145
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$500(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 149
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0, v4}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$602(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 150
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 151
    return-void
.end method
