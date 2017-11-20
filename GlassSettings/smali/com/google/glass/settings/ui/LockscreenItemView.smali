.class public final Lcom/google/glass/settings/ui/LockscreenItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "LockscreenItemView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private isDonDoffEnabled:Z

.field private isLockscreenEnabled:Z

.field private final lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

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
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/LockscreenItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 40
    const/4 v4, 0x0

    invoke-direct {p0, p1, v5, v4}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object v5, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/google/glass/settings/ui/R$layout;->lockscreen_settings_item:I

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget v4, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v4}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, "header":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/settings/ui/R$string;->lockscreen_settings_title:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 46
    sget v4, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v4}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    .local v2, "enabled":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/settings/ui/R$string;->lockscreen_settings_enabled:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    sget v4, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v4}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "disabled":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/settings/ui/R$string;->lockscreen_settings_disabled:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    sget v4, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v4}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, "donDoffHint":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/settings/ui/R$string;->lockscreen_don_doff_hint:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 57
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-static {}, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->getInstance()Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->get()Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    .line 60
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/settings/ui/LockscreenItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/settings/ui/LockscreenItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LockscreenItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/glass/settings/ui/LockscreenItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LockscreenItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isDonDoffEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/LockscreenItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LockscreenItemView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LockscreenItemView;->update()V

    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 108
    sget-object v5, Lcom/google/glass/settings/ui/LockscreenItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "isLockscreenEnabled=%s, isDonDoffEnabled=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-boolean v10, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isDonDoffEnabled:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v5, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-boolean v5, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    if-eqz v5, :cond_0

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->ic_screen_lock_on_150:I

    .line 113
    .local v4, "iconToShow":I
    :goto_0
    sget v5, Lcom/google/glass/settings/ui/R$id;->icon:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 114
    .local v3, "icon":Landroid/widget/ImageView;
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    sget v5, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 117
    .local v2, "enabledText":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    sget v5, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, "disabledText":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    if-eqz v5, :cond_2

    move v5, v7

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    sget v5, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, "donDoffHintText":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    if-eqz v5, :cond_4

    .line 124
    iget-boolean v5, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isDonDoffEnabled:Z

    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :goto_4
    sget-object v5, Lcom/google/glass/settings/ui/LockscreenItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Update complete."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void

    .line 110
    .end local v0    # "disabledText":Landroid/widget/TextView;
    .end local v1    # "donDoffHintText":Landroid/widget/TextView;
    .end local v2    # "enabledText":Landroid/widget/TextView;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "iconToShow":I
    :cond_0
    sget v4, Lcom/google/glass/settings/ui/R$drawable;->ic_screen_lock_off_150:I

    goto :goto_0

    .restart local v2    # "enabledText":Landroid/widget/TextView;
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "iconToShow":I
    :cond_1
    move v5, v7

    .line 117
    goto :goto_1

    .restart local v0    # "disabledText":Landroid/widget/TextView;
    :cond_2
    move v5, v6

    .line 120
    goto :goto_2

    .restart local v1    # "donDoffHintText":Landroid/widget/TextView;
    :cond_3
    move v7, v6

    .line 124
    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 148
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/16 v6, 0x66

    const/4 v3, 0x1

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 153
    .local v1, "selectedItemId":I
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LockscreenItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 155
    .local v0, "activityContext":Landroid/app/Activity;
    sget v2, Lcom/google/glass/settings/ui/R$id;->lockscreen_change_the_pattern_menu_item:I

    if-ne v1, v2, :cond_0

    .line 160
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.glass.action.LOCKSCREEN_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "enable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v3

    .line 183
    :goto_0
    return v2

    .line 164
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$id;->lockscreen_turn_on_menu_item:I

    if-ne v1, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    const/16 v4, 0x65

    invoke-virtual {v2, v0, v4}, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->fetchRecoveryCode(Landroid/app/Activity;I)V

    move v2, v3

    .line 170
    goto :goto_0

    .line 171
    :cond_1
    sget v2, Lcom/google/glass/settings/ui/R$id;->lockscreen_turn_off_menu_item:I

    if-ne v1, v2, :cond_2

    .line 172
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.glass.action.LOCKSCREEN_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "enable"

    const/4 v5, 0x0

    .line 173
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v3

    .line 175
    goto :goto_0

    .line 176
    :cond_2
    sget v2, Lcom/google/glass/settings/ui/R$id;->lockscreen_show_tutorial_menu_item:I

    if-ne v1, v2, :cond_3

    .line 178
    iget-object v4, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LockscreenItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v5, 0x67

    invoke-virtual {v4, v2, v5}, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->showTutorialVideo(Landroid/app/Activity;I)V

    move v2, v3

    .line 180
    goto :goto_0

    .line 183
    :cond_3
    invoke-super {p0, p1}, Lcom/google/glass/settings/ui/SettingsCard;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 3
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    const/4 v1, 0x1

    .line 134
    sget v0, Lcom/google/glass/settings/ui/R$menu;->lockscreen_settings_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    sget v0, Lcom/google/glass/settings/ui/R$id;->lockscreen_change_the_pattern_menu_item:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    sget v0, Lcom/google/glass/settings/ui/R$id;->lockscreen_turn_on_menu_item:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 139
    sget v0, Lcom/google/glass/settings/ui/R$id;->lockscreen_turn_off_menu_item:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    return v1

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshSettingsUi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 73
    sget-object v0, Lcom/google/glass/settings/ui/LockscreenItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "refreshSettingsUi triggered. Updating views."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/google/glass/settings/ui/LockscreenItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LockscreenItemView$1;-><init>(Lcom/google/glass/settings/ui/LockscreenItemView;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 103
    iget-object v1, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->settingsUpdateTask:Landroid/os/AsyncTask;

    .line 104
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Void;

    .line 103
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method

.method setStateForTest(ZZ)V
    .locals 0
    .param p1, "isLockscreenEnabled"    # Z
    .param p2, "isDonDoffEnabled"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 65
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isLockscreenEnabled:Z

    .line 66
    iput-boolean p2, p0, Lcom/google/glass/settings/ui/LockscreenItemView;->isDonDoffEnabled:Z

    .line 67
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LockscreenItemView;->update()V

    .line 68
    return-void
.end method
