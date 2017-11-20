.class Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "CompanionSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupFinishedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V
    .locals 3

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .line 1040
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.setup.ACTION_SETUP_COMPLETE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 1041
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 1059
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1400(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/PresharedKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/PresharedKey;->fetchKey()V

    .line 1046
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1500(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1500(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1500(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->close()V

    .line 1050
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1600(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1500(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->notifySetupStatusChange()V

    goto :goto_0
.end method
