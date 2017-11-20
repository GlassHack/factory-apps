.class Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ConnectivityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    .line 128
    invoke-static {}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$700()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Received %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 136
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-static {v4}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$100(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 138
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Network is connected, attempting ping."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v4, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-static {v4}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$800(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)V

    .line 161
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 142
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Network is not connected."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    const-string v4, "com.google.glass.action.INET_CONDITION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const-string v4, "is_connected"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 146
    .local v1, "isConnected":Z
    const-string v4, "network_type"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 147
    .local v2, "networkType":I
    if-eq v2, v7, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "GSF reporting network=%s, connected=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    if-eqz v1, :cond_4

    .line 152
    iget-object v4, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-static {v4}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$100(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/google/android/glass/hidden/HiddenConnectivityManager;->reportInetCondition(Landroid/net/ConnectivityManager;IZ)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v4, p0, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker$BroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;

    invoke-static {v4}, Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;->access$800(Lcom/google/glass/bluetooth/tethering/ConnectivityChecker;)V

    goto :goto_0
.end method
