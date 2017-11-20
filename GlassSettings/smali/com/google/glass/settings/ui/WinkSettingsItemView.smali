.class public Lcom/google/glass/settings/ui/WinkSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "WinkSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/WinkSettingsItemView$MenuUpdateTask;,
        Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;
    }
.end annotation


# static fields
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

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->context:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$layout;->wink_settings_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "title":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$string;->wink_card_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, "footer":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$string;->wink_card_footer:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 68
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    iput-object v2, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 72
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->updateWinkEnableStatusUI(Z)V

    .line 73
    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/WinkSettingsItemView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WinkSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->setWinkDetectionEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/WinkSettingsItemView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WinkSettingsItemView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/WinkSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WinkSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->updateWinkEnableStatusUI(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/WinkSettingsItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WinkSettingsItemView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->isWinkDetectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/WinkSettingsItemView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/WinkSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->updateOptionsMenu(Z)V

    return-void
.end method

.method private isWinkDetectionEnabled()Z
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 146
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private logWinkDetectionState(Z)V
    .locals 2
    .param p1, "isWinkEnabled"    # Z

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0
.end method

.method private onHelp()V
    .locals 4

    .prologue
    .line 218
    sget-object v1, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Menu help is seleted."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 220
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method private onSetUpWinkDetection()V
    .locals 4

    .prologue
    .line 209
    sget-object v1, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Menu set up wink is seleted."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_WINK_CALIBRATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method private onTurnOffWinkDetection()V
    .locals 3

    .prologue
    .line 228
    sget-object v0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu wink detection turn off state is selected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->wink_turning_off:I

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_power_50:I

    .line 231
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->wink_turned_off:I

    .line 232
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 233
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/WinkSettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;)V

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 252
    return-void
.end method

.method private setWinkDetectionEnabled(Z)Z
    .locals 6
    .param p1, "enableState"    # Z

    .prologue
    const/4 v5, 0x0

    .line 158
    sget-object v1, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting wink detector in the native service to: %s ..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wink_for_picture_enabled"

    invoke-static {v1, v2, p1}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    .local v0, "success":Z
    sget-object v1, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... done setting wink detector native service!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logWinkDetectionState(Z)V

    .line 163
    return v0
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    const/4 v3, 0x0

    .line 259
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 260
    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_warning_150:I

    .line 261
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 262
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 263
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/WinkSettingsItemView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView$2;-><init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 269
    return-void
.end method

.method private updateItemVisibility(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 199
    iget-object v1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->optionsMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 200
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 203
    :cond_0
    return-void
.end method

.method private updateOptionsMenu(Z)V
    .locals 1
    .param p1, "isWinkEnabled"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->optionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 194
    sget v0, Lcom/google/glass/settings/ui/R$id;->wink_turn_off:I

    invoke-direct {p0, v0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->updateItemVisibility(IZ)V

    .line 196
    :cond_0
    return-void
.end method

.method private updateWinkEnableStatusUI(Z)V
    .locals 5
    .param p1, "isWinkEnabled"    # Z

    .prologue
    .line 176
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    .line 177
    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 178
    .local v2, "statusTextView":Landroid/widget/TextView;
    sget v3, Lcom/google/glass/settings/ui/R$id;->wink_icon:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 179
    .local v1, "statusImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$string;->wink_on_status:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    sget v3, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_wink_on_150:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$string;->wink_off_status:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    sget v3, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_wink_off_150:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onAttachedToWindow()V

    .line 79
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.glass.gesture.action.PRELOAD_RESOURCES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 99
    iput-object v2, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 103
    iput-object v2, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 105
    :cond_1
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 125
    .local v0, "selectedItemId":I
    sget v2, Lcom/google/glass/settings/ui/R$id;->wink_setup:I

    if-ne v0, v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->onSetUpWinkDetection()V

    .line 136
    :goto_0
    return v1

    .line 128
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$id;->wink_turn_off:I

    if-ne v0, v2, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->onTurnOffWinkDetection()V

    goto :goto_0

    .line 131
    :cond_1
    sget v2, Lcom/google/glass/settings/ui/R$id;->wink_help:I

    if-ne v0, v2, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->onHelp()V

    goto :goto_0

    .line 135
    :cond_2
    sget-object v1, Lcom/google/glass/settings/ui/WinkSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown menu item is tapped!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
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

    .line 110
    sget v0, Lcom/google/glass/settings/ui/R$menu;->wink_settings_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 111
    iput-object p2, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->optionsMenu:Landroid/view/Menu;

    .line 112
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 114
    iput-object v1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 116
    :cond_0
    new-instance v0, Lcom/google/glass/settings/ui/WinkSettingsItemView$MenuUpdateTask;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/WinkSettingsItemView$MenuUpdateTask;-><init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;Lcom/google/glass/settings/ui/WinkSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 117
    iget-object v1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->menuUpdateTask:Landroid/os/AsyncTask;

    .line 118
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Void;

    .line 117
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public refreshSettingsUi()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 86
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 88
    iput-object v1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 90
    :cond_0
    new-instance v0, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;-><init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;Lcom/google/glass/settings/ui/WinkSettingsItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 91
    iget-object v1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 92
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Void;

    .line 91
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method
