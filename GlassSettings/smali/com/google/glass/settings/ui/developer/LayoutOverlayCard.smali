.class public Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;
.super Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
.source "LayoutOverlayCard.java"


# static fields
.field static final SELECT_LAYOUT_REQUEST:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private currentLayoutOverlayName:Ljava/lang/String;

.field private final settingsContract:Lcom/google/glass/util/SettingsContract;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V
    .locals 1
    .param p1, "activity"    # Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;
    .param p2, "developerSettingsHelper"    # Lcom/google/glass/settings/DeveloperSettingsHelper;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    .line 49
    invoke-static {}, Lcom/google/glass/util/SettingsContractProvider;->getInstance()Lcom/google/glass/util/SettingsContractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsContractProvider;->get()Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->settingsContract:Lcom/google/glass/util/SettingsContract;

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->queryCurrentLayoutOverlay()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;)Lcom/google/glass/util/SettingsContract;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->settingsContract:Lcom/google/glass/util/SettingsContract;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->currentLayoutOverlayName:Ljava/lang/String;

    return-object p1
.end method

.method private appendSettingStatus(Landroid/text/SpannableStringBuilder;)V
    .locals 10
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 164
    .local v6, "resources":Landroid/content/res/Resources;
    sget v8, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 165
    .local v1, "green":I
    sget v8, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 170
    .local v5, "red":I
    sget-object v8, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->OVERLAY_MAP:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->currentLayoutOverlayName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 171
    .local v2, "layoutOverlay":Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->getLabelResId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "status":Ljava/lang/String;
    move v0, v1

    .line 179
    .local v0, "color":I
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 180
    .local v4, "lengthBeforeStatus":I
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 181
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 182
    .local v3, "lengthAfterStatus":I
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {p1, v8, v4, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 184
    return-void

    .line 175
    .end local v0    # "color":I
    .end local v3    # "lengthAfterStatus":I
    .end local v4    # "lengthBeforeStatus":I
    .end local v7    # "status":Ljava/lang/String;
    :cond_0
    sget v8, Lcom/google/glass/settings/ui/R$string;->developer_setting_off_status:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 176
    .restart local v7    # "status":Ljava/lang/String;
    move v0, v5

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method private disableLayoutOverlay()V
    .locals 4

    .prologue
    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->currentLayoutOverlayName:Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hide"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->logUserEvent()V

    .line 130
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, v3, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->developer_setting_disabled:I

    .line 131
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 132
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$1;

    invoke-direct {v2, p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$1;-><init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;)V

    .line 134
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 142
    return-void
.end method

.method private logUserEvent()V
    .locals 7

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_LAYOUT_OVERLAY_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, v2, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v2

    const-string v3, "s"

    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->currentLayoutOverlayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->currentLayoutOverlayName:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "m"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ui"

    aput-object v6, v4, v5

    .line 151
    invoke-static {v3, v0, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 156
    return-void

    .line 150
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 96
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "show"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 105
    const-string v2, "name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "overlayName":Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->currentLayoutOverlayName:Ljava/lang/String;

    .line 107
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->logUserEvent()V

    .line 111
    .end local v1    # "overlayName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->refresh()V

    .line 114
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 79
    .local v0, "id":I
    sget v3, Lcom/google/glass/settings/ui/R$id;->developer_setting_enable:I

    if-eq v0, v3, :cond_0

    sget v3, Lcom/google/glass/settings/ui/R$id;->developer_setting_change_overlay:I

    if-ne v0, v3, :cond_1

    .line 81
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/google/glass/settings/ui/developer/LayoutOverlayActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v1, "layoutOverlayIntent":Landroid/content/Intent;
    const-string v3, "name"

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->currentLayoutOverlayName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 91
    .end local v1    # "layoutOverlayIntent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 87
    :cond_1
    sget v3, Lcom/google/glass/settings/ui/R$id;->developer_setting_disable:I

    if-ne v0, v3, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->disableLayoutOverlay()V

    goto :goto_0

    .line 91
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "inflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    sget v3, Lcom/google/glass/settings/ui/R$menu;->developer_setting_overlay_menu:I

    invoke-virtual {p1, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    iget-object v3, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->currentLayoutOverlayName:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v0, v1

    .line 69
    .local v0, "overlayVisible":Z
    :goto_0
    sget v3, Lcom/google/glass/settings/ui/R$id;->developer_setting_enable:I

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 70
    sget v2, Lcom/google/glass/settings/ui/R$id;->developer_setting_change_overlay:I

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 71
    sget v2, Lcom/google/glass/settings/ui/R$id;->developer_setting_disable:I

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 73
    return v1

    .end local v0    # "overlayVisible":Z
    :cond_1
    move v0, v2

    .line 68
    goto :goto_0
.end method

.method queryCurrentLayoutOverlay()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 189
    new-instance v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;-><init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;)V

    .line 204
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 203
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 55
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->developer_setting_layout_overlay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    .line 58
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 59
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->appendSettingStatus(Landroid/text/SpannableStringBuilder;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getCard()Lcom/google/android/glass/widget/CardBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/glass/widget/CardBuilder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 62
    return-void
.end method
