.class public Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "LookAtScreenSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;,
        Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$SettingsUpdateTask;,
        Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$LookAtScreenStateChangeListener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field menuUpdateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private optionsMenu:Landroid/view/Menu;

.field settingsUpdateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v2, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$LookAtScreenStateChangeListener;

    invoke-direct {v2, p0, v4}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$LookAtScreenStateChangeListener;-><init>(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;Z)V

    iput-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$layout;->look_at_screen_settings_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, "title":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$string;->look_at_screen_enable_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    .local v0, "footer":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$string;->look_at_screen_card_footer:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    iput-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 109
    invoke-direct {p0, v4}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->updateLookAtScreenEnableStatusText(Z)V

    .line 110
    invoke-direct {p0, v4}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->updateLookAtScreenEnableIconState(Z)V

    .line 111
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->updateLookAtScreenEnableStatusText(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->updateLookAtScreenEnableIconState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->isLookAtScreenFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->updateOptionsMenu(Z)V

    return-void
.end method

.method private isLookAtScreenFeatureEnabled()Z
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 157
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_glance_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static logLasDetectionState(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLasEnabled"    # Z

    .prologue
    .line 176
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    if-eqz p1, :cond_0

    .line 178
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0
.end method

.method private onCalibrateLookAtScreen()V
    .locals 3

    .prologue
    .line 258
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting the LookAtScreenCalibrationActivity..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_LOOK_AT_SCREEN_CALIBRATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method private onLookAtScreenPlaypen()V
    .locals 3

    .prologue
    .line 266
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting the LookAtScreenTestActivity..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_LOOK_AT_SCREEN_PLAYPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private onTurnOffLookAtScreenDetection()V
    .locals 3

    .prologue
    .line 229
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu LAS detection turn off state is selected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->look_at_screen_turning_off:I

    .line 231
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 232
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->look_at_screen_turned_off:I

    .line 233
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 238
    return-void
.end method

.method static setLookAtScreenDetectionEnabled(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enableState"    # Z

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_glance_enabled"

    invoke-static {v1, v2, p1}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    .local v0, "success":Z
    invoke-static {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->logLasDetectionState(Landroid/content/Context;Z)V

    .line 171
    return v0
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    const/4 v3, 0x0

    .line 241
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 242
    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_warning_150:I

    .line 243
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 244
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 245
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;)V

    .line 248
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 251
    return-void
.end method

.method private startMenuUpdateTask()V
    .locals 3

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->stopMenuUpdateTask()V

    .line 286
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;-><init>(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 287
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 288
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 287
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method private startSettingsUpdateTask()V
    .locals 3

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->stopSettingsUpdateTask()V

    .line 272
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$SettingsUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$SettingsUpdateTask;-><init>(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 273
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 274
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 273
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 275
    return-void
.end method

.method private stopMenuUpdateTask()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 296
    :cond_0
    return-void
.end method

.method private stopSettingsUpdateTask()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 282
    :cond_0
    return-void
.end method

.method private updateItemVisibility(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 218
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->optionsMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 219
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 222
    :cond_0
    return-void
.end method

.method private updateLookAtScreenEnableIconState(Z)V
    .locals 2
    .param p1, "isLookAtScreenDetectionEnabled"    # Z

    .prologue
    .line 200
    sget v1, Lcom/google/glass/settings/ui/R$id;->look_at_screen_main_icon:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    .local v0, "iconImageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 203
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_glance_notifications_on_160:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_glance_notifications_off_160:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateLookAtScreenEnableStatusText(Z)V
    .locals 4
    .param p1, "isLookAtScreenDetectionEnabled"    # Z

    .prologue
    .line 186
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    .line 187
    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    .local v1, "statusTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->look_at_screen_on_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->look_at_screen_off_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateOptionsMenu(Z)V
    .locals 1
    .param p1, "isLookAtScreenDetectionEnabled"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->optionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 212
    sget v0, Lcom/google/glass/settings/ui/R$id;->look_at_screen_playpen:I

    invoke-direct {p0, v0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->updateItemVisibility(IZ)V

    .line 213
    sget v0, Lcom/google/glass/settings/ui/R$id;->look_at_screen_turn_off:I

    invoke-direct {p0, v0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->updateItemVisibility(IZ)V

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->stopSettingsUpdateTask()V

    .line 122
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->stopMenuUpdateTask()V

    .line 123
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 137
    .local v0, "selectedItemId":I
    sget v2, Lcom/google/glass/settings/ui/R$id;->look_at_screen_setup:I

    if-ne v0, v2, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->onCalibrateLookAtScreen()V

    .line 148
    :goto_0
    return v1

    .line 140
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$id;->look_at_screen_playpen:I

    if-ne v0, v2, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->onLookAtScreenPlaypen()V

    goto :goto_0

    .line 143
    :cond_1
    sget v2, Lcom/google/glass/settings/ui/R$id;->look_at_screen_turn_off:I

    if-ne v0, v2, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->onTurnOffLookAtScreenDetection()V

    goto :goto_0

    .line 147
    :cond_2
    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown menu item is tapped!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-super {p0, p1}, Lcom/google/glass/settings/ui/SettingsCard;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 1
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    .line 128
    sget v0, Lcom/google/glass/settings/ui/R$menu;->look_at_screen_settings_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    iput-object p2, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->optionsMenu:Landroid/view/Menu;

    .line 130
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->startMenuUpdateTask()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public refreshSettingsUi()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 116
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->startSettingsUpdateTask()V

    .line 117
    return-void
.end method
