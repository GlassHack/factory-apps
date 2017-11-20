.class public Lcom/google/glass/settings/ui/NudgeSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "NudgeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/NudgeSettingsItemView$MenuUpdateTask;,
        Lcom/google/glass/settings/ui/NudgeSettingsItemView$SettingsUpdateTask;,
        Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;
    }
.end annotation


# static fields
.field private static final NUDGE_TUTORIAL_ACTIVITY_ACTION:Ljava/lang/String; = "com.google.glass.action.ACTION_NUDGE_TUTORIAL_ACTIVITY"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

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

.field private final turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;-><init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 49
    new-instance v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    invoke-direct {v1, p0, v3}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;-><init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 65
    iput-object p1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->context:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$layout;->nudge_settings_item:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "title":Landroid/widget/TextView;
    sget v1, Lcom/google/glass/settings/ui/R$string;->nudge_enable_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    iput-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 74
    invoke-direct {p0, v3}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->updateNudgeEnableStatusText(Z)V

    .line 75
    invoke-direct {p0, v3}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->updateNudgeEnableIconState(Z)V

    .line 76
    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->setNudgeFeatureEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->updateNudgeEnableStatusText(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->updateNudgeEnableIconState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/NudgeSettingsItemView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/settings/ui/NudgeSettingsItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->isNudgeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->updateOptionsMenu(Z)V

    return-void
.end method

.method private isNudgeEnabled()Z
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 145
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nudge_screen_off_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private onTurnOffNudgeFeature()V
    .locals 3

    .prologue
    .line 230
    sget-object v0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu nudge-screen-off turn off state is selected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->nudge_turning_off:I

    .line 232
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 233
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->nudge_turned_off:I

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 239
    return-void
.end method

.method private onTurnOnNudgeFeature()V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu nudge-screen-off turn on state is selected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->nudge_turning_on:I

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->nudge_tutorial_instruction:I

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->nudge_tutorial_instruction:I

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporarySecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 217
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->nudge_turned_on:I

    .line 218
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 220
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 221
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 223
    return-void
.end method

.method private setNudgeFeatureEnabled(Z)Z
    .locals 6
    .param p1, "enableState"    # Z

    .prologue
    const/4 v5, 0x0

    .line 157
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 158
    sget-object v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting nudge-screen-off in the native service to: %s ..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nudge_screen_off_enabled"

    invoke-static {v1, v2, p1}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    .local v0, "success":Z
    sget-object v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... done setting the enable status of nudge-screen-off feature!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return v0
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    const/4 v3, 0x0

    .line 242
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 243
    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_warning_150:I

    .line 244
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 245
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView;)V

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 251
    return-void
.end method

.method private updateItemVisibility(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->optionsMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    :cond_0
    return-void
.end method

.method private updateNudgeEnableIconState(Z)V
    .locals 2
    .param p1, "nudgeEnabled"    # Z

    .prologue
    .line 182
    sget v1, Lcom/google/glass/settings/ui/R$id;->nudge_main_icon:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 185
    .local v0, "iconImageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 186
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_nudge_on_150:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_nudge_off_150:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateNudgeEnableStatusText(Z)V
    .locals 4
    .param p1, "nudgeEnabled"    # Z

    .prologue
    .line 169
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    .local v1, "statusTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->nudge_on_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->nudge_off_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateOptionsMenu(Z)V
    .locals 2
    .param p1, "nudgeEnabled"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->optionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 195
    sget v0, Lcom/google/glass/settings/ui/R$id;->nudge_turn_off:I

    invoke-direct {p0, v0, p1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->updateItemVisibility(IZ)V

    .line 196
    sget v1, Lcom/google/glass/settings/ui/R$id;->nudge_turn_on:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->updateItemVisibility(IZ)V

    .line 198
    :cond_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 94
    iput-object v2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 98
    iput-object v2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 100
    :cond_1
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 122
    .local v0, "selectedItemId":I
    sget v2, Lcom/google/glass/settings/ui/R$id;->nudge_turn_on:I

    if-ne v0, v2, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->onTurnOnNudgeFeature()V

    .line 134
    :goto_0
    return v1

    .line 125
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$id;->nudge_turn_off:I

    if-ne v0, v2, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->onTurnOffNudgeFeature()V

    goto :goto_0

    .line 128
    :cond_1
    sget v2, Lcom/google/glass/settings/ui/R$id;->nudge_help:I

    if-ne v0, v2, :cond_2

    .line 129
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    .line 130
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.glass.action.ACTION_NUDGE_TUTORIAL_ACTIVITY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :cond_2
    sget-object v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown menu item is tapped!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-super {p0, p1}, Lcom/google/glass/settings/ui/SettingsCard;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 3
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    sget v0, Lcom/google/glass/settings/ui/R$menu;->nudge_settings_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    iput-object p2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->optionsMenu:Landroid/view/Menu;

    .line 108
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 110
    iput-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 112
    :cond_0
    new-instance v0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$MenuUpdateTask;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$MenuUpdateTask;-><init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Lcom/google/glass/settings/ui/NudgeSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 113
    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 114
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Void;

    .line 113
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public refreshSettingsUi()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 81
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 83
    iput-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 85
    :cond_0
    new-instance v0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$SettingsUpdateTask;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$SettingsUpdateTask;-><init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Lcom/google/glass/settings/ui/NudgeSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 86
    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 87
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Void;

    .line 86
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method
