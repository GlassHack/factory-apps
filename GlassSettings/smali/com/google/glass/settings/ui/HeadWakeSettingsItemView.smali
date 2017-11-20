.class public Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "HeadWakeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$MenuUpdateTask;,
        Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;,
        Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private angleTextLabelView:Landroid/widget/TextView;

.field private angleTextView:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private menuTurnOff:Landroid/view/MenuItem;

.field private menuTurnOn:Landroid/view/MenuItem;

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

.field settingsUpdateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

.field private final turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wakeAngleImageView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v3, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;

    invoke-direct {v3, p0, v5}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;-><init>(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Z)V

    iput-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 57
    new-instance v3, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;-><init>(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Z)V

    iput-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 106
    iput-object p1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$layout;->head_wake_settings_item:I

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    .local v1, "title":Landroid/widget/TextView;
    sget v3, Lcom/google/glass/settings/ui/R$string;->head_wake_enable_title:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 112
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    .local v2, "wakeLabel":Landroid/widget/TextView;
    sget v3, Lcom/google/glass/settings/ui/R$string;->head_wake_angle_label:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_extra_details1:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, "angleSetting":Landroid/widget/TextView;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    const-string v3, "sans-serif-thin"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    new-instance v3, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v3, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 122
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/sound/SoundManager;

    iput-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 123
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->cacheAngleOutputViews()V

    .line 127
    invoke-direct {p0, v5}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->updateHeadWakeEnableState(Z)V

    .line 128
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->updateHeadWakeEnableState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->isHeadWakeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;
    .param p1, "x1"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->updateWakeAngleOutputState(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->updateOptionsMenu(Z)V

    return-void
.end method

.method private cacheAngleOutputViews()V
    .locals 1

    .prologue
    .line 291
    sget v0, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->angleTextLabelView:Landroid/widget/TextView;

    .line 292
    sget v0, Lcom/google/glass/settings/ui/R$id;->setting_extra_details1:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->angleTextView:Landroid/widget/TextView;

    .line 293
    sget v0, Lcom/google/glass/settings/ui/R$id;->head_wake_main_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    .line 294
    return-void
.end method

.method private isHeadWakeEnabled()Z
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 173
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "head_wake_up_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onSetTriggerAngle()V
    .locals 4

    .prologue
    .line 285
    sget-object v0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Switching to activity for setting the trigger angle!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    const-class v3, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method private onTurnOffHeadWake()V
    .locals 3

    .prologue
    .line 254
    sget-object v0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu head wake turn off state is selected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->head_wake_turning_off:I

    .line 257
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 258
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->head_wake_turned_off:I

    .line 259
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 260
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 261
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 262
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 255
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 264
    return-void
.end method

.method private onTurnOnHeadWake()V
    .locals 3

    .prologue
    .line 271
    sget-object v0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu head wake turn on state is selected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->head_wake_turning_on:I

    .line 274
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->head_wake_turned_on:I

    .line 276
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 277
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 278
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 279
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 272
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 281
    return-void
.end method

.method static setHeadWakeEnabledPersistent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p2, "enableState"    # Z

    .prologue
    .line 187
    sget-object v1, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Update head wake settings to: %s ..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;

    invoke-direct {v2, p0, p2}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;-><init>(Landroid/content/Context;Z)V

    .line 189
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 199
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 202
    .local v0, "eventActionToLog":Lcom/google/glass/userevent/UserEventAction;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 203
    return-void

    .line 199
    .end local v0    # "eventActionToLog":Lcom/google/glass/userevent/UserEventAction;
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_0
.end method

.method private setWakeAngleDegs(F)V
    .locals 7
    .param p1, "wakeAngleDegs"    # F

    .prologue
    .line 298
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->angleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 299
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int v1, v2

    .line 300
    .local v1, "roundedAngleDegs":I
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 301
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->angleTextView:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/settings/ui/R$string;->head_wake_angle_text_format:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 301
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "roundedAngleDegs":I
    :cond_0
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    invoke-virtual {v2, p1}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->setHeadAngleDegs(F)V

    .line 308
    :cond_1
    return-void
.end method

.method private startMenuUpdateTask()V
    .locals 3

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->stopMenuUpdateTask()V

    .line 326
    new-instance v0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$MenuUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$MenuUpdateTask;-><init>(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 327
    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 328
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 327
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    return-void
.end method

.method private startSettingsUpdateTask()V
    .locals 3

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->stopSettingsUpdateTask()V

    .line 312
    new-instance v0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;-><init>(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 313
    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 314
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 313
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    return-void
.end method

.method private stopMenuUpdateTask()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 336
    :cond_0
    return-void
.end method

.method private stopSettingsUpdateTask()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 322
    :cond_0
    return-void
.end method

.method private updateHeadWakeEnableState(Z)V
    .locals 6
    .param p1, "enableState"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 225
    sget-object v0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Head wake enabled=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->updateHeadWakeEnableStatusText(Z)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->wakeAngleImageView:Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    invoke-virtual {v0, p1}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->setHeadWakeEnabled(Z)V

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->angleTextLabelView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->angleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    return-void

    :cond_1
    move v0, v2

    .line 236
    goto :goto_0

    :cond_2
    move v1, v2

    .line 237
    goto :goto_1
.end method

.method private updateHeadWakeEnableStatusText(Z)V
    .locals 4
    .param p1, "enableState"    # Z

    .prologue
    .line 211
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    .line 212
    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    .local v1, "statusTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/settings/ui/R$string;->head_wake_on_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/settings/ui/R$string;->head_wake_off_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateOptionsMenu(Z)V
    .locals 2
    .param p1, "enableState"    # Z

    .prologue
    .line 245
    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuTurnOn:Landroid/view/MenuItem;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuTurnOff:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 247
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWakeAngleOutputState(F)V
    .locals 0
    .param p1, "wakeDegs"    # F

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->setWakeAngleDegs(F)V

    .line 242
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->stopSettingsUpdateTask()V

    .line 139
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->stopMenuUpdateTask()V

    .line 140
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 155
    .local v0, "selectedItemId":I
    sget v2, Lcom/google/glass/settings/ui/R$id;->head_wake_turn_on_menu_item:I

    if-ne v0, v2, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->onTurnOnHeadWake()V

    .line 166
    :goto_0
    return v1

    .line 158
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$id;->head_wake_turn_off_menu_item:I

    if-ne v0, v2, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->onTurnOffHeadWake()V

    goto :goto_0

    .line 161
    :cond_1
    sget v2, Lcom/google/glass/settings/ui/R$id;->head_wake_set_trigger_angle:I

    if-ne v0, v2, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->onSetTriggerAngle()V

    goto :goto_0

    .line 165
    :cond_2
    sget-object v1, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown menu item is tapped!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
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
    .line 145
    sget v0, Lcom/google/glass/settings/ui/R$menu;->head_wake_settings_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    sget v0, Lcom/google/glass/settings/ui/R$id;->head_wake_turn_on_menu_item:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuTurnOn:Landroid/view/MenuItem;

    .line 147
    sget v0, Lcom/google/glass/settings/ui/R$id;->head_wake_turn_off_menu_item:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->menuTurnOff:Landroid/view/MenuItem;

    .line 148
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->startMenuUpdateTask()V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public refreshSettingsUi()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 133
    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->startSettingsUpdateTask()V

    .line 134
    return-void
.end method
