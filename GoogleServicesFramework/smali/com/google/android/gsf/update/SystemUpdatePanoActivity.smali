.class public Lcom/google/android/gsf/update/SystemUpdatePanoActivity;
.super Lcom/google/android/pano/dialog/DialogActivity;
.source "SystemUpdatePanoActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static volatile sIsActivityUp:Z


# instance fields
.field private mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mContentFragment:Lcom/google/android/gsf/update/SystemUpdateContentFragment;

.field private mCountdownEnd:J

.field private mCountdownStopTime:J

.field private mCountdownUrl:Ljava/lang/String;

.field private mDownloadPercent:I

.field private mDownloadUpdate:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInstallPending:Z

.field private mLastBatteryState:I

.field private mLastCheckinTime:J

.field private mLastMobile:Z

.field private mLastRoaming:Z

.field private mLastStatus:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRes:Landroid/content/res/Resources;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupWizard:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mUpdateAction:Lcom/google/android/pano/dialog/Action;

.field private mVerifyUpdate:Ljava/lang/Runnable;

.field private mWatcher:Lcom/google/android/gsf/update/StateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->sIsActivityUp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogActivity;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastMobile:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mDownloadPercent:I

    .line 75
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 78
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 97
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mInstallPending:Z

    .line 103
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownUrl:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$1;-><init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;-><init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    .line 301
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;-><init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mDownloadUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownStopTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->refreshStatus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastStatus:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Lcom/google/android/gsf/update/SystemUpdateContentFragment;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mContentFragment:Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mDownloadPercent:I

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mDownloadPercent:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdatePanoActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->updateCountdownMessage(JZ)V

    return-void
.end method

.method private refreshForSetupWizardDownload()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 378
    const v0, 0x7f0d0028

    const v1, 0x7f090031

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 379
    const v0, 0x7f0d001b

    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/CharSequence;

    const-string v3, "5"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 384
    invoke-direct {p0, v5}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateActionEnable(Z)V

    .line 385
    const v0, 0x7f0d0063

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 386
    return-void
.end method

.method private refreshForSetupWizardRestart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 389
    const v0, 0x7f0d0028

    const v1, 0x7f090033

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 390
    const v0, 0x7f0d001b

    const v1, 0x7f090034

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateActionEnable(Z)V

    .line 392
    const v0, 0x7f0d0063

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 393
    return-void
.end method

.method private refreshStatus(Z)V
    .locals 18
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "status"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 399
    .local v10, "status":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "download_mobile"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 400
    .local v8, "mobile":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v13}, Lcom/google/android/gsf/update/StateWatcher;->getBatteryState()I

    move-result v5

    .line 401
    .local v5, "batteryState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v13}, Lcom/google/android/gsf/update/StateWatcher;->isNetworkRoaming()Z

    move-result v9

    .line 402
    .local v9, "roaming":Z
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/checkin/CheckinService;->getLastCheckinSuccessTime(Landroid/content/Context;)J

    move-result-wide v6

    .line 403
    .local v6, "lastCheckinTime":J
    const-string v13, "SystemUpdatePanoActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "status="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mobile="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " batteryState="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " roaming="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lastCheckinTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mSetupWizard="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSetupWizard:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastStatus:I

    if-ne v10, v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastMobile:Z

    if-ne v8, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastBatteryState:I

    if-ne v5, v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastRoaming:Z

    if-ne v9, v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastCheckinTime:J

    cmp-long v13, v6, v13

    if-nez v13, :cond_0

    .line 572
    :goto_0
    return-void

    .line 412
    :cond_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastStatus:I

    .line 413
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastMobile:Z

    .line 414
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastBatteryState:I

    .line 415
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastRoaming:Z

    .line 416
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastCheckinTime:J

    .line 423
    const/4 v13, 0x5

    if-ne v10, v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mInstallPending:Z

    if-eqz v13, :cond_1

    .line 424
    const-string v13, "SystemUpdatePanoActivity"

    const-string v14, "skipping refresh; about to reboot"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_1
    const/4 v13, 0x2

    if-eq v10, v13, :cond_2

    .line 429
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mDownloadPercent:I

    .line 433
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->resetContent()V

    .line 435
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSetupWizard:Z

    if-eqz v13, :cond_3

    .line 436
    const/4 v13, 0x4

    if-ne v10, v13, :cond_4

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->refreshForSetupWizardRestart()V

    .line 443
    :cond_3
    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 446
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSetupWizard:Z

    if-eqz v13, :cond_5

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->finish()V

    goto :goto_0

    .line 439
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->refreshForSetupWizardDownload()V

    goto :goto_1

    .line 450
    :cond_5
    const v13, 0x7f0d0028

    const v14, 0x7f09002f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 451
    const v13, 0x7f0d001b

    const v14, 0x7f090030

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v6, v7, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 456
    const v13, 0x7f0d0063

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 457
    const v13, 0x7f0d0062

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09002e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "actionTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v3

    .line 462
    .local v3, "actionEnabled":Z
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 467
    .end local v3    # "actionEnabled":Z
    .end local v4    # "actionTitle":Ljava/lang/String;
    :pswitch_1
    const v13, 0x7f0d0063

    const v14, 0x7f090023

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 468
    if-eqz v9, :cond_6

    .line 469
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09002c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 471
    .restart local v4    # "actionTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f090021

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "actionDescription":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v13}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 474
    .end local v2    # "actionDescription":Ljava/lang/String;
    .end local v4    # "actionTitle":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSetupWizard:Z

    if-eqz v13, :cond_7

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startDownload()V

    goto/16 :goto_0

    .line 477
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09002c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 479
    .restart local v4    # "actionTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 480
    .restart local v2    # "actionDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v3

    .line 481
    .restart local v3    # "actionEnabled":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 486
    .end local v2    # "actionDescription":Ljava/lang/String;
    .end local v3    # "actionEnabled":Z
    .end local v4    # "actionTitle":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v11

    .line 487
    .local v11, "when":J
    const v14, 0x7f0d0063

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mDownloadPercent:I

    if-gez v13, :cond_9

    const v13, 0x7f090024

    :goto_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-lez v13, :cond_8

    .line 493
    const v13, 0x7f0d0064

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 494
    const v13, 0x7f0d0064

    const v14, 0x7f090026

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v11, v12, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 501
    :cond_8
    const v13, 0x7f0d0061

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09002c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 503
    .restart local v4    # "actionTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 504
    .restart local v2    # "actionDescription":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v13}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mDownloadUpdate:Ljava/lang/Runnable;

    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 487
    .end local v2    # "actionDescription":Ljava/lang/String;
    .end local v4    # "actionTitle":Ljava/lang/String;
    :cond_9
    const v13, 0x7f090025

    goto :goto_2

    .line 511
    .end local v11    # "when":J
    :pswitch_3
    const v13, 0x7f0d0063

    const v14, 0x7f09002a

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09002b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 514
    .restart local v4    # "actionTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 515
    .restart local v2    # "actionDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v3

    .line 516
    .restart local v3    # "actionEnabled":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 520
    .end local v2    # "actionDescription":Ljava/lang/String;
    .end local v3    # "actionEnabled":Z
    .end local v4    # "actionTitle":Ljava/lang/String;
    :pswitch_4
    const v13, 0x7f0d0061

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 521
    const v13, 0x7f0d0063

    const v14, 0x7f090027

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09002c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 524
    .restart local v4    # "actionTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 525
    .restart local v2    # "actionDescription":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v13}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 527
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 531
    .end local v2    # "actionDescription":Ljava/lang/String;
    .end local v4    # "actionTitle":Ljava/lang/String;
    :pswitch_5
    const v13, 0x7f0d0061

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 532
    const v13, 0x7f0d0063

    const v14, 0x7f090028

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09002e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 535
    .restart local v4    # "actionTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 536
    .restart local v2    # "actionDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v3

    .line 537
    .restart local v3    # "actionEnabled":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 542
    .end local v2    # "actionDescription":Ljava/lang/String;
    .end local v3    # "actionEnabled":Z
    .end local v4    # "actionTitle":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_a

    .line 543
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->updateCountdownMessage(JZ)V

    goto/16 :goto_0

    .line 545
    :cond_a
    const v13, 0x7f0d0063

    const v14, 0x7f090029

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09002d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 548
    .restart local v4    # "actionTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 549
    .restart local v2    # "actionDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v13}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v3

    .line 551
    .restart local v3    # "actionEnabled":Z
    if-eqz v5, :cond_b

    .line 552
    const/4 v3, 0x0

    .line 555
    :cond_b
    const/4 v13, 0x2

    if-ne v5, v13, :cond_d

    .line 556
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f09001f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 568
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 558
    :cond_d
    const/4 v13, 0x1

    if-ne v5, v13, :cond_e

    .line 559
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f090020

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 561
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSetupWizard:Z

    if-eqz v13, :cond_c

    .line 564
    const v13, 0x31129

    const-string v14, "install"

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startCountdown()V

    goto :goto_3

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private resetContent()V
    .locals 9

    .prologue
    const v8, 0x7f0d0062

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 659
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v3, :cond_0

    .line 660
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mContentFragment:Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    invoke-virtual {v3}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 662
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_1

    .line 663
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 664
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 665
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 666
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 669
    :cond_1
    const v3, 0x7f0d0028

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_title"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v7}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_size"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v3, v7}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 674
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "update_description"

    invoke-static {v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "description":Ljava/lang/String;
    const v4, 0x7f0d001b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    :goto_0
    invoke-direct {p0, v4, v3, v7}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 679
    const v3, 0x7f0d0063

    invoke-direct {p0, v3, v6}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 680
    const v3, 0x7f0d0064

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 681
    invoke-direct {p0, v8, v6}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setVisibility(II)V

    .line 683
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v3}, Lcom/google/android/pano/dialog/Action;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "actionTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v3}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "actionDescription":Ljava/lang/String;
    invoke-direct {p0, v1, v0, v7}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 686
    return-void

    .line 676
    .end local v0    # "actionDescription":Ljava/lang/String;
    .end local v1    # "actionTitle":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    goto :goto_0
.end method

.method private resumeCountdown()V
    .locals 6

    .prologue
    .line 583
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "actionTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v3}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "actionDescription":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v3}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v1

    .line 586
    .local v1, "actionEnabled":Z
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 588
    iget-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->updateCountdownMessage(JZ)V

    .line 589
    return-void
.end method

.method private setText(IIZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "textResId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 689
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 690
    return-void
.end method

.method private setText(ILjava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "enabled"    # Z

    .prologue
    .line 693
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 694
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 695
    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 696
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 338
    new-instance v1, Lcom/google/android/pano/dialog/Action$Builder;

    invoke-direct {v1}, Lcom/google/android/pano/dialog/Action$Builder;-><init>()V

    .line 339
    .local v1, "builder":Lcom/google/android/pano/dialog/Action$Builder;
    const-string v2, "system_update_action_key"

    invoke-virtual {v1, v2}, Lcom/google/android/pano/dialog/Action$Builder;->key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/pano/dialog/Action$Builder;->enabled(Z)Lcom/google/android/pano/dialog/Action$Builder;

    .line 340
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 341
    invoke-virtual {v1}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    .line 366
    :goto_0
    return-void

    .line 345
    :cond_0
    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {v1, p1}, Lcom/google/android/pano/dialog/Action$Builder;->title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    .line 348
    :cond_1
    if-eqz p2, :cond_2

    .line 349
    invoke-virtual {v1, p2}, Lcom/google/android/pano/dialog/Action$Builder;->description(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    .line 351
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    .line 352
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 353
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    if-nez v2, :cond_3

    .line 356
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActions:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    .line 357
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setActionFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/ActionFragment;->getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter;

    .line 360
    .local v0, "adapter":Lcom/google/android/pano/dialog/ActionAdapter;
    if-nez v0, :cond_4

    .line 361
    new-instance v0, Lcom/google/android/pano/dialog/ActionAdapter;

    .end local v0    # "adapter":Lcom/google/android/pano/dialog/ActionAdapter;
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/pano/dialog/ActionAdapter;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v0    # "adapter":Lcom/google/android/pano/dialog/ActionAdapter;
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {v2, v0}, Lcom/google/android/pano/dialog/ActionFragment;->setAdapter(Lcom/google/android/pano/widget/ScrollAdapter;)V

    .line 364
    :cond_4
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/dialog/ActionAdapter;->setActions(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setUpdateActionEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 369
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/Action;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/Action;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mUpdateAction:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/Action;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "description":Ljava/lang/String;
    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setVisibility(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 702
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_0
    return-void
.end method

.method private startCountdown()V
    .locals 5

    .prologue
    .line 575
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.checkin.CHECKIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 576
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSetupWizard:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x1388

    .line 577
    .local v0, "delay":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    .line 578
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "url"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownUrl:Ljava/lang/String;

    .line 579
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->resumeCountdown()V

    .line 580
    return-void

    .line 576
    .end local v0    # "delay":I
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method private startDownload()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 631
    const v2, 0x3112a

    const-string v3, "download"

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 633
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "url"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_approved"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 638
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "download_now"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 640
    return-void
.end method

.method private startUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 643
    const v0, 0x7f0d0063

    const v1, 0x7f090040

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(IIZ)V

    .line 644
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 647
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->sIsActivityUp:Z

    .line 648
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mInstallPending:Z

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 656
    return-void
.end method

.method private stopCountdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 592
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 593
    const v0, 0x3112a

    const-string v1, "activity-countdown-cancel"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 594
    iput-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownStopTime:J

    .line 597
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownUrl:Ljava/lang/String;

    .line 598
    return-void
.end method

.method private updateCountdownMessage(JZ)V
    .locals 12
    .param p1, "endTime"    # J
    .param p3, "loop"    # Z

    .prologue
    const/4 v11, 0x1

    .line 601
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    cmp-long v5, p1, v5

    if-eqz v5, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "url"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, "url":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 607
    :cond_2
    const-string v5, "SystemUpdatePanoActivity"

    const-string v6, "URL changed during countdown; aborting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->stopCountdown()V

    .line 609
    invoke-direct {p0, v11}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->refreshStatus(Z)V

    goto :goto_0

    .line 613
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 614
    .local v1, "now":J
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    cmp-long v5, v1, v5

    if-ltz v5, :cond_4

    .line 615
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startUpdate()V

    goto :goto_0

    .line 617
    :cond_4
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit8 v3, v5, 0x1

    .line 618
    .local v3, "secs":I
    const v5, 0x7f0d0063

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0b0000

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v11}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 622
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    add-int/lit8 v7, v3, -0x1

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    sub-long/2addr v5, v1

    long-to-int v0, v5

    .line 623
    .local v0, "delay":I
    if-eqz p3, :cond_0

    .line 624
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;-><init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;JZ)V

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 5
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    const-wide/16 v3, 0x0

    .line 195
    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "actionKey":Ljava/lang/String;
    const-string v1, "system_update_action_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mLastStatus:I

    packed-switch v1, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 203
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.checkin.CHECKIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startDownload()V

    goto :goto_0

    .line 212
    :pswitch_3
    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 213
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSetupWizard:Z

    if-eqz v1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startUpdate()V

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->stopCountdown()V

    .line 222
    iput-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownStopTime:J

    .line 223
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->refreshStatus(Z)V

    goto :goto_0

    .line 226
    :cond_2
    const v1, 0x3112a

    const-string v2, "install"

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startCountdown()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lez v6, :cond_0

    .line 140
    const v5, 0x7f090022

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 142
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v3}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 144
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->finish()V

    .line 191
    .end local v3    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mHandler:Landroid/os/Handler;

    .line 151
    const-string v6, "update"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    .line 155
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f09001e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "title":Ljava/lang/String;
    new-instance v6, Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    invoke-direct {v6}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;-><init>()V

    iput-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mContentFragment:Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    .line 159
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mContentFragment:Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    invoke-virtual {v6, v2}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->setTitleText(Ljava/lang/String;)V

    .line 160
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mContentFragment:Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setContentFragment(Landroid/app/Fragment;)V

    .line 162
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mActions:Ljava/util/ArrayList;

    .line 163
    invoke-direct {p0, v8, v8, v4}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setUpdateAction(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 167
    const-string v6, "firstRun"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "required_setup"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSetupWizard:Z

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mContentFragment:Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 173
    new-instance v4, Lcom/google/android/gsf/update/StateWatcher;

    new-instance v5, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$2;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$2;-><init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V

    invoke-direct {v4, p0, v5}, Lcom/google/android/gsf/update/StateWatcher;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    if-eqz p1, :cond_3

    .line 183
    const-string v4, "countdown_end"

    invoke-virtual {p1, v4, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    .line 184
    iput-wide v9, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownStopTime:J

    .line 185
    const-string v4, "countdown_url"

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownUrl:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    move v4, v5

    .line 167
    goto :goto_1

    .line 187
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    iput-wide v9, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    .line 188
    iput-wide v9, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownStopTime:J

    .line 189
    iput-object v8, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/google/android/pano/dialog/DialogActivity;->onDestroy()V

    .line 237
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->setIntent(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "countdown_end"

    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 281
    const-string v0, "countdown_url"

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "download_mobile"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    :cond_0
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$5;-><init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    const-string v0, "verify_progress"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 332
    :cond_3
    const-string v0, "download_progress"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mDownloadUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 249
    invoke-super {p0}, Lcom/google/android/pano/dialog/DialogActivity;->onStart()V

    .line 251
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 252
    sput-boolean v1, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->sIsActivityUp:Z

    .line 253
    invoke-static {p0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->start()V

    .line 255
    invoke-direct {p0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->refreshStatus(Z)V

    .line 257
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mCountdownEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 258
    const v0, 0x3112a

    const-string v1, "activity-countdown-resume"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->resumeCountdown()V

    .line 261
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/google/android/pano/dialog/DialogActivity;->onStop()V

    .line 267
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->stopCountdown()V

    .line 268
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->stop()V

    .line 270
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->sIsActivityUp:Z

    .line 271
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 275
    return-void
.end method
