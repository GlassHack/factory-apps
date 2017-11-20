.class public Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;
.super Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
.source "AnimationScaleSettingCard.java"


# static fields
.field private static final SCALE_FACTOR_TEXT_SIZE:I = 0x64


# instance fields
.field private final animationScaleHelper:Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

.field private final animationScales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/AnimationScale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V
    .locals 2
    .param p1, "activity"    # Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;
    .param p2, "developerSettingsHelper"    # Lcom/google/glass/settings/DeveloperSettingsHelper;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    .line 40
    new-instance v0, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

    invoke-virtual {p1}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->animationScaleHelper:Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->animationScaleHelper:Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->getScales()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->animationScales:Ljava/util/List;

    .line 42
    return-void
.end method

.method private appendSettingStatus(Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v6, 0x21

    .line 112
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->animationScaleHelper:Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->getCurrentScale()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->findScale(F)Lcom/google/glass/settings/ui/developer/AnimationScale;

    move-result-object v4

    iget-object v3, v4, Lcom/google/glass/settings/ui/developer/AnimationScale;->title:Ljava/lang/String;

    .line 113
    .local v3, "status":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 114
    .local v2, "lengthBeforeStatus":I
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 115
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 116
    .local v1, "lengthAfterStatus":I
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x1060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 117
    .local v0, "darkerGray":I
    new-instance v4, Landroid/text/style/TypefaceSpan;

    const-string v5, "sans-serif-thin"

    invoke-direct {v4, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 119
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 121
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 123
    return-void
.end method

.method private getCurrentScale()F
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->getDeveloperSettingsHelper()Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->getWindowAnimationScale()F

    move-result v0

    return v0
.end method

.method private updateSettingAndShowDialog(F)V
    .locals 8
    .param p1, "scale"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->getDeveloperSettingsHelper()Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setAllAnimationScales(F)V

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_ANIMATION_TIME_SCALE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, v2, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v1

    const-string v2, "s"

    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "m"

    aput-object v5, v4, v6

    const-string v5, "ui"

    aput-object v5, v4, v7

    .line 98
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 104
    sget v0, Lcom/google/glass/settings/ui/R$string;->developer_setting_updated:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->showConfirmationAndRefresh(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 73
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->animationScales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->animationScales:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/settings/ui/developer/AnimationScale;

    iget v1, v1, Lcom/google/glass/settings/ui/developer/AnimationScale;->value:F

    invoke-direct {p0, v1}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->updateSettingAndShowDialog(F)V

    .line 75
    const/4 v1, 0x1

    .line 77
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 8
    .param p1, "inflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x0

    .line 57
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->animationScales:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/settings/ui/developer/AnimationScale;

    .line 58
    .local v1, "scale":Lcom/google/glass/settings/ui/developer/AnimationScale;
    iget v5, v1, Lcom/google/glass/settings/ui/developer/AnimationScale;->id:I

    iget-object v6, v1, Lcom/google/glass/settings/ui/developer/AnimationScale;->title:Ljava/lang/String;

    invoke-interface {p2, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 59
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v5, v1, Lcom/google/glass/settings/ui/developer/AnimationScale;->description:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/google/android/glass/view/MenuUtils;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    .end local v1    # "scale":Lcom/google/glass/settings/ui/developer/AnimationScale;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->animationScaleHelper:Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->getCurrentScale()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->findScale(F)Lcom/google/glass/settings/ui/developer/AnimationScale;

    move-result-object v4

    iget v2, v4, Lcom/google/glass/settings/ui/developer/AnimationScale;->id:I

    .line 64
    .local v2, "selectedIndex":I
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 65
    .local v3, "selectedItem":Landroid/view/MenuItem;
    invoke-static {p2, v3}, Lcom/google/android/glass/view/MenuUtils;->setInitialMenuItem(Landroid/view/Menu;Landroid/view/MenuItem;)V

    .line 67
    const/4 v4, 0x1

    return v4
.end method

.method public update()V
    .locals 4

    .prologue
    .line 46
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->developer_setting_animation_scale:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    .line 49
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 50
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->appendSettingStatus(Landroid/text/SpannableStringBuilder;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;->getCard()Lcom/google/android/glass/widget/CardBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/glass/widget/CardBuilder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 53
    return-void
.end method
