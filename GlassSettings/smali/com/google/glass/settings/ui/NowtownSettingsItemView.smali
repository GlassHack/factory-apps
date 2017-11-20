.class public Lcom/google/glass/settings/ui/NowtownSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "NowtownSettingsItemView.java"


# static fields
.field private static final NOWTOWN_HOME_ACTIVITY:Ljava/lang/String; = "com.google.glass.nowtown.home.HomeActivity"

.field private static final NOWTOWN_PACKAGE_NAME:Ljava/lang/String; = "com.google.glass.nowtown"

.field private static final TIMELINE_HOME_ACTIVITY:Ljava/lang/String; = "com.google.glass.home.timeline.MainTimelineActivity"

.field private static final TIMELINE_PACKAGE_NAME:Ljava/lang/String; = "com.google.glass.home"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private isNowtownEnabled:Z

.field private readSettingsTask:Landroid/os/AsyncTask;
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

.field private updateSettingsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object p1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->context:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$layout;->nowtown_settings_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, "title":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$string;->nowtown_settings_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "detailTextView":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$string;->nowtown_reboot_required:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->refreshSettingsUi()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/settings/ui/NowtownSettingsItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NowtownSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->updateNowtownEnabledStatusUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private setPreferredHome(Z)V
    .locals 4
    .param p1, "enableNowtown"    # Z

    .prologue
    const/4 v3, 0x0

    .line 155
    if-eqz p1, :cond_0

    .line 156
    sget-object v0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Setting NowTown to be preferred home activity."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :goto_0
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    .line 162
    new-instance v0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;-><init>(Lcom/google/glass/settings/ui/NowtownSettingsItemView;Z)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->updateSettingsTask:Landroid/os/AsyncTask;

    .line 200
    iget-object v1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->updateSettingsTask:Landroid/os/AsyncTask;

    .line 201
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Void;

    .line 200
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    return-void

    .line 158
    :cond_0
    sget-object v0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Setting Timeline to be preferred home activity."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateNowtownEnabledStatusUI()V
    .locals 3

    .prologue
    .line 110
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, "statusTextView":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    if-eqz v1, :cond_0

    .line 112
    sget v1, Lcom/google/glass/settings/ui/R$string;->nowtown_on_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    :goto_0
    iget-boolean v1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/google/glass/settings/ui/R$string;->nowtown_on_status:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    return-void

    .line 115
    :cond_0
    sget v1, Lcom/google/glass/settings/ui/R$string;->nowtown_off_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 118
    :cond_1
    sget v1, Lcom/google/glass/settings/ui/R$string;->nowtown_off_status:I

    goto :goto_1
.end method


# virtual methods
.method isNowtownEnabled()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->readSettingsTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->readSettingsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->readSettingsTask:Landroid/os/AsyncTask;

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 107
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 134
    .local v1, "selectedItemId":I
    sget v3, Lcom/google/glass/settings/ui/R$id;->nowtown_turn_on:I

    if-ne v1, v3, :cond_0

    .line 135
    invoke-direct {p0, v2}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->setPreferredHome(Z)V

    .line 150
    :goto_0
    return v2

    .line 137
    :cond_0
    sget v3, Lcom/google/glass/settings/ui/R$id;->nowtown_turn_off:I

    if-ne v1, v3, :cond_1

    .line 138
    invoke-direct {p0, v4}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->setPreferredHome(Z)V

    goto :goto_0

    .line 140
    :cond_1
    sget v3, Lcom/google/glass/settings/ui/R$id;->nowtown_clear:I

    if-ne v1, v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 145
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, "com.google.glass.nowtown"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 146
    const-string v3, "com.google.glass.home"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    sget-object v2, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unknown menu item is tapped!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
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

    .line 124
    sget v0, Lcom/google/glass/settings/ui/R$menu;->nowtown_settings_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    sget v0, Lcom/google/glass/settings/ui/R$id;->nowtown_turn_on:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    sget v0, Lcom/google/glass/settings/ui/R$id;->nowtown_turn_off:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    sget v0, Lcom/google/glass/settings/ui/R$id;->nowtown_clear:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    return v1

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshSettingsUi()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 64
    new-instance v0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->readSettingsTask:Landroid/os/AsyncTask;

    .line 84
    iget-object v1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->readSettingsTask:Landroid/os/AsyncTask;

    .line 85
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 84
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method setStateForTest(Z)V
    .locals 0
    .param p1, "isNowtownEnabled"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 91
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->isNowtownEnabled:Z

    .line 92
    invoke-direct {p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->updateNowtownEnabledStatusUI()V

    .line 93
    return-void
.end method
