.class public Lcom/google/glass/wifi/WifiNetwork;
.super Ljava/lang/Object;
.source "WifiNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/wifi/WifiNetwork$Builder;,
        Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;
    }
.end annotation


# static fields
.field public static final ACTION_SETUP_WIFI:Ljava/lang/String; = "com.google.glass.action.SETUP_WIFI"

.field public static final CONNECT_TIMEOUT_MILLIS:J = 0x7530L

.field private static final HANDLER:Landroid/os/Handler;

.field public static final VALID_AUTH_ALGORITHMS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALID_GROUP_CIPHERS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALID_KEY_MANAGEMENT:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALID_PAIRWISE_CIPHERS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALID_PROTOCOLS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEP_HEX_KEY_PATTERN:Ljava/util/regex/Pattern;

.field public static final WIFI_MANGER_ERROR_CODE:I = -0x1

.field public static final WPA_HEX_KEY_PATTERN:Ljava/util/regex/Pattern;

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

.field private connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    .line 37
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 68
    const-string v0, "[0-9a-fA-F]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->WEP_HEX_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "[0-9a-fA-F]{64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->WPA_HEX_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_AUTH_ALGORITHMS:Lcom/google/common/collect/ImmutableList;

    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_GROUP_CIPHERS:Lcom/google/common/collect/ImmutableList;

    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 79
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_KEY_MANAGEMENT:Lcom/google/common/collect/ImmutableList;

    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_PAIRWISE_CIPHERS:Lcom/google/common/collect/ImmutableList;

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->VALID_PROTOCOLS:Lcom/google/common/collect/ImmutableList;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/wifi/WifiNetwork;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/google/glass/wifi/WifiNetwork;->context:Landroid/content/Context;

    .line 285
    invoke-static {}, Lcom/google/glass/wifi/WifiManagerProvider;->getInstance()Lcom/google/glass/wifi/WifiManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/wifi/WifiManagerProvider;->from(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 286
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 287
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "existingNetworkId"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiNetwork;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-direct {p0, p2}, Lcom/google/glass/wifi/WifiNetwork;->getExistingConfig(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/wifi/WifiNetwork;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "updateIfExists"    # Z

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiNetwork;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-direct {p0, p2, p3}, Lcom/google/glass/wifi/WifiNetwork;->addOrUpdateConfig(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "existingSsid"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiNetwork;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-direct {p0, p2}, Lcom/google/glass/wifi/WifiNetwork;->getExistingConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 344
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/wifi/WifiNetwork;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiNetwork;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/wifi/WifiNetwork;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiNetwork;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiNetwork;->cancelConnectivityReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/wifi/WifiNetwork;)Lcom/google/glass/android/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiNetwork;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/wifi/WifiNetwork;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/wifi/WifiNetwork;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiNetwork;->cancelTimeout()V

    return-void
.end method

.method static synthetic access$600()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private addOrUpdateConfig(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "updateIfExists"    # Z

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 467
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 468
    :cond_0
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Config or SSID was null.  Unable to add or update it with WifiManager."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    :goto_0
    return-object v2

    .line 473
    :cond_1
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/glass/wifi/WifiNetwork;->getExistingConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 474
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_4

    .line 475
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No existing config for SSID \"%s\".  Creating new one."

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v3, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 477
    .local v1, "networkId":I
    if-ne v1, v9, :cond_2

    .line 478
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to add network."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 482
    :cond_2
    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 500
    .end local v1    # "networkId":I
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/wifi/WifiNetwork$1;

    invoke-direct {v3, p0}, Lcom/google/glass/wifi/WifiNetwork$1;-><init>(Lcom/google/glass/wifi/WifiNetwork;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v2, p1

    .line 509
    goto :goto_0

    .line 483
    :cond_4
    if-eqz p2, :cond_5

    .line 484
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "SSID \"%s\" has an existing config.  Updating with new parameters."

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 489
    iget-object v3, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 490
    .restart local v1    # "networkId":I
    if-ne v1, v9, :cond_3

    .line 491
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to update network SSID \"%s\"."

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 495
    .end local v1    # "networkId":I
    :cond_5
    sget-object v2, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Loading existing config for SSID \"%s\" and discarding new config"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    move-object p1, v0

    goto :goto_1
.end method

.method private addQuotesIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 617
    if-nez p1, :cond_1

    .line 618
    const/4 p1, 0x0

    .line 623
    .end local p1    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 620
    .restart local p1    # "input":Ljava/lang/String;
    :cond_1
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private cancelConnectivityReceiver()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 589
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 592
    :cond_0
    return-void
.end method

.method private cancelTimeout()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 580
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling timeout."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    :cond_0
    return-void
.end method

.method private createConnectivityReceiver(Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiNetwork;->cancelConnectivityReceiver()V

    .line 600
    new-instance v0, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/wifi/WifiNetwork$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/wifi/WifiNetwork;Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;Lcom/google/glass/wifi/WifiNetwork$1;)V

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 603
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 604
    return-void
.end method

.method private getExistingConfig(I)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "networkId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 544
    sget-object v2, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Searching for existing network config for network id \"%s\"."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 546
    .local v1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 547
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 552
    .end local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 551
    :cond_1
    sget-object v2, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No such network id \"%s\"."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExistingConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 517
    if-nez p1, :cond_0

    .line 518
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "SSID was null.  Unable to get config."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 536
    :goto_0
    return-object v0

    .line 521
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiNetwork;->addQuotesIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 522
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Searching for existing network config for SSID \"%s\"."

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iget-object v3, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 524
    .local v1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 525
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 526
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    sget-object v4, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Checking config for SSID \"%s\"."

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 532
    .end local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "WiFi configuration does not have any SSIDs."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 533
    goto :goto_0

    .line 535
    :cond_3
    sget-object v3, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No such SSID \"%s\"."

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 536
    goto :goto_0
.end method

.method private startTimeout(Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiNetwork;->cancelTimeout()V

    .line 564
    new-instance v0, Lcom/google/glass/wifi/WifiNetwork$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/wifi/WifiNetwork$2;-><init>(Lcom/google/glass/wifi/WifiNetwork;Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V

    iput-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->timeoutRunnable:Ljava/lang/Runnable;

    .line 573
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting timeout of 30000 ms."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 575
    return-void
.end method

.method private trimQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 607
    if-nez p1, :cond_1

    .line 608
    const/4 p1, 0x0

    .line 613
    .end local p1    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 610
    .restart local p1    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public connect(Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 364
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork;->isConfigurationValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Invalid Wifi configuration.  Cancelling connect request."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    invoke-interface {p1}, Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;->onConnectionFailed()V

    .line 390
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Already connected to SSID %s.  Cancelling connect request."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    invoke-interface {p1}, Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;->onConnected()V

    goto :goto_0

    .line 377
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiNetwork;->createConnectivityReceiver(Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V

    .line 378
    invoke-direct {p0, p1}, Lcom/google/glass/wifi/WifiNetwork;->startTimeout(Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;)V

    .line 380
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    sget-object v0, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to enable network id \"%s\"."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiNetwork;->cancelConnectivityReceiver()V

    .line 383
    invoke-interface {p1}, Lcom/google/glass/wifi/WifiNetwork$WifiConnectionCallback;->onConnectionFailed()V

    goto :goto_0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    return v0
.end method

.method getConnectivityReceiver()Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/glass/wifi/WifiNetwork;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public isConfigurationValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 431
    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_0

    .line 432
    sget-object v1, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Invalid WifiNetwork configuration.  WifiConfiguration not set."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :goto_0
    return v0

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 436
    sget-object v1, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No SSID set."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v2, :cond_2

    .line 440
    sget-object v1, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Invalid network id."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 445
    sget-object v1, Lcom/google/glass/wifi/WifiNetwork;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Invalid WifiNetwork configuration.  No key set for WPA_PSK key management."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 449
    goto :goto_0
.end method

.method public isConnected()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 415
    iget-object v6, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    if-nez v6, :cond_0

    .line 424
    :goto_0
    return v5

    .line 418
    :cond_0
    iget-object v6, p0, Lcom/google/glass/wifi/WifiNetwork;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    invoke-interface {v6}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 419
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 420
    .local v0, "isConnected":Z
    :goto_1
    iget-object v6, p0, Lcom/google/glass/wifi/WifiNetwork;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 421
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/google/glass/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/glass/wifi/WifiNetwork;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 424
    .local v1, "isThisNetworkConnected":Z
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_3
    move v5, v4

    goto :goto_0

    .end local v0    # "isConnected":Z
    .end local v1    # "isThisNetworkConnected":Z
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    move v0, v5

    .line 419
    goto :goto_1

    .restart local v0    # "isConnected":Z
    .restart local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    move v1, v5

    .line 423
    goto :goto_2

    .restart local v1    # "isThisNetworkConnected":Z
    :cond_3
    move v4, v5

    .line 424
    goto :goto_3
.end method

.method public release()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiNetwork;->cancelTimeout()V

    .line 356
    invoke-direct {p0}, Lcom/google/glass/wifi/WifiNetwork;->cancelConnectivityReceiver()V

    .line 357
    return-void
.end method
