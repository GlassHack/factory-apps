.class public Lcom/google/glass/update/AndroidUpdate;
.super Ljava/lang/Object;
.source "AndroidUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/update/AndroidUpdate$InstallType;,
        Lcom/google/glass/update/AndroidUpdate$State;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_UPDATE:Ljava/lang/String; = "com.google.glass.update.CANCEL_UPDATE"

.field public static final ACTION_INSTALL_UPDATE:Ljava/lang/String; = "com.google.glass.update.INSTALL_UPDATE"

.field public static final ACTION_UPDATE_AVAILABLE:Ljava/lang/String; = "com.google.glass.update.UPDATE_AVAILABLE"

.field public static final ACTION_UPDATE_COMPLETED:Ljava/lang/String; = "com.google.glass.update.UPDATE_COMPLETED"

.field public static final EXTRA_IS_SUCCESS:Ljava/lang/String; = "is_success"

.field public static final KEY_DIALOG_MESSAGE:Ljava/lang/String; = "update_dialog_message"

.field public static final MINIMUM_PERCENT_TO_INSTALL:I = 0x32

.field private static final PERMISSION_TRIGGER_OTA:Ljava/lang/String; = "com.google.glass.permission.TRIGGER_OTA"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field battery:Lcom/google/glass/util/BatteryHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/update/AndroidUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/update/AndroidUpdate;->TAG:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/google/glass/update/AndroidUpdate;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/update/AndroidUpdate;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/glass/update/AndroidUpdate;->context:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdate;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 84
    return-void
.end method

.method private getUpdateAvailableIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdate;->context:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.glass.update.UPDATE_AVAILABLE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attemptInstall(Lcom/google/glass/update/AndroidUpdate$InstallType;)Z
    .locals 5
    .param p1, "installType"    # Lcom/google/glass/update/AndroidUpdate$InstallType;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/glass/update/AndroidUpdate;->getInstallState(Lcom/google/glass/update/AndroidUpdate$InstallType;)Lcom/google/glass/update/AndroidUpdate$State;

    move-result-object v0

    .line 142
    .local v0, "state":Lcom/google/glass/update/AndroidUpdate$State;
    sget-object v3, Lcom/google/glass/update/AndroidUpdate$State;->READY:Lcom/google/glass/update/AndroidUpdate$State;

    invoke-virtual {v3, v0}, Lcom/google/glass/update/AndroidUpdate$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    sget-object v3, Lcom/google/glass/update/AndroidUpdate;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Update is not ready to install. [reason=%s]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :goto_0
    return v1

    .line 147
    :cond_0
    sget-object v3, Lcom/google/glass/update/AndroidUpdate;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Ready for install, requesting platform start install."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdate;->forceInstall()V

    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public forceInstall()V
    .locals 4

    .prologue
    .line 157
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdate;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.glass.update.INSTALL_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.glass.permission.TRIGGER_OTA"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public getInstallState(Lcom/google/glass/update/AndroidUpdate$InstallType;)Lcom/google/glass/update/AndroidUpdate$State;
    .locals 3
    .param p1, "installType"    # Lcom/google/glass/update/AndroidUpdate$InstallType;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdate;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_CANCELLED:Lcom/google/glass/update/AndroidUpdate$State;

    .line 131
    :goto_0
    return-object v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdate;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    .line 112
    .local v0, "batteryState":Lcom/google/glass/util/BatteryHelper$BatteryState;
    iget-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-nez v1, :cond_1

    .line 114
    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_UNPLUGGED:Lcom/google/glass/update/AndroidUpdate$State;

    goto :goto_0

    .line 117
    :cond_1
    iget v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 121
    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_LOW_BATTERY:Lcom/google/glass/update/AndroidUpdate$State;

    goto :goto_0

    .line 125
    :cond_2
    sget-object v1, Lcom/google/glass/update/AndroidUpdate$InstallType;->AUTOMATIC:Lcom/google/glass/update/AndroidUpdate$InstallType;

    invoke-virtual {v1, p1}, Lcom/google/glass/update/AndroidUpdate$InstallType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdate;->isDeviceDonned()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->NOT_READY_DONNED:Lcom/google/glass/update/AndroidUpdate$State;

    goto :goto_0

    .line 131
    :cond_3
    sget-object v1, Lcom/google/glass/update/AndroidUpdate$State;->READY:Lcom/google/glass/update/AndroidUpdate$State;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/glass/update/AndroidUpdate;->getUpdateAvailableIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    .line 98
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "update_dialog_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/glass/update/AndroidUpdate;->getUpdateAvailableIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDeviceDonned()Z
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdate;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "on_head_detection_enabled"

    invoke-static {v1, v2, v0}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdate;->context:Landroid/content/Context;

    .line 164
    invoke-static {v1}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    const-string v0, "AndroidUpdate [isAvailable=%s, getName=%s, isReadyForInstall=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdate;->isAvailable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdate;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/glass/update/AndroidUpdate$InstallType;->AUTOMATIC:Lcom/google/glass/update/AndroidUpdate$InstallType;

    invoke-virtual {p0, v3}, Lcom/google/glass/update/AndroidUpdate;->getInstallState(Lcom/google/glass/update/AndroidUpdate$InstallType;)Lcom/google/glass/update/AndroidUpdate$State;

    move-result-object v3

    aput-object v3, v1, v2

    .line 174
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
