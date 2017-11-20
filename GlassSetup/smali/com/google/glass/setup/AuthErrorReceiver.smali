.class public final Lcom/google/glass/setup/AuthErrorReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "AuthErrorReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/AuthErrorReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method

.method private final showDeviceManagementActivity(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v2, Lcom/google/glass/setup/AuthErrorReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Showing DeviceManagement error."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sget v2, Lcom/google/glass/setup/R$string;->error_device_management_required:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "message":Ljava/lang/String;
    sget v2, Lcom/google/glass/setup/R$string;->error_device_management_required_tip:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "subMessage":Ljava/lang/String;
    new-instance v2, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 43
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 44
    new-instance v2, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.glass.action.RELOGIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/setup/AuthErrorService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v1, "com.google.glass.action.DEVICE_MANAGEMENT_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/setup/AuthErrorReceiver;->showDeviceManagementActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object v1, Lcom/google/glass/setup/AuthErrorReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown action received: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
