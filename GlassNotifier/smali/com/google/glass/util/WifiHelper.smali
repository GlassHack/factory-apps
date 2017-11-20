.class public Lcom/google/glass/util/WifiHelper;
.super Ljava/lang/Object;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;,
        Lcom/google/glass/util/WifiHelper$WifiScanCallback;,
        Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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
    .line 50
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 52
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "wifiScanReceiver"

    .line 53
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->wifiScanReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 55
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    .line 56
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/util/WifiHelper;->HANDLER:Landroid/os/Handler;

    .line 130
    const-string v0, "[0-9a-fA-F]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->VALID_HEX_CHARS:Ljava/util/regex/Pattern;

    .line 136
    new-instance v0, Lcom/google/glass/util/WifiHelper$1;

    invoke-direct {v0}, Lcom/google/glass/util/WifiHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/google/glass/util/WifiHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 156
    const-string v0, "connectivity"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 158
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/util/WifiHelper;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/util/WifiHelper;->wifiScanReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/WifiHelper;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/WifiHelper;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/util/WifiHelper;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    return-void
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/util/WifiHelper;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static buildWifiConfiguration(Ljava/lang/String;Lcom/google/glass/wifi/WifiSecurity;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "encryption"    # Lcom/google/glass/wifi/WifiSecurity;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 335
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 336
    .local v1, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iput-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 337
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 338
    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 339
    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 342
    sget-object v2, Lcom/google/glass/util/WifiHelper$4;->$SwitchMap$com$google$glass$wifi$WifiSecurity:[I

    invoke-virtual {p1}, Lcom/google/glass/wifi/WifiSecurity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 381
    :goto_0
    return-object v1

    .line 344
    :pswitch_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 345
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 346
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 350
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 351
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 355
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 356
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 359
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 362
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 363
    .local v0, "keyLength":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/google/glass/util/WifiHelper;->VALID_HEX_CHARS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p2, v2, v5

    .line 368
    :goto_1
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 366
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_1

    .line 371
    .end local v0    # "keyLength":I
    :pswitch_3
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 372
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 373
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 376
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "WPA EAP chosen, assuming user got EAP cert onto the device somehow."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 342
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
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 449
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 452
    :cond_0
    return-void
.end method

.method private cancelScanReceiver()V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 460
    :cond_0
    return-void
.end method

.method private cancelTimeout()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 501
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling timeout."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    sget-object v0, Lcom/google/glass/util/WifiHelper;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    :cond_0
    return-void
.end method

.method private createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 469
    new-instance v0, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/util/WifiHelper$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;Lcom/google/glass/util/WifiHelper$1;)V

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 472
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 473
    return-void
.end method

.method public static getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/WifiHelper;->managerForTest:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/google/glass/util/WifiHelper;->managerForTest:Landroid/net/wifi/WifiManager;

    .line 436
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

    .line 405
    iget-object v4, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 406
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    move v0, v3

    .line 409
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_2

    .line 419
    :cond_0
    :goto_1
    return v3

    .line 406
    .end local v0    # "isConnected":Z
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 414
    .restart local v0    # "isConnected":Z
    :cond_2
    iget-object v4, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 415
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 419
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
    .line 441
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 442
    sput-object p0, Lcom/google/glass/util/WifiHelper;->managerForTest:Landroid/net/wifi/WifiManager;

    .line 443
    return-void
.end method

.method private startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    .line 485
    new-instance v0, Lcom/google/glass/util/WifiHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/WifiHelper$3;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    .line 494
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting timeout of 30000 ms."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    sget-object v0, Lcom/google/glass/util/WifiHelper;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 496
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

.method public connect(Ljava/lang/String;Lcom/google/glass/wifi/WifiSecurity;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)I
    .locals 13
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "encryption"    # Lcom/google/glass/wifi/WifiSecurity;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/google/glass/util/WifiHelper;->isNetworkConnected(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 231
    sget-object v7, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Already connected so ignoring connect request"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-interface/range {p4 .. p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnected()V

    .line 233
    const/4 v2, -0x1

    .line 306
    :goto_0
    return v2

    .line 235
    :cond_0
    const/4 v7, 0x3

    sget-object v8, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v8}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x39

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Attempting to connect to wifi [ssid="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", encryption="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v7, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

    if-eq p2, v7, :cond_1

    if-nez p3, :cond_1

    .line 241
    sget-object v7, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Aborting wifi connect attempt due to absent key for an encrypted network."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-interface/range {p4 .. p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 243
    const/4 v2, -0x1

    goto :goto_0

    .line 248
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/util/WifiHelper;->shouldDetectEncryption(Lcom/google/glass/wifi/WifiSecurity;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7, p1}, Lcom/google/glass/util/WifiHelper;->detectEncryptionType(Ljava/util/List;Ljava/lang/String;)Lcom/google/glass/wifi/WifiSecurity;

    move-result-object v1

    .line 250
    .local v1, "detectedEncryption":Lcom/google/glass/wifi/WifiSecurity;
    if-eqz v1, :cond_2

    .line 251
    move-object p2, v1

    .line 255
    .end local v1    # "detectedEncryption":Lcom/google/glass/wifi/WifiSecurity;
    :cond_2
    iget-object v7, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    .line 261
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 262
    .local v5, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_4

    .line 263
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 264
    .local v4, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "\""

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 265
    iget v8, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v3

    .line 266
    .local v3, "success":Z
    sget-object v8, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Removing existing network with the same SSID [success=%s]."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 272
    .end local v3    # "success":Z
    .end local v4    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    invoke-static/range {p1 .. p3}, Lcom/google/glass/util/WifiHelper;->buildWifiConfiguration(Ljava/lang/String;Lcom/google/glass/wifi/WifiSecurity;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 274
    .restart local v4    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/glass/util/WifiHelper;->createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 275
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/glass/util/WifiHelper;->startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 278
    sget-object v7, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Adding network..."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 280
    .local v2, "networkId":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_5

    .line 281
    sget-object v7, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Failed to add network."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 283
    invoke-interface/range {p4 .. p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 284
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 286
    :cond_5
    sget-object v7, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Enabling network... [networkId=%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v7

    if-nez v7, :cond_6

    .line 288
    sget-object v7, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Failed to enable network [networkId=%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 290
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 291
    invoke-interface/range {p4 .. p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 292
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 296
    :cond_6
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 297
    invoke-virtual {v7}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v7

    new-instance v8, Lcom/google/glass/util/WifiHelper$2;

    invoke-direct {v8, p0, v6}, Lcom/google/glass/util/WifiHelper$2;-><init>(Lcom/google/glass/util/WifiHelper;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v7, v8}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public connectToNetworkId(ILcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "callback"    # Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 387
    invoke-direct {p0, p2}, Lcom/google/glass/util/WifiHelper;->createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 388
    invoke-direct {p0, p2}, Lcom/google/glass/util/WifiHelper;->startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 390
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Enabling network... (ID = %s)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    sget-object v0, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to enable network. (ID = %s)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-interface {p2}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 396
    :cond_0
    return-void
.end method

.method public detectEncryptionType(Ljava/util/List;Ljava/lang/String;)Lcom/google/glass/wifi/WifiSecurity;
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
            "Lcom/google/glass/wifi/WifiSecurity;"
        }
    .end annotation

    .prologue
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 314
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

    .line 315
    if-nez p1, :cond_2

    .line 330
    :cond_0
    :goto_1
    return-object v0

    .line 314
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 318
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

    .line 319
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    invoke-virtual {p0, v1}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/wifi/WifiSecurity;

    move-result-object v0

    .line 321
    .local v0, "encryption":Lcom/google/glass/wifi/WifiSecurity;
    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-eqz v2, :cond_4

    .line 322
    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ENCRYPTION_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "e"

    .line 324
    invoke-virtual {v0}, Lcom/google/glass/wifi/WifiSecurity;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 323
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 326
    :cond_4
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Detected encryption : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/wifi/WifiSecurity;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 510
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 511
    .local v0, "cap":Ljava/lang/String;
    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->WEP:Lcom/google/glass/wifi/WifiSecurity;

    .line 518
    :goto_0
    return-object v1

    .line 513
    :cond_0
    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0

    .line 515
    :cond_1
    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->WPA_EAP:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0

    .line 518
    :cond_2
    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/util/WifiHelper;->clearEmptySsids(Ljava/util/List;)V

    .line 175
    return-object v0
.end method

.method public getSecurity(Landroid/net/wifi/WifiConfiguration;)Lcom/google/glass/wifi/WifiSecurity;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 526
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    .line 538
    :goto_0
    return-object v0

    .line 529
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    .line 530
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    :cond_1
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->WPA_EAP:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0

    .line 538
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->WEP:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 545
    iget-object v3, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 549
    :goto_0
    return v2

    .line 548
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 549
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 550
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    .line 549
    goto :goto_0

    :cond_1
    move v1, v2

    .line 550
    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 162
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    .line 428
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 429
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 430
    return-void
.end method

.method public shouldDetectEncryption(Lcom/google/glass/wifi/WifiSecurity;Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Lcom/google/glass/wifi/WifiSecurity;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 310
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 188
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Initiating scan for wifi."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 194
    new-instance v2, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/google/glass/util/WifiHelper$ScanBroadcastReceiver;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;Lcom/google/glass/util/WifiHelper$1;)V

    iput-object v2, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 195
    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/util/WifiHelper;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 198
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz p1, :cond_0

    .line 200
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

    .line 201
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

    .line 217
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start active wifi scan: "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start active wifi scan: "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start active wifi scan: "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start active wifi scan since the api is not found.  sdk version is %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 210
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 209
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 215
    sget-object v2, Lcom/google/glass/util/WifiHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Started passive wifi scan."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
