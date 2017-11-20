.class public abstract Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;
.super Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
.source "BooleanDeveloperSettingCard.java"


# instance fields
.field private final settingTitleResId:I

.field private final userEventAction:Lcom/google/glass/userevent/UserEventAction;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;ILcom/google/glass/userevent/UserEventAction;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;
    .param p2, "developerSettingsHelper"    # Lcom/google/glass/settings/DeveloperSettingsHelper;
    .param p3, "settingTitleResId"    # I
    .param p4, "userEventAction"    # Lcom/google/glass/userevent/UserEventAction;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    .line 45
    iput p3, p0, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->settingTitleResId:I

    .line 46
    iput-object p4, p0, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->userEventAction:Lcom/google/glass/userevent/UserEventAction;

    .line 47
    return-void
.end method

.method private appendSettingStatus(Landroid/text/SpannableStringBuilder;)V
    .locals 9
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 120
    .local v5, "resources":Landroid/content/res/Resources;
    sget v7, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 121
    .local v1, "green":I
    sget v7, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 123
    .local v4, "red":I
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->isSettingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 124
    sget v7, Lcom/google/glass/settings/ui/R$string;->developer_setting_on_status:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "status":Ljava/lang/String;
    move v0, v1

    .line 131
    .local v0, "color":I
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 132
    .local v3, "lengthBeforeStatus":I
    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 134
    .local v2, "lengthAfterStatus":I
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    invoke-virtual {p1, v7, v3, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 136
    return-void

    .line 127
    .end local v0    # "color":I
    .end local v2    # "lengthAfterStatus":I
    .end local v3    # "lengthBeforeStatus":I
    .end local v6    # "status":Ljava/lang/String;
    :cond_0
    sget v7, Lcom/google/glass/settings/ui/R$string;->developer_setting_off_status:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    .restart local v6    # "status":Ljava/lang/String;
    move v0, v4

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method private updateSettingAndShowDialog(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->setSettingEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->userEventAction:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, v2, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v2

    const-string v3, "s"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "m"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ui"

    aput-object v6, v4, v5

    .line 100
    invoke-static {v3, v0, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 107
    if-eqz p1, :cond_1

    sget v0, Lcom/google/glass/settings/ui/R$string;->developer_setting_enabled:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->showConfirmationAndRefresh(I)V

    .line 109
    return-void

    .line 99
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 107
    :cond_1
    sget v0, Lcom/google/glass/settings/ui/R$string;->developer_setting_disabled:I

    goto :goto_1
.end method


# virtual methods
.method protected abstract isSettingEnabled()Z
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 72
    .local v0, "id":I
    sget v3, Lcom/google/glass/settings/ui/R$id;->developer_setting_enable:I

    if-ne v0, v3, :cond_0

    .line 73
    invoke-direct {p0, v1}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->updateSettingAndShowDialog(Z)V

    .line 79
    :goto_0
    return v1

    .line 75
    :cond_0
    sget v3, Lcom/google/glass/settings/ui/R$id;->developer_setting_disable:I

    if-ne v0, v3, :cond_1

    .line 76
    invoke-direct {p0, v2}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->updateSettingAndShowDialog(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "inflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 61
    sget v1, Lcom/google/glass/settings/ui/R$menu;->developer_setting_boolean_menu:I

    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->isSettingEnabled()Z

    move-result v0

    .line 64
    .local v0, "enabled":Z
    sget v1, Lcom/google/glass/settings/ui/R$id;->developer_setting_enable:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 65
    sget v1, Lcom/google/glass/settings/ui/R$id;->developer_setting_disable:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 66
    return v2

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract setSettingEnabled(Z)V
.end method

.method public update()V
    .locals 4

    .prologue
    .line 51
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->settingTitleResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    .line 53
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 54
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->appendSettingStatus(Landroid/text/SpannableStringBuilder;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;->getCard()Lcom/google/android/glass/widget/CardBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/glass/widget/CardBuilder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 57
    return-void
.end method
