.class public Lcom/google/glass/settings/ui/DonDoffSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "DonDoffSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v2, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;-><init>(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;Z)V

    iput-object v2, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$layout;->don_doff_settings_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .local v1, "title":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$string;->don_doff_enable_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 95
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, "footer":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$string;->don_doff_enable_footer:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    iput-object v2, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 98
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/DonDoffSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->updateDonDoffEnableStatusText(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/DonDoffSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->updateDonDoffEnableIconState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/DonDoffSettingsItemView;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->showErrorDialog(I)V

    return-void
.end method

.method private isDonDoffDetectionEnabled()Z
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "on_head_detection_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static logDonDetectorStateUserEvent(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ohdEnabled"    # Z

    .prologue
    .line 229
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    if-eqz p1, :cond_0

    .line 231
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0
.end method

.method private onCalibrateDonDoff()V
    .locals 3

    .prologue
    .line 221
    sget-object v0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting the DonDoffCalibrationActivity..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_ON_HEAD_CALIBRATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method private onTurnOffDonDoffDetection()V
    .locals 3

    .prologue
    .line 192
    sget-object v0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu don detection turn off state is selected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->don_doff_turning_off:I

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 195
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->don_doff_turned_off:I

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 201
    return-void
.end method

.method static setDonDoffDetectionEnabled(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enableState"    # Z

    .prologue
    const/4 v5, 0x0

    .line 146
    sget-object v1, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting don detector in the native service to: %s ..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "on_head_detection_enabled"

    invoke-static {v1, v2, p1}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 149
    .local v0, "success":Z
    sget-object v1, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... done setting don detector native service!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0, p1}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->logDonDetectorStateUserEvent(Landroid/content/Context;Z)V

    .line 156
    :cond_0
    return v0
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    const/4 v3, 0x0

    .line 204
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 205
    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_warning_150:I

    .line 206
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 207
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;)V

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 214
    return-void
.end method

.method private updateDonDoffEnableIconState(Z)V
    .locals 2
    .param p1, "donDetectionEnabled"    # Z

    .prologue
    .line 179
    sget v1, Lcom/google/glass/settings/ui/R$id;->don_doff_main_icon:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    .local v0, "iconImageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 181
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_on_head_on_150:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_on_head_off_150:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateDonDoffEnableStatusText(Z)V
    .locals 4
    .param p1, "donDetectionEnabled"    # Z

    .prologue
    .line 165
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    .line 166
    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    .local v1, "statusTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->don_doff_on_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->don_doff_off_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 118
    .local v0, "selectedItemId":I
    sget v2, Lcom/google/glass/settings/ui/R$id;->don_doff_setup:I

    if-ne v0, v2, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->onCalibrateDonDoff()V

    .line 126
    :goto_0
    return v1

    .line 121
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$id;->don_doff_turn_off:I

    if-ne v0, v2, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->onTurnOffDonDoffDetection()V

    goto :goto_0

    .line 125
    :cond_1
    sget-object v1, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown menu item is tapped!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-super {p0, p1}, Lcom/google/glass/settings/ui/SettingsCard;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 2
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    .line 110
    sget v0, Lcom/google/glass/settings/ui/R$menu;->don_doff_settings_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 111
    sget v0, Lcom/google/glass/settings/ui/R$id;->don_doff_turn_off:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->isDonDoffDetectionEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public refreshSettingsUi()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 103
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->isDonDoffDetectionEnabled()Z

    move-result v0

    .line 104
    .local v0, "isDonDoffEnabled":Z
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->updateDonDoffEnableStatusText(Z)V

    .line 105
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->updateDonDoffEnableIconState(Z)V

    .line 106
    return-void
.end method
