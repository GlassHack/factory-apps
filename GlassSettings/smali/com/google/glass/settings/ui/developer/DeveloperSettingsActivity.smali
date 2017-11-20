.class public Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "DeveloperSettingsActivity.java"


# instance fields
.field private developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private scroller:Lcom/google/android/glass/widget/CardScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private getDeveloperSettingsCards()Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/developer/KeepScreenOnWhileChargingCard;

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/ui/developer/KeepScreenOnWhileChargingCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/developer/ShowLayoutBoundsCard;

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/ui/developer/ShowLayoutBoundsCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/developer/ShowGpuOverdrawCard;

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/ui/developer/ShowGpuOverdrawCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/ui/developer/AnimationScaleSettingCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedCard()Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->getSelectedCard()Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    move-result-object v0

    .line 103
    .local v0, "card":Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate() [savedInstanceState=%s]."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->getInstance()Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    .line 36
    sget v0, Lcom/google/glass/settings/ui/R$id;->scroller:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 37
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v4}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;

    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->getDeveloperSettingsCards()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 40
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity$1;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->getSelectedCard()Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    move-result-object v0

    .line 96
    .local v0, "card":Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPauseInternal()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 57
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 58
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 81
    invoke-direct {p0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->getSelectedCard()Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    move-result-object v0

    .line 82
    .local v0, "card":Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
    if-nez v0, :cond_0

    .line 83
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 90
    :goto_0
    return v2

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 90
    .local v1, "prepared":Z
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResumeInternal()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 51
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 52
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/google/glass/settings/ui/R$layout;->developer_settings_activity:I

    return v0
.end method

.method public refreshCards()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
