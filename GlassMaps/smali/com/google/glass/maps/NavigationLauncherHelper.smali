.class public Lcom/google/glass/maps/NavigationLauncherHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_IS_RELAUNCH:Ljava/lang/String; = "is_relaunch"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationLauncherHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLiveCardEnabled()Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NLC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    return v0
.end method

.method private static launchImmersiveNavigation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 111
    if-nez p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    :goto_0
    const-class v1, Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 117
    invoke-static {p0}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isLiveCardPublished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getLiveCardHelper()Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->unpublishCard()V

    .line 122
    :cond_0
    return-void

    .line 111
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static launchLiveCardNavigation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/google/glass/maps/NavigationLauncherHelper;->showPreNavigationScreensIfNecessary(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    :goto_1
    const-class v1, Lcom/google/glass/maps/InitialLiveCardActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static launchNavigiation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/google/glass/maps/NavigationLauncherHelper;->isLiveCardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0, p1}, Lcom/google/glass/maps/NavigationLauncherHelper;->launchLiveCardNavigation(Landroid/content/Context;Landroid/content/Intent;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {p0, p1}, Lcom/google/glass/maps/NavigationLauncherHelper;->launchImmersiveNavigation(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static relaunchIfNecessary(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    invoke-static {}, Lcom/google/glass/maps/NavigationLauncherHelper;->isLiveCardEnabled()Z

    move-result v2

    if-eq p2, v2, :cond_1

    .line 36
    const-string v2, "is_relaunch"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    sget-object v1, Lcom/google/glass/maps/NavigationLauncherHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Get a relaunch intent, but did not go to the right activity"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 45
    :cond_0
    sget-object v2, Lcom/google/glass/maps/NavigationLauncherHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Live card flag flipped.  Relauching activity"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    const-string v0, "is_relaunch"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 53
    :cond_1
    return v0
.end method

.method public static showPreNavigationScreensIfNecessary(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    const-string v2, "com.google.glass.maps"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 70
    invoke-static {p0, p1}, Lcom/google/glass/maps/DisclaimerActivity;->showDisclaimerIfNecessary(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    sget-object v2, Lcom/google/glass/maps/NavigationLauncherHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Started DisclaimerActivity"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_0
    return v0

    .line 75
    :cond_1
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v3

    .line 77
    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v2

    .line 82
    invoke-virtual {v3}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-static {p0, p1}, Lcom/google/glass/companion/MyGlassWaitingActivityUtils;->showWaitScreenIfNecessary(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    sget-object v2, Lcom/google/glass/maps/NavigationLauncherHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Start MyGlass screen ..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 89
    goto :goto_0
.end method
