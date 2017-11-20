.class public Lcom/google/glass/util/WifiHelper;
.super Ljava/lang/Object;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/WifiHelper$4;,
        Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;,
        Lcom/google/glass/util/WifiHelper$Encryption;,
        Lcom/google/glass/util/WifiHelper$WifiScanCallback;,
        Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;
    }
.end annotation


# static fields
.field public static final ACTION_SETUP_WIFI:Ljava/lang/String; = "com.google.glass.action.SETUP_WIFI"

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x7530L

.field public static final EXTRA_SCAN_RESULTS:Ljava/lang/String; = "scan_results"

.field private static final HANDLER:Landroid/os/Handler;

.field public static final HIDDEN_KEY_MGMT_WPA2_PSK:I = 0x4

.field public static final NO_NETWORK_ID:I = -0x1

.field public static final SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_HEX_CHARS:Ljava/util/regex/Pattern;

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static managerForTest:Landroid/net/wifi/WifiManager;

.field private static final wifiScanReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "wifiScanReceiver"

    .line 48
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->wifiScanReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    .line 51
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/util/WifiHelper;->HANDLER:Landroid/os/Handler;

    .line 135
    const-string v0, "[0-9a-fA-F]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->VALID_HEX_CHARS:Ljava/util/regex/Pattern;

    .line 141
    new-instance v0, Lcom/google/glass/util/WifiHelper$1;

    invoke-direct {v0}, Lcom/google/glass/util/WifiHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/google/glass/util/WifiHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 161
    const-string v0, "connectivity"

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 163
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/util/WifiHelper;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/util/WifiHelper;->wifiScanReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/WifiHelper;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/WifiHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/util/WifiHelper;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    return-void
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/util/WifiHelper;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private buildWifiConfiguration(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "encryption"    # Lcom/google/glass/util/WifiHelper$Encryption;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 336
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 337
    .local v1, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iput-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 339
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 340
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 343
    sget-object v2, Lcom/google/glass/util/WifiHelper$4;->$SwitchMap$com$google$glass$util$WifiHelper$Encryption:[I

    invoke-virtual {p2}, Lcom/google/glass/util/WifiHelper$Encryption;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 380
    :goto_0
    return-object v1

    .line 345
    :pswitch_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 346
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 347
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 351
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 352
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 355
    :pswitch_2
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 356
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 357
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 360
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 363
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 364
    .local v0, "keyLength":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/google/glass/util/WifiHelper;->VALID_HEX_CHARS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v2, v6

    .line 369
    :goto_1
    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 367
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_1

    .line 372
    .end local v0    # "keyLength":I
    :pswitch_3
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 373
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 374
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 377
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "WPA EAP chosen, assuming user got EAP cert onto the device somehow."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cancelConnectivityReceiver()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 450
    :cond_0
    return-void
.end method

.method private cancelScanReceiver()V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 456
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    .line 455
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 459
    :cond_0
    return-void
.end method

.method private cancelTimeout()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling timeout."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    sget-object v0, Lcom/google/glass/util/WifiHelper;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    :cond_0
    return-void
.end method

.method private createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 468
    new-instance v0, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;Lcom/google/glass/util/WifiHelper$1;)V

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 471
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 472
    return-void
.end method

.method public static getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/WifiHelper;->managerForTest:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/google/glass/util/WifiHelper;->managerForTest:Landroid/net/wifi/WifiManager;

    .line 435
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    goto :goto_0
.end method

.method private isNetworkConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v4, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 405
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    move v0, v3

    .line 408
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_2

    .line 418
    :cond_0
    :goto_1
    return v3

    .line 405
    .end local v0    # "isConnected":Z
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 413
    .restart local v0    # "isConnected":Z
    :cond_2
    iget-object v4, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 414
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 418
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static setWifiManagerForTest(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 440
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 441
    sput-object p0, Lcom/google/glass/util/WifiHelper;->managerForTest:Landroid/net/wifi/WifiManager;

    .line 442
    return-void
.end method

.method private startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    .line 484
    new-instance v0, Lcom/google/glass/util/WifiHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/WifiHelper$3;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    .line 493
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting timeout of 30000 ms."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    sget-object v0, Lcom/google/glass/util/WifiHelper;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 495
    return-void
.end method


# virtual methods
.method clearEmptySsids(Ljava/util/List;)V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez p1, :cond_1

    .line 597
    :cond_0
    return-void

    .line 590
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 591
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 592
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Removed ScanResult with blank SSID."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 590
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)I
    .locals 17
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "encryption"    # Lcom/google/glass/util/WifiHelper$Encryption;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .prologue
    .line 232
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/util/WifiHelper;->isNetworkConnected(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 233
    sget-object v9, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Already connected so ignoring connect request"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-interface/range {p4 .. p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnected()V

    .line 235
    const/4 v4, -0x1

    .line 308
    :goto_0
    return v4

    .line 237
    :cond_0
    const/4 v9, 0x3

    sget-object v10, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v10}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x39

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Attempting to connect to wifi [ssid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", encryption="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v9, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    move-object/from16 v0, p2

    if-eq v0, v9, :cond_1

    if-nez p3, :cond_1

    .line 243
    sget-object v9, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Aborting wifi connect attempt due to absent key for an encrypted network."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-interface/range {p4 .. p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 245
    const/4 v4, -0x1

    goto :goto_0

    .line 250
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/WifiHelper;->shouldDetectEncryption(Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lcom/google/glass/util/WifiHelper;->detectEncryptionType(Ljava/util/List;Ljava/lang/String;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v3

    .line 252
    .local v3, "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    if-eqz v3, :cond_2

    .line 253
    move-object/from16 p2, v3

    .line 257
    .end local v3    # "detectedEncryption":Lcom/google/glass/util/WifiHelper$Encryption;
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    .line 263
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    .line 264
    .local v7, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v7, :cond_4

    .line 265
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 266
    .local v6, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 267
    iget v10, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v5

    .line 268
    .local v5, "success":Z
    sget-object v10, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Removing existing network with the same SSID [success=%s]."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 274
    .end local v5    # "success":Z
    .end local v6    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    invoke-direct/range {p0 .. p3}, Lcom/google/glass/util/WifiHelper;->buildWifiConfiguration(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 276
    .restart local v6    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/glass/util/WifiHelper;->createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/glass/util/WifiHelper;->startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 280
    sget-object v9, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Adding network..."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 282
    .local v4, "networkId":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_5

    .line 283
    sget-object v9, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Failed to add network."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 285
    invoke-interface/range {p4 .. p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 286
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 288
    :cond_5
    sget-object v9, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Enabling network... [networkId=%s]."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v9

    if-nez v9, :cond_6

    .line 290
    sget-object v9, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Failed to enable network [networkId=%s]."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 293
    invoke-interface/range {p4 .. p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 294
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 298
    :cond_6
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 299
    invoke-virtual {v9}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v9

    new-instance v10, Lcom/google/glass/util/WifiHelper$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v8}, Lcom/google/glass/util/WifiHelper$2;-><init>(Lcom/google/glass/util/WifiHelper;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v9, v10}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public connectToNetworkId(ILcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "callback"    # Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 386
    invoke-direct {p0, p2}, Lcom/google/glass/util/WifiHelper;->createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 387
    invoke-direct {p0, p2}, Lcom/google/glass/util/WifiHelper;->startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 389
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Enabling network... (ID = %s)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to enable network. (ID = %s)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    invoke-interface {p2}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 395
    :cond_0
    return-void
.end method

.method public detectEncryptionType(Ljava/util/List;Ljava/lang/String;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 8
    .param p2, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/glass/util/WifiHelper$Encryption;"
        }
    .end annotation

    .prologue
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 316
    sget-object v3, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Trying to detect encryption type for "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    if-nez p1, :cond_2

    .line 332
    :cond_0
    :goto_1
    return-object v0

    .line 316
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 321
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 322
    invoke-virtual {p0, v1}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v0

    .line 323
    .local v0, "encryption":Lcom/google/glass/util/WifiHelper$Encryption;
    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-eqz v2, :cond_4

    .line 324
    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "e"

    .line 326
    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper$Encryption;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 325
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 328
    :cond_4
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Detected encryption : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 509
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 510
    .local v0, "cap":Ljava/lang/String;
    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 517
    :goto_0
    return-object v1

    .line 512
    :cond_0
    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 514
    :cond_1
    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 517
    :cond_2
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/util/WifiHelper;->clearEmptySsids(Ljava/util/List;)V

    .line 178
    return-object v0
.end method

.method public getSecurity(Landroid/net/wifi/WifiConfiguration;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 525
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 537
    :goto_0
    return-object v0

    .line 528
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    .line 529
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    :cond_1
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 537
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 544
    iget-object v3, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 549
    :goto_0
    return v2

    .line 547
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 548
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 549
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 167
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    .line 427
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 428
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 429
    return-void
.end method

.method public shouldDetectEncryption(Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Lcom/google/glass/util/WifiHelper$Encryption;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 312
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startScan(ZLcom/google/glass/util/WifiHelper$WifiScanCallback;)V
    .locals 7
    .param p1, "active"    # Z
    .param p2, "callback"    # Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    .prologue
    const/4 v6, 0x0

    .line 189
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Initiating scan for wifi."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 195
    new-instance v2, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;Lcom/google/glass/util/WifiHelper$1;)V

    iput-object v2, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 196
    iget-object v3, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 197
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    .line 196
    invoke-virtual {v3, v2, v4}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 199
    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 200
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz p1, :cond_0

    .line 202
    :try_start_0
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string v3, "startScanActive"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Started active wifi scan."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 219
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start active wifi scan: "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start active wifi scan: "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start active wifi scan: "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start active wifi scan since the api is not found.  sdk version is %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 212
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 211
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 217
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Started passive wifi scan."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
