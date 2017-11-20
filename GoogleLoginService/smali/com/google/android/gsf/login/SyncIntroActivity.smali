.class public Lcom/google/android/gsf/login/SyncIntroActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SyncIntroActivity.java"


# static fields
.field private static final RESTORE_INTENT:Landroid/content/Intent;


# instance fields
.field private mAgreeBackup:Landroid/widget/CompoundButton;

.field private mAgreeRestore:Landroid/widget/CompoundButton;

.field private final mBackupServiceConnection:Landroid/content/ServiceConnection;

.field protected mHandler:Landroid/os/Handler;

.field private mNextButton:Landroid/view/View;

.field private mPerformBackup:Z

.field private mPrimaryMessage:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mState:I

.field private mSyncSettings:Landroid/widget/ListView;

.field private mTopDivider:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 280
    new-instance v0, Lcom/google/android/gsf/login/SyncIntroActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/SyncIntroActivity$1;-><init>(Lcom/google/android/gsf/login/SyncIntroActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    .line 295
    new-instance v0, Lcom/google/android/gsf/login/SyncIntroActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/SyncIntroActivity$2;-><init>(Lcom/google/android/gsf/login/SyncIntroActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/SyncIntroActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/SyncIntroActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->onRestoreDone()V

    return-void
.end method

.method protected static enableBackup(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.backup.BackupEnabler"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "bI":Landroid/content/Intent;
    const-string v3, "BACKUP_ENABLE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const-string v3, "com.google.android.backuptransport"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    :try_start_0
    const-string v3, "GLSActivity"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enabling backup with intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    .end local p1    # "enable":Z
    :goto_0
    return p1

    .line 437
    .restart local p1    # "enable":Z
    :catch_0
    move-exception v1

    .line 438
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not enable backup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 439
    goto :goto_0

    .line 440
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 441
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not enable backup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 442
    goto :goto_0
.end method

.method private onRestoreDone()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 451
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setupSyncEnableBackup()V

    .line 452
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 453
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    .line 454
    return-void
.end method

.method private showRestoringScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 457
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    const v1, 0x7f0700f5

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->setTitle(I)V

    .line 460
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    const v2, 0x7f0700f6

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    const v1, 0x7f08005f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 467
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    .local v0, "backupView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "GLSActivity"

    const-string v1, "ignore back key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v12, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isFirstAccount()Z

    move-result v3

    .line 111
    .local v3, "firstAccount":Z
    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mIsNewAccount:Z

    .line 112
    .local v0, "accountWasNewlyCreated":Z
    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v6, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->backupPackageExists()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_1

    move v1, v7

    .line 115
    .local v1, "allowRestore":Z
    :goto_0
    const-string v6, "GLSActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allowRestore = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mSetupWizard = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v11, v11, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", accountWasNewlyCreated = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", firstAccount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", primaryUser = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isPrimaryUser()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isPrimaryUser()Z

    move-result v6

    if-nez v6, :cond_2

    .line 121
    const-string v6, "GLSActivity"

    const-string v7, "First account for secondary user; enabling sync; backup/restore not yet available"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-boolean v8, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPerformBackup:Z

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setupSyncEnableBackup()V

    .line 125
    invoke-virtual {p0, v12}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    .line 197
    :cond_0
    :goto_1
    return-void

    .end local v1    # "allowRestore":Z
    :cond_1
    move v1, v8

    .line 112
    goto :goto_0

    .line 130
    .restart local v1    # "allowRestore":Z
    :cond_2
    const v6, 0x7f030020

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->setContentView(I)V

    .line 132
    const v6, 0x7f08005e

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPrimaryMessage:Landroid/widget/TextView;

    .line 133
    const v6, 0x7f08000f

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mNextButton:Landroid/view/View;

    .line 134
    const v6, 0x7f080064

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    .line 135
    const v6, 0x7f080042

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 136
    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mTopDivider:Landroid/view/View;

    .line 138
    const v6, 0x7f080063

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    .line 139
    iget-object v10, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_6

    move v6, v8

    :goto_2
    invoke-virtual {v10, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 141
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isPrimaryUser()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 142
    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 143
    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 144
    if-eqz v0, :cond_7

    .line 145
    const v6, 0x7f070117

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->setTitle(I)V

    .line 149
    :goto_3
    if-nez v1, :cond_3

    .line 150
    const v6, 0x7f080062

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f0700f4

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const v9, 0x7f080060

    invoke-virtual {v6, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/ListFragment;

    .line 166
    .local v4, "fragment":Landroid/support/v4/app/ListFragment;
    invoke-virtual {v4}, Landroid/support/v4/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    .line 169
    const v6, 0x7f08005f

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 170
    .local v5, "layout":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_4

    const/4 v8, 0x4

    :cond_4
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gsf/login/SyncIntroActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 174
    if-eqz p1, :cond_5

    .line 175
    const-string v6, "instance_state"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 176
    iget v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    if-ne v6, v7, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->performRestore()V

    .line 183
    :cond_5
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v6, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mShownGoogleServices:Z

    if-eqz v6, :cond_0

    .line 184
    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v6, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformBackup:Z

    iput-boolean v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPerformBackup:Z

    .line 185
    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v6, v6, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformRestore:Z

    if-eqz v6, :cond_9

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->performRestore()V

    goto/16 :goto_1

    .end local v4    # "fragment":Landroid/support/v4/app/ListFragment;
    .end local v5    # "layout":Landroid/widget/LinearLayout;
    :cond_6
    move v6, v9

    .line 139
    goto :goto_2

    .line 147
    :cond_7
    const v6, 0x7f070116

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->setTitle(I)V

    goto :goto_3

    .line 154
    :cond_8
    iget-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 155
    const v6, 0x7f080013

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/SyncIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v2, "backupView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 157
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 160
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    goto :goto_4

    .line 191
    .end local v2    # "backupView":Landroid/view/View;
    .restart local v4    # "fragment":Landroid/support/v4/app/ListFragment;
    .restart local v5    # "layout":Landroid/widget/LinearLayout;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setupSyncEnableBackup()V

    .line 192
    invoke-virtual {p0, v12}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onDestroy()V

    .line 209
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRequiresScroll()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onRequiresScroll()V

    .line 237
    iget v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    const-string v0, "instance_state"

    iget v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method public onScrolledToBottom()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onScrolledToBottom()V

    .line 228
    iget v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public performRestore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    .line 318
    invoke-direct {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->showRestoringScreen()V

    .line 322
    sget-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mBackupServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    const-string v0, "GLSActivity"

    const-string v1, "Could not connect to restore service... skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    const-string v0, "GLSActivity"

    const-string v1, "Starting restore service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    sget-object v0, Lcom/google/android/gsf/login/SyncIntroActivity;->RESTORE_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setBackupAccount(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 407
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.backup.SetBackupAccount"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "backupAccount"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 409
    const-string v2, "backupUserHandle"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    const-string v2, "com.google.android.backuptransport"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    :try_start_0
    const-string v2, "GLSActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting backup account with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and extras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    const/4 v2, 0x1

    .line 420
    :goto_0
    return v2

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not enable backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->log(Ljava/lang/String;)V

    .line 420
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setupSyncEnableBackup()V
    .locals 20

    .prologue
    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 344
    .local v11, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.google"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v2, "account":Landroid/accounts/Account;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isFirstAccount()Z

    move-result v12

    .line 348
    .local v12, "isFirstAccount":Z
    if-eqz v12, :cond_3

    .line 352
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v16

    .line 354
    .local v16, "syncAdapters":[Landroid/content/SyncAdapterType;
    move-object/from16 v3, v16

    .local v3, "arr$":[Landroid/content/SyncAdapterType;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v14, :cond_0

    aget-object v15, v3, v10

    .line 355
    .local v15, "sa":Landroid/content/SyncAdapterType;
    iget-object v0, v15, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 354
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 357
    .end local v15    # "sa":Landroid/content/SyncAdapterType;
    :cond_0
    sget-object v17, Lcom/google/android/gsf/login/SyncIntroActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSyncEnabledCount:I

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isPrimaryUser()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->setBackupAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    .line 388
    .end local v3    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_1
    :goto_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v8, "extras":Landroid/os/Bundle;
    const-string v17, "expedited"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    const-string v17, "com.google.android.apps.magazines"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 391
    const-string v17, "com.google.android.apps.books"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 392
    const-string v17, "com.google.android.videos.sync"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 393
    const-string v17, "com.google.android.music.MusicContent"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->isPrimaryUser()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPerformBackup:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 397
    sget-object v17, Lcom/google/android/gsf/login/SyncIntroActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mBackupUserSet:Ljava/lang/String;

    .line 398
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->enableBackup(Landroid/content/Context;Z)Z

    .line 404
    :cond_2
    :goto_2
    return-void

    .line 364
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getCount()I

    move-result v6

    .line 365
    .local v6, "count":I
    const/4 v7, 0x0

    .line 366
    .local v7, "enabledCnt":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v6, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .line 369
    .local v13, "item":Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    invoke-virtual {v13}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->getSyncAdapterType()Landroid/content/SyncAdapterType;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 370
    .local v4, "authority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/login/SyncIntroActivity;->mSyncSettings:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    .line 371
    .local v5, "checked":Z
    const-string v17, "GLSActivity"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 372
    const-string v17, "GLSActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Setting auto sync for account="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " authority="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_4
    invoke-static {v2, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 376
    const-string v17, "GLSActivity"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 377
    const-string v17, "GLSActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Requesting sync for account="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " authority="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_5
    if-eqz v5, :cond_6

    .line 381
    add-int/lit8 v7, v7, 0x1

    .line 366
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 384
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "checked":Z
    .end local v13    # "item":Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    :cond_7
    sget-object v17, Lcom/google/android/gsf/login/SyncIntroActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    move-object/from16 v0, v17

    iput v7, v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSyncEnabledCount:I

    goto/16 :goto_1

    .line 399
    .end local v6    # "count":I
    .end local v7    # "enabledCnt":I
    .end local v9    # "i":I
    .restart local v8    # "extras":Landroid/os/Bundle;
    :cond_8
    if-eqz v12, :cond_2

    .line 401
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/SyncIntroActivity;->enableBackup(Landroid/content/Context;Z)Z

    goto/16 :goto_2
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mPerformBackup:Z

    .line 250
    iget v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 258
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeBackup:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity;->mAgreeRestore:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->performRestore()V

    .line 278
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 248
    goto :goto_0

    .line 253
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    goto :goto_1

    .line 271
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->setupSyncEnableBackup()V

    .line 272
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SyncIntroActivity;->setResult(I)V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SyncIntroActivity;->finish()V

    goto :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
