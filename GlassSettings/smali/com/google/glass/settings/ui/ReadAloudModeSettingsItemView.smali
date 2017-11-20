.class public Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "ReadAloudModeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;
    }
.end annotation


# instance fields
.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

.field private final turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;-><init>(Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;Z)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 36
    new-instance v0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;-><init>(Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;Z)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 114
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$layout;->read_aloud_mode_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 115
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->updateReadAloudStatusText()V

    return-void
.end method

.method private isReadAloudModeEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private onTurnOffReadAloudMode()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->read_aloud_mode_toggling_off:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 183
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->read_aloud_mode_disabled:I

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 186
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->turnOffListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 187
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 189
    return-void
.end method

.method private onTurnOnReadAloudMode()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->read_aloud_mode_toggling_on:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->read_aloud_mode_enabled:I

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->turnOnListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 196
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 204
    return-void
.end method

.method private updateReadAloudStatusText()V
    .locals 4

    .prologue
    .line 164
    sget v2, Lcom/google/glass/settings/ui/R$id;->read_aloud_mode_enable_state:I

    .line 165
    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    .local v1, "statusTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->isReadAloudModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->read_aloud_mode_on_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->read_aloud_mode_off_status:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 136
    .local v0, "selectedItemId":I
    sget v2, Lcom/google/glass/settings/ui/R$id;->read_aloud_mode_enable:I

    if-ne v0, v2, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->onTurnOnReadAloudMode()V

    .line 144
    :goto_0
    return v1

    .line 139
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$id;->read_aloud_mode_disable:I

    if-ne v0, v2, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->onTurnOffReadAloudMode()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/settings/ui/SettingsCard;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 4
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    const/4 v2, 0x1

    .line 126
    sget v1, Lcom/google/glass/settings/ui/R$menu;->read_aloud_mode_settings_menu:I

    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->isReadAloudModeEnabled()Z

    move-result v0

    .line 128
    .local v0, "a11yState":Z
    sget v1, Lcom/google/glass/settings/ui/R$id;->read_aloud_mode_enable:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    sget v1, Lcom/google/glass/settings/ui/R$id;->read_aloud_mode_disable:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    return v2

    .line 128
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshSettingsUi()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 121
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->updateReadAloudStatusText()V

    .line 122
    return-void
.end method
