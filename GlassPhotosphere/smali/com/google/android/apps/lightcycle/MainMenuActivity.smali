.class public Lcom/google/android/apps/lightcycle/MainMenuActivity;
.super Landroid/app/Activity;
.source "MainMenuActivity.java"


# static fields
.field private static final PREF_DB_INITIALIZED:Ljava/lang/String; = "dbInitialized"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private feedbackUtil:Lcom/google/android/apps/lightcycle/util/FeedbackUtil;

.field private fontUtil:Lcom/google/android/apps/lightcycle/util/FontUtil;

.field private mAnalyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/apps/lightcycle/MainMenuActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/MainMenuActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/apps/lightcycle/util/FeedbackUtil;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/util/FeedbackUtil;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity;->feedbackUtil:Lcom/google/android/apps/lightcycle/util/FeedbackUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/MainMenuActivity;)Lcom/google/android/apps/lightcycle/util/FeedbackUtil;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/MainMenuActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity;->feedbackUtil:Lcom/google/android/apps/lightcycle/util/FeedbackUtil;

    return-object v0
.end method

.method private initializeLocalStorageOnFirstStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-static {}, Lcom/google/android/apps/lightcycle/storage/StorageManagerFactory;->getStorageManager()Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-result-object v2

    .line 138
    .local v2, "storageManager":Lcom/google/android/apps/lightcycle/storage/StorageManager;
    invoke-interface {v2, p0}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->init(Landroid/content/Context;)V

    .line 140
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 141
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 142
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 143
    sget v4, Lcom/google/android/apps/lightcycle/R$string;->importing_existing_panos:I

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 144
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 146
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 148
    .local v0, "pm":Landroid/os/PowerManager;
    const v4, 0x20000006

    sget-object v5, Lcom/google/android/apps/lightcycle/MainMenuActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 150
    .local v3, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 151
    new-instance v4, Lcom/google/android/apps/lightcycle/MainMenuActivity$3;

    invoke-direct {v4, p0, v3, v1}, Lcom/google/android/apps/lightcycle/MainMenuActivity$3;-><init>(Lcom/google/android/apps/lightcycle/MainMenuActivity;Landroid/os/PowerManager$WakeLock;Landroid/app/ProgressDialog;)V

    invoke-interface {v2, v4, v1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->addExistingPanoramaSessions(Lcom/google/android/apps/lightcycle/util/Callback;Landroid/app/ProgressDialog;)V

    .line 158
    return-void
.end method

.method private setUpFeedbackButton(I)V
    .locals 3
    .param p1, "buttonId"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "button":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 125
    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity;->fontUtil:Lcom/google/android/apps/lightcycle/util/FontUtil;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/util/FontUtil;->getMainMenuFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    :cond_0
    new-instance v1, Lcom/google/android/apps/lightcycle/MainMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/MainMenuActivity$2;-><init>(Lcom/google/android/apps/lightcycle/MainMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method private setUpMenuButton(ILjava/lang/Class;)V
    .locals 3
    .param p1, "buttonId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "button":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 107
    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity;->fontUtil:Lcom/google/android/apps/lightcycle/util/FontUtil;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/util/FontUtil;->getMainMenuFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    :cond_0
    new-instance v1, Lcom/google/android/apps/lightcycle/MainMenuActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/lightcycle/MainMenuActivity$1;-><init>(Lcom/google/android/apps/lightcycle/MainMenuActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "Wingman detected."

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->finish()V

    .line 86
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget v1, Lcom/google/android/apps/lightcycle/R$layout;->main_menu:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->setContentView(I)V

    .line 59
    new-instance v1, Lcom/google/android/apps/lightcycle/util/FontUtil;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/util/FontUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity;->fontUtil:Lcom/google/android/apps/lightcycle/util/FontUtil;

    .line 62
    sget v1, Lcom/google/android/apps/lightcycle/R$id;->new_panorama:I

    const-class v2, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->setUpMenuButton(ILjava/lang/Class;)V

    .line 63
    sget v1, Lcom/google/android/apps/lightcycle/R$id;->my_gallery:I

    const-class v2, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->setUpMenuButton(ILjava/lang/Class;)V

    .line 64
    sget v1, Lcom/google/android/apps/lightcycle/R$id;->settings:I

    const-class v2, Lcom/google/android/apps/lightcycle/LightCyclePreferenceActivity;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->setUpMenuButton(ILjava/lang/Class;)V

    .line 65
    sget v1, Lcom/google/android/apps/lightcycle/R$id;->help_n_tips:I

    const-class v2, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->setUpMenuButton(ILjava/lang/Class;)V

    .line 66
    sget v1, Lcom/google/android/apps/lightcycle/R$id;->feedback:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->setUpFeedbackButton(I)V

    .line 71
    const-string v1, "showHelpOnStartUp"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showHelpOnStartUp"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_1
    const-string v1, "dbInitialized"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->initializeLocalStorageOnFirstStart()V

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dbInitialized"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    :cond_2
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity;->mAnalyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity;->mAnalyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->MAIN_MENU:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 92
    return-void
.end method
