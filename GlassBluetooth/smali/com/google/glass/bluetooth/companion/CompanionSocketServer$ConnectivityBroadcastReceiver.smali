.class Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "CompanionSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V
    .locals 3

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .line 1069
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 1084
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1074
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Received intent %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1077
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1600(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V

    .line 1080
    :cond_0
    return-void
.end method
