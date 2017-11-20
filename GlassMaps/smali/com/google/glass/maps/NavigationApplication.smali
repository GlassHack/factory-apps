.class public Lcom/google/glass/maps/NavigationApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "SourceFile"


# static fields
.field static final SHOW_POWER_TIP_DELAY_MS:J = 0xfa0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method private isComponentEnabled(Landroid/content/ComponentName;Z)Z
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 67
    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :pswitch_0
    const/4 p2, 0x0

    .line 74
    :goto_0
    :pswitch_1
    return p2

    .line 72
    :pswitch_2
    const/4 p2, 0x1

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setEnabledState(Landroid/content/ComponentName;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, p1, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 88
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static shouldShowPowerTip(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v1

    .line 55
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isMulticastSupportedOnPairedDevice()Z

    move-result v0

    .line 56
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-direct {p0, v0, v4}, Lcom/google/glass/maps/NavigationApplication;->isComponentEnabled(Landroid/content/ComponentName;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Navigation activity was previous disabled, enabling"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0, v0, v4}, Lcom/google/glass/maps/NavigationApplication;->setEnabledState(Landroid/content/ComponentName;Z)V

    .line 42
    :cond_0
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 43
    return-void
.end method
