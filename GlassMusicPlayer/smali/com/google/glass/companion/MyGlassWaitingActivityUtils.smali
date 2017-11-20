.class public final Lcom/google/glass/companion/MyGlassWaitingActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_LAUNCH_INTENT:Ljava/lang/String; = "launchIntent"

.field private static final WAITING_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/MyGlassWaitingActivityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 19
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.bluetooth"

    const-string v2, "com.google.glass.bluetooth.companion.CnsMyGlassWaitingActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/companion/MyGlassWaitingActivityUtils;->WAITING_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showWaitScreenIfNecessary(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    const-string v2, "com.google.glass.extra.STATE"

    .line 42
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    sget-object v1, Lcom/google/glass/companion/MyGlassWaitingActivityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Starting navigation without a paired device."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.glass.bluetooth.EXTRA_DEVICE"

    .line 55
    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->hasMyGlassMulticastConnection()Z

    move-result v1

    if-nez v1, :cond_5

    .line 59
    :cond_4
    sget-object v1, Lcom/google/glass/companion/MyGlassWaitingActivityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Starting navigation without companion connection or multicast capable device."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    sget-object v1, Lcom/google/glass/companion/MyGlassWaitingActivityUtils;->WAITING_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    const-string v1, "launchIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method
