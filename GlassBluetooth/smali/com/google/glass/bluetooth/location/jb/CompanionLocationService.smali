.class public Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;
.super Landroid/app/Service;
.source "CompanionLocationService.java"


# static fields
.field private static final FUSED_BALANCED_POWER_ACCURACY_LOCATION_ACTION:Ljava/lang/String; = "com.google.glass.bluetooth.location.jb.CompanionFusedBalancedPowerAccuracyProvider"

.field private static final FUSED_HIGH_ACCURACY_LOCATION_ACTION:Ljava/lang/String; = "com.google.glass.bluetooth.location.jb.CompanionFusedHighAccuracyProvider"

.field private static final GPS_LOCATION_ACTION:Ljava/lang/String; = "com.google.glass.bluetooth.location.jb.CompanionGpsLocationProvider"

.field private static final NETWORK_LOCATION_ACTION:Ljava/lang/String; = "com.google.glass.bluetooth.location.jb.CompanionNetworkLocationProvider"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companionFusedBalancedPowerAccuracyProvider:Lcom/google/glass/bluetooth/location/jb/CompanionFusedBalancedPowerAccuracyProvider;

.field private companionFusedHighAccuracyProvider:Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;

.field private companionGpsLocationProvider:Lcom/google/glass/bluetooth/location/jb/CompanionGpsLocationProvider;

.field private companionNetworkLocationProvider:Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onBind() action: [%s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const-string v1, "com.google.glass.bluetooth.location.jb.CompanionNetworkLocationProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionNetworkLocationProvider:Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;

    .line 87
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionNetworkLocationProvider:Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionNetworkLocationProvider:Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/location/jb/CompanionNetworkLocationProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 92
    :cond_1
    const-string v1, "com.google.glass.bluetooth.location.jb.CompanionGpsLocationProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionGpsLocationProvider:Lcom/google/glass/bluetooth/location/jb/CompanionGpsLocationProvider;

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Lcom/google/glass/bluetooth/location/jb/CompanionGpsLocationProvider;

    .line 95
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionGpsLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionGpsLocationProvider:Lcom/google/glass/bluetooth/location/jb/CompanionGpsLocationProvider;

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionGpsLocationProvider:Lcom/google/glass/bluetooth/location/jb/CompanionGpsLocationProvider;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/location/jb/CompanionGpsLocationProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_3
    const-string v1, "com.google.glass.bluetooth.location.jb.CompanionFusedBalancedPowerAccuracyProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionFusedBalancedPowerAccuracyProvider:Lcom/google/glass/bluetooth/location/jb/CompanionFusedBalancedPowerAccuracyProvider;

    if-nez v1, :cond_4

    .line 102
    new-instance v1, Lcom/google/glass/bluetooth/location/jb/CompanionFusedBalancedPowerAccuracyProvider;

    .line 103
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionFusedBalancedPowerAccuracyProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionFusedBalancedPowerAccuracyProvider:Lcom/google/glass/bluetooth/location/jb/CompanionFusedBalancedPowerAccuracyProvider;

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionFusedBalancedPowerAccuracyProvider:Lcom/google/glass/bluetooth/location/jb/CompanionFusedBalancedPowerAccuracyProvider;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/location/jb/CompanionFusedBalancedPowerAccuracyProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_5
    const-string v1, "com.google.glass.bluetooth.location.jb.CompanionFusedHighAccuracyProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 109
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionFusedHighAccuracyProvider:Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;

    if-nez v1, :cond_6

    .line 110
    new-instance v1, Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;

    .line 111
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionFusedHighAccuracyProvider:Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;

    .line 113
    :cond_6
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->companionFusedHighAccuracyProvider:Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/location/jb/CompanionFusedHighAccuracyProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    .line 116
    :cond_7
    sget-object v1, Lcom/google/glass/bluetooth/location/jb/CompanionLocationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown action: [%s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method
