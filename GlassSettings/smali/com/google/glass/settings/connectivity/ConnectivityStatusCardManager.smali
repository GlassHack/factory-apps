.class public Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
.super Ljava/lang/Object;
.source "ConnectivityStatusCardManager.java"

# interfaces
.implements Lcom/google/glass/connectivity/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;,
        Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;,
        Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field static final LINK_HIDDEN:I = -0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final action:Landroid/content/Intent;

.field private cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private headsetConnected:Z

.field private inetState:Lcom/google/glass/connectivity/InetConnectionState;

.field private pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private publishedTime:J

.field private stateForLogging:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

.field private final stateReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;

.field private final tickBroadcastReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/TestableAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.glass.action.HEADSET_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardUI"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->stateReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;

    .line 55
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->tickBroadcastReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->headsetConnected:Z

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->publishedTime:J

    .line 90
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/google/glass/connectivity/InetConnectionState;

    invoke-direct {v0, p1}, Lcom/google/glass/connectivity/InetConnectionState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 92
    const-string v0, "connectivity"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 94
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->action:Landroid/content/Intent;

    .line 96
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 97
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->HIDDEN:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->stateForLogging:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 98
    iput-object p2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    .line 99
    return-void
.end method

.method static synthetic access$1002(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->headsetConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->refresh()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->refreshTimestamp()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->stripQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;III[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->highlightText(III[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p9}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setViews(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Ljava/lang/String;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setMenuToShow(Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getPairedDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 457
    .local v0, "pairedDevceName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/settings/ui/R$string;->connectivity_phone:I

    .line 458
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "pairedDevceName":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs highlightText(III[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "textId"    # I
    .param p2, "highlightId"    # I
    .param p3, "highlightColorId"    # I
    .param p4, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 416
    iget-object v5, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 417
    .local v1, "highlightColorArgb":I
    iget-object v5, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    invoke-virtual {v5, p1, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    invoke-virtual {v5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "highlight":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 420
    .local v2, "s":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 421
    .local v3, "start":I
    if-ltz v3, :cond_0

    .line 422
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 424
    :cond_0
    return-object v2
.end method

.method private refresh()V
    .locals 7

    .prologue
    .line 107
    iget-object v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 108
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v2}, Lcom/google/glass/connectivity/InetConnectionState;->isConnected()Z

    move-result v0

    .line 109
    .local v0, "isConnected":Z
    sget-object v2, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Refresh with %s, network connected: %s, headset connected: %s, pairedDevice: %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->headsetConnected:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    aput-object v6, v4, v5

    .line 109
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    if-nez v1, :cond_1

    .line 113
    iget-boolean v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->headsetConnected:Z

    if-eqz v2, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setNoWifiBtConnectedWithIssues()V

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    invoke-interface {v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->onRefresh()V

    .line 146
    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setNoWifiNoBt()V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 121
    :sswitch_0
    if-eqz v0, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setWifiConnected()V

    goto :goto_0

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setWifiConnectedNoData()V

    goto :goto_0

    .line 128
    :sswitch_1
    if-eqz v0, :cond_3

    .line 129
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setNoWifiBtConnected()V

    goto :goto_0

    .line 131
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setNoWifiBtConnectedNoData()V

    goto :goto_0

    .line 135
    :sswitch_2
    if-eqz v0, :cond_4

    .line 136
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setNoWifiBtConnected()V

    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setNoWifiBtConnectedNoData()V

    goto :goto_0

    .line 140
    :cond_5
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setNoWifiBtConnectedWithIssues()V

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method private refreshTimestamp()V
    .locals 5

    .prologue
    .line 366
    iget-wide v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->publishedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    sget v1, Lcom/google/glass/settings/ui/R$id;->timestamp:I

    iget-object v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    iget-wide v3, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->publishedTime:J

    .line 368
    invoke-static {v2, v3, v4}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-interface {v0, v1, v2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    invoke-interface {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->onRefresh()V

    .line 371
    :cond_0
    return-void
.end method

.method private varargs setMenuToShow(Ljava/lang/String;[I)V
    .locals 5
    .param p1, "moreInfo"    # Ljava/lang/String;
    .param p2, "menuDescriptors"    # [I

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    .line 330
    array-length v0, p2

    if-lez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->action:Landroid/content/Intent;

    const-string v1, "more_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->action:Landroid/content/Intent;

    const-string v1, "menu_to_show"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 334
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->action:Landroid/content/Intent;

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setAction(Landroid/app/PendingIntent;)V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setAction(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setNoWifiBtConnected()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 235
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->switchToState(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;)V

    .line 236
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_glass_enabled:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_phone_bt:I

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_cloud:I

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->connectivity_link_green_left:I

    sget v5, Lcom/google/glass/settings/ui/R$drawable;->connectivity_link_green_right:I

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/settings/ui/R$string;->connectivity_glass:I

    .line 241
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->getPairedDeviceName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/settings/ui/R$string;->connectivity_internet:I

    .line 243
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v0, Lcom/google/glass/settings/ui/R$string;->connectivity_connected_bluetooth:I

    sget v9, Lcom/google/glass/settings/ui/R$string;->connectivity_connected_highlight:I

    sget v10, Lcom/google/glass/settings/ui/R$color;->state_green:I

    new-array v11, v12, [Ljava/lang/Object;

    .line 244
    invoke-direct {p0, v0, v9, v10, v11}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->highlightText(III[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, p0

    .line 236
    invoke-direct/range {v0 .. v9}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setViews(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 246
    const-string v0, ""

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    aput v2, v1, v12

    invoke-direct {p0, v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setMenuToShow(Ljava/lang/String;[I)V

    .line 247
    return-void
.end method

.method private setNoWifiBtConnectedNoData()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 254
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED_NO_DATA:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->switchToState(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;)V

    .line 255
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_glass_enabled:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_phone_bt:I

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_cloud_sad_dim:I

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_white_dots:I

    sget v5, Lcom/google/glass/settings/ui/R$drawable;->connectivity_link_red:I

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/settings/ui/R$string;->connectivity_glass:I

    .line 260
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 261
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->getPairedDeviceName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/settings/ui/R$string;->connectivity_internet:I

    .line 262
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v0, Lcom/google/glass/settings/ui/R$string;->connectivity_phone_disconnect:I

    sget v9, Lcom/google/glass/settings/ui/R$string;->connectivity_problem_highlight:I

    sget v10, Lcom/google/glass/settings/ui/R$color;->state_red:I

    new-array v11, v12, [Ljava/lang/Object;

    .line 263
    invoke-direct {p0, v0, v9, v10, v11}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->highlightText(III[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, p0

    .line 255
    invoke-direct/range {v0 .. v9}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setViews(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/settings/ui/R$string;->connectivity_more_info_check_bluetooth:I

    new-array v2, v13, [Ljava/lang/Object;

    .line 267
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->getPairedDeviceName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [I

    aput v13, v1, v12

    invoke-direct {p0, v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setMenuToShow(Ljava/lang/String;[I)V

    .line 268
    return-void
.end method

.method private setNoWifiBtConnectedWithIssues()V
    .locals 14

    .prologue
    .line 275
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_BT_CONNECTED_WITH_ISSUE:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->switchToState(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;)V

    .line 276
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_glass_enabled:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_phone_bt:I

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_cloud_sad_dim:I

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->connectivity_link_yellow:I

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/settings/ui/R$string;->connectivity_glass:I

    .line 281
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->getPairedDeviceName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/settings/ui/R$string;->connectivity_internet:I

    .line 283
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v0, Lcom/google/glass/settings/ui/R$string;->connectivity_bluetooth_problem:I

    sget v9, Lcom/google/glass/settings/ui/R$string;->connectivity_problem_highlight:I

    sget v12, Lcom/google/glass/settings/ui/R$color;->state_yellow:I

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    .line 284
    invoke-direct {p0, v0, v9, v12, v13}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->highlightText(III[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, p0

    .line 276
    invoke-direct/range {v0 .. v9}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setViews(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isIOSDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .line 288
    .local v10, "isPairedDeviceIphone":Z
    :goto_0
    if-eqz v10, :cond_1

    sget v11, Lcom/google/glass/settings/ui/R$string;->connectivity_more_info_reboot_iphone:I

    .line 290
    .local v11, "messageId":I
    :goto_1
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->getPairedDeviceName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setMenuToShow(Ljava/lang/String;[I)V

    .line 291
    return-void

    .line 287
    .end local v10    # "isPairedDeviceIphone":Z
    .end local v11    # "messageId":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 288
    .restart local v10    # "isPairedDeviceIphone":Z
    :cond_1
    sget v11, Lcom/google/glass/settings/ui/R$string;->connectivity_more_info_reboot_device:I

    goto :goto_1
.end method

.method private setNoWifiNoBt()V
    .locals 12

    .prologue
    .line 152
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->NO_WIFI_NO_BT:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->switchToState(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;)V

    .line 153
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_glass_enabled:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_wifi_dim:I

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_cloud_sad_dim:I

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->connectivity_link_red:I

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v6, Lcom/google/glass/settings/ui/R$string;->connectivity_glass:I

    .line 158
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v7, Lcom/google/glass/settings/ui/R$string;->connectivity_wifi:I

    .line 159
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/settings/ui/R$string;->connectivity_internet:I

    .line 160
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v0, Lcom/google/glass/settings/ui/R$string;->connectivity_disconnect_from_wifi:I

    sget v9, Lcom/google/glass/settings/ui/R$string;->connectivity_disconnect_highlight:I

    sget v10, Lcom/google/glass/settings/ui/R$color;->state_red:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    .line 161
    invoke-direct {p0, v0, v9, v10, v11}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->highlightText(III[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, p0

    .line 153
    invoke-direct/range {v0 .. v9}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setViews(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/settings/ui/R$string;->connectivity_more_info_connect_to_wifi_or_bluetooth:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setMenuToShow(Ljava/lang/String;[I)V

    .line 166
    return-void

    .line 164
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private setRemoteViewsImage(II)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "imageId"    # I

    .prologue
    .line 320
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_connectivity_g_0:I

    invoke-interface {v0, p1, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setImageViewResource(II)V

    .line 322
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    const/4 v1, 0x4

    invoke-interface {v0, p1, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setViewVisibility(II)V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setImageViewResource(II)V

    .line 325
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private setViews(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "leftImage"    # I
    .param p2, "centerImage"    # I
    .param p3, "rightImage"    # I
    .param p4, "leftLinkAnimation"    # I
    .param p5, "rightLinkAnimation"    # I
    .param p6, "textLeft"    # Ljava/lang/String;
    .param p7, "textCenter"    # Ljava/lang/String;
    .param p8, "textRight"    # Ljava/lang/String;
    .param p9, "statusText"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    sget v0, Lcom/google/glass/settings/ui/R$id;->imageLeft:I

    invoke-direct {p0, v0, p1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setRemoteViewsImage(II)V

    .line 309
    sget v0, Lcom/google/glass/settings/ui/R$id;->imageCenter:I

    invoke-direct {p0, v0, p2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setRemoteViewsImage(II)V

    .line 310
    sget v0, Lcom/google/glass/settings/ui/R$id;->imageRight:I

    invoke-direct {p0, v0, p3}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setRemoteViewsImage(II)V

    .line 311
    sget v0, Lcom/google/glass/settings/ui/R$id;->linkImageLeft:I

    invoke-direct {p0, v0, p4}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setRemoteViewsImage(II)V

    .line 312
    sget v0, Lcom/google/glass/settings/ui/R$id;->linkImageRight:I

    invoke-direct {p0, v0, p5}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setRemoteViewsImage(II)V

    .line 313
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    sget v1, Lcom/google/glass/settings/ui/R$id;->textLeft:I

    invoke-interface {v0, v1, p6}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    sget v1, Lcom/google/glass/settings/ui/R$id;->textCenter:I

    invoke-interface {v0, v1, p7}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    sget v1, Lcom/google/glass/settings/ui/R$id;->textRight:I

    invoke-interface {v0, v1, p8}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    sget v1, Lcom/google/glass/settings/ui/R$id;->statusText:I

    invoke-interface {v0, v1, p9}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 317
    return-void
.end method

.method private setWifiConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->WIFI_CONNECTED:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->switchToState(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;)V

    .line 173
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;

    .line 193
    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;

    .line 194
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Void;

    .line 193
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/util/TestableAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    const-string v0, ""

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    aput v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setMenuToShow(Ljava/lang/String;[I)V

    .line 197
    return-void
.end method

.method private setWifiConnectedNoData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->WIFI_CONNECTED_NO_DATA:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->switchToState(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;)V

    .line 204
    const-string v0, ""

    new-array v1, v2, [I

    invoke-direct {p0, v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->setMenuToShow(Ljava/lang/String;[I)V

    .line 205
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$2;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$2;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;

    .line 227
    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;

    .line 228
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Void;

    .line 227
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/util/TestableAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    return-void
.end method

.method private static stripQuotation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "wifiAp"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 484
    .end local p0    # "wifiAp":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private switchToState(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;)V
    .locals 8
    .param p1, "state"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->stateForLogging:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    if-eq p1, v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->stateForLogging:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    sget-object v2, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->HIDDEN:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    if-ne v1, v2, :cond_1

    const-string v0, "0"

    .line 377
    .local v0, "freshness":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATUS_CARD:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "k"

    iget-object v4, p1, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->logAction:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "f"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 378
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 380
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->stateForLogging:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    .line 382
    .end local v0    # "freshness":Ljava/lang/String;
    :cond_0
    return-void

    .line 375
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method


# virtual methods
.method getActionForTests()Landroid/content/Intent;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 448
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->action:Landroid/content/Intent;

    return-object v0
.end method

.method public getWifiInfoTask()Lcom/google/glass/util/TestableAsyncTask;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;

    return-object v0
.end method

.method protected hide()V
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;->HIDDEN:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->switchToState(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$State;)V

    .line 354
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->tickBroadcastReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 355
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->stateReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 356
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;->removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 357
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/TestableAsyncTask;->cancel(Z)Z

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiInfoTask:Lcom/google/glass/util/TestableAsyncTask;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    invoke-interface {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->onHide()V

    .line 362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->publishedTime:J

    .line 363
    return-void
.end method

.method public onConnectivityChanged(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->refresh()V

    .line 104
    return-void
.end method

.method setConnectivityManager(Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 429
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 430
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 431
    return-void
.end method

.method setInetState(Lcom/google/glass/connectivity/InetConnectionState;)V
    .locals 0
    .param p1, "inetState"    # Lcom/google/glass/connectivity/InetConnectionState;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 442
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 443
    return-void
.end method

.method setWifiManager(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 435
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 436
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 437
    return-void
.end method

.method protected show()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 344
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->stateReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$StateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 345
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->cardUI:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    invoke-interface {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;->onShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->publishedTime:J

    .line 347
    invoke-direct {p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->refreshTimestamp()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->tickBroadcastReceiver:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 350
    return-void
.end method
