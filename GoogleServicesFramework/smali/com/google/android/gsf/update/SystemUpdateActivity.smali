.class public Lcom/google/android/gsf/update/SystemUpdateActivity;
.super Landroid/app/Activity;
.source "SystemUpdateActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static volatile sIsActivityUp:Z


# instance fields
.field private mButtonQualifier:Landroid/widget/TextView;

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

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupWizard:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mVerifyUpdate:Ljava/lang/Runnable;

.field private mWatcher:Lcom/google/android/gsf/update/StateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastMobile:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadPercent:I

    .line 68
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 71
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 90
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mInstallPending:Z

    .line 96
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$3;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$4;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/update/SystemUpdateActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/update/SystemUpdateActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/update/SystemUpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdateActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/update/SystemUpdateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadPercent:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/gsf/update/SystemUpdateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadPercent:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/gsf/update/SystemUpdateActivity;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/update/SystemUpdateActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    return-void
.end method

.method private refreshForSetupWizardDownload()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 276
    const v0, 0x7f0d0028

    const v1, 0x7f090031

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 277
    const v0, 0x7f0d001b

    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "5"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 282
    const v0, 0x7f0d0066

    invoke-direct {p0, v0, v6}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 283
    const v0, 0x7f0d0063

    invoke-direct {p0, v0, v6}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 284
    return-void
.end method

.method private refreshForSetupWizardRestart()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 287
    const v0, 0x7f0d0028

    const v1, 0x7f090033

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 288
    const v0, 0x7f0d001b

    const v1, 0x7f090034

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 289
    const v0, 0x7f0d0066

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 290
    const v0, 0x7f0d0063

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 291
    return-void
.end method

.method private refreshStatus(Z)V
    .locals 13
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 295
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v9, "status"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 297
    .local v5, "status":I
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v9, "download_mobile"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 298
    .local v3, "mobile":Z
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v8}, Lcom/google/android/gsf/update/StateWatcher;->getBatteryState()I

    move-result v0

    .line 299
    .local v0, "batteryState":I
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v8}, Lcom/google/android/gsf/update/StateWatcher;->isNetworkRoaming()Z

    move-result v4

    .line 300
    .local v4, "roaming":Z
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getLastCheckinSuccessTime(Landroid/content/Context;)J

    move-result-wide v1

    .line 301
    .local v1, "lastCheckinTime":J
    const-string v8, "SystemUpdateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mobile="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " batteryState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " roaming="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastCheckinTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mSetupWizard="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-nez p1, :cond_1

    iget v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    if-ne v5, v8, :cond_1

    iget-boolean v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastMobile:Z

    if-ne v3, v8, :cond_1

    iget v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastBatteryState:I

    if-ne v0, v8, :cond_1

    iget-boolean v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastRoaming:Z

    if-ne v4, v8, :cond_1

    iget-wide v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastCheckinTime:J

    cmp-long v8, v1, v8

    if-nez v8, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iput v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    .line 311
    iput-boolean v3, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastMobile:Z

    .line 312
    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastBatteryState:I

    .line 313
    iput-boolean v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastRoaming:Z

    .line 314
    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastCheckinTime:J

    .line 321
    const/4 v8, 0x5

    if-ne v5, v8, :cond_2

    iget-boolean v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mInstallPending:Z

    if-eqz v8, :cond_2

    .line 322
    const-string v8, "SystemUpdateActivity"

    const-string v9, "skipping refresh; about to reboot"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_2
    const/4 v8, 0x2

    if-eq v5, v8, :cond_3

    .line 327
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadPercent:I

    .line 331
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resetContent()V

    .line 333
    iget-boolean v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    if-eqz v8, :cond_4

    .line 334
    const/4 v8, 0x4

    if-ne v5, v8, :cond_5

    .line 335
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshForSetupWizardRestart()V

    .line 341
    :cond_4
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 344
    :pswitch_0
    iget-boolean v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    if-eqz v8, :cond_6

    .line 346
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->finish()V

    goto :goto_0

    .line 337
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshForSetupWizardDownload()V

    goto :goto_1

    .line 348
    :cond_6
    const v8, 0x7f0d0028

    const v9, 0x7f09002f

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 349
    const v8, 0x7f0d001b

    const v9, 0x7f090030

    invoke-virtual {p0, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {p0, v1, v2, v12}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 354
    const v8, 0x7f0d0063

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 355
    const v8, 0x7f0d0062

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 356
    const v8, 0x7f0d0066

    const v9, 0x7f09002e

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto :goto_0

    .line 361
    :pswitch_1
    const v8, 0x7f0d0063

    const v9, 0x7f090023

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 362
    if-eqz v4, :cond_7

    .line 363
    const v8, 0x7f0d0066

    const v9, 0x7f09002c

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 365
    const v8, 0x7f0d0066

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 366
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v9, 0x7f090021

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 368
    :cond_7
    iget-boolean v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    if-eqz v8, :cond_8

    .line 369
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startDownload()V

    goto/16 :goto_0

    .line 371
    :cond_8
    const v8, 0x7f0d0066

    const v9, 0x7f09002c

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_0

    .line 377
    :pswitch_2
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v8, p0}, Lcom/google/android/gsf/update/SystemUpdateService;->whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v6

    .line 378
    .local v6, "when":J
    const v9, 0x7f0d0063

    iget v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadPercent:I

    if-gez v8, :cond_a

    const v8, 0x7f090024

    :goto_2
    const/4 v10, 0x1

    invoke-direct {p0, v9, v8, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-lez v8, :cond_9

    .line 384
    const v8, 0x7f0d0064

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 385
    const v8, 0x7f0d0064

    const v9, 0x7f090026

    invoke-virtual {p0, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v6, v7, v12}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 392
    :cond_9
    const v8, 0x7f0d0061

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 393
    const v8, 0x7f0d0066

    const v9, 0x7f09002c

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 395
    const v8, 0x7f0d0066

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 396
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadUpdate:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 378
    :cond_a
    const v8, 0x7f090025

    goto :goto_2

    .line 401
    .end local v6    # "when":J
    :pswitch_3
    const v8, 0x7f0d0063

    const v9, 0x7f09002a

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 402
    const v8, 0x7f0d0066

    const v9, 0x7f09002b

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_0

    .line 407
    :pswitch_4
    const v8, 0x7f0d0061

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 408
    const v8, 0x7f0d0063

    const v9, 0x7f090027

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 409
    const v8, 0x7f0d0066

    const v9, 0x7f09002c

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 411
    const v8, 0x7f0d0066

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 412
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 416
    :pswitch_5
    const v8, 0x7f0d0061

    const/4 v9, 0x4

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 417
    const v8, 0x7f0d0063

    const v9, 0x7f090028

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 418
    const v8, 0x7f0d0066

    const v9, 0x7f09002e

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_0

    .line 422
    :pswitch_6
    iget-wide v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_b

    .line 423
    iget-wide v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    goto/16 :goto_0

    .line 425
    :cond_b
    const v8, 0x7f0d0063

    const v9, 0x7f090029

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 426
    const v9, 0x7f0d0066

    const v10, 0x7f09002d

    if-nez v0, :cond_d

    const/4 v8, 0x1

    :goto_3
    invoke-direct {p0, v9, v10, v8}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 428
    if-eqz v0, :cond_c

    .line 429
    const v8, 0x7f0d0066

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 431
    :cond_c
    const/4 v8, 0x2

    if-ne v0, v8, :cond_e

    .line 432
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v9, 0x7f09001f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 434
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 426
    :cond_d
    const/4 v8, 0x0

    goto :goto_3

    .line 435
    :cond_e
    const/4 v8, 0x1

    if-ne v0, v8, :cond_f

    .line 436
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v9, 0x7f090020

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 438
    iget-object v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 439
    :cond_f
    iget-boolean v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    if-eqz v8, :cond_0

    .line 442
    const v8, 0x31129

    const-string v9, "install"

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startCountdown()V

    goto/16 :goto_0

    .line 341
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
    .locals 8

    .prologue
    const v7, 0x7f0d0062

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 531
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 532
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 533
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 535
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    const v1, 0x7f0d0028

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_title"

    invoke-static {v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_size"

    invoke-static {v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1, v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_description"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "description":Ljava/lang/String;
    const v2, 0x7f0d001b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-direct {p0, v2, v1, v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 547
    const v1, 0x7f0d0063

    invoke-direct {p0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 548
    const v1, 0x7f0d0064

    invoke-direct {p0, v1, v6}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 549
    invoke-direct {p0, v7, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 550
    const v1, 0x7f0d0066

    invoke-direct {p0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 551
    return-void

    .line 544
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method private resumeCountdown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 459
    const v0, 0x7f0d0066

    const v1, 0x7f090041

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 460
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    .line 461
    return-void
.end method

.method private setText(IIZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "textResId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 554
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 555
    return-void
.end method

.method private setText(ILjava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "enabled"    # Z

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 559
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 560
    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 561
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setVisibility(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 568
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 569
    :cond_0
    return-void
.end method

.method private startCountdown()V
    .locals 5

    .prologue
    .line 451
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.server.checkin.CHECKIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 452
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x1388

    .line 453
    .local v0, "delay":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 454
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "url"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    .line 455
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resumeCountdown()V

    .line 456
    return-void

    .line 452
    .end local v0    # "delay":I
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method private startDownload()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 503
    const v2, 0x3112a

    const-string v3, "download"

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 505
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "url"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_approved"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "download_now"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 512
    return-void
.end method

.method private startUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 515
    const v0, 0x7f0d0063

    const v1, 0x7f090040

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 516
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 519
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 520
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mInstallPending:Z

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 528
    return-void
.end method

.method private stopCountdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 464
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 465
    const v0, 0x3112a

    const-string v1, "activity-countdown-cancel"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 466
    iput-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    .line 469
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    .line 470
    return-void
.end method

.method private updateCountdownMessage(JZ)V
    .locals 12
    .param p1, "endTime"    # J
    .param p3, "loop"    # Z

    .prologue
    const/4 v11, 0x1

    .line 473
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v5, p1, v5

    if-eqz v5, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "url"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "url":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 479
    :cond_2
    const-string v5, "SystemUpdateActivity"

    const-string v6, "URL changed during countdown; aborting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopCountdown()V

    .line 481
    invoke-direct {p0, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    goto :goto_0

    .line 485
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 486
    .local v1, "now":J
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v5, v1, v5

    if-ltz v5, :cond_4

    .line 487
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startUpdate()V

    goto :goto_0

    .line 489
    :cond_4
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit8 v3, v5, 0x1

    .line 490
    .local v3, "secs":I
    const v5, 0x7f0d0063

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0b0000

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 494
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    add-int/lit8 v7, v3, -0x1

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    sub-long/2addr v5, v1

    long-to-int v0, v5

    .line 495
    .local v0, "delay":I
    if-eqz p3, :cond_0

    .line 496
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gsf/update/SystemUpdateActivity$6;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity$6;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;JZ)V

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x0

    .line 572
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    packed-switch v0, :pswitch_data_0

    .line 605
    :goto_0
    :pswitch_0
    return-void

    .line 576
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 581
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startDownload()V

    goto :goto_0

    .line 585
    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 586
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    if-eqz v0, :cond_0

    .line 589
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startUpdate()V

    goto :goto_0

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopCountdown()V

    .line 596
    iput-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    .line 597
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    goto :goto_0

    .line 600
    :cond_1
    const v0, 0x3112a

    const-string v1, "install"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 601
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startCountdown()V

    goto :goto_0

    .line 572
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
    const/4 v10, 0x0

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lez v6, :cond_0

    .line 125
    const v5, 0x7f090022

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 127
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v3}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 129
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->finish()V

    .line 182
    .end local v3    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 135
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/google/android/pano/data/util/PanoUtils;->isPanoInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->finish()V

    .line 142
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    .line 144
    const-string v6, "update"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 147
    .restart local v1    # "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 148
    const-string v6, "firstRun"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "required_setup"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    .line 152
    :cond_2
    const v4, 0x7f09001e

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setTitle(I)V

    .line 154
    iget-boolean v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSetupWizard:Z

    if-eqz v4, :cond_4

    const v4, 0x7f03001c

    :goto_2
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setContentView(I)V

    .line 156
    const v4, 0x7f0d0066

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v4, 0x7f0d0067

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    .line 159
    const v4, 0x7f0d0061

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 161
    const v4, 0x7f0d001b

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 164
    new-instance v4, Lcom/google/android/gsf/update/StateWatcher;

    new-instance v5, Lcom/google/android/gsf/update/SystemUpdateActivity$2;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$2;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    invoke-direct {v4, p0, v5}, Lcom/google/android/gsf/update/StateWatcher;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    if-eqz p1, :cond_5

    .line 174
    const-string v4, "countdown_end"

    invoke-virtual {p1, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 175
    iput-wide v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    .line 176
    const-string v4, "countdown_url"

    invoke-virtual {p1, v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    move v4, v5

    .line 148
    goto :goto_1

    .line 154
    :cond_4
    const v4, 0x7f03001b

    goto :goto_2

    .line 178
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_5
    iput-wide v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 179
    iput-wide v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    .line 180
    iput-object v10, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setIntent(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    const-string v0, "countdown_end"

    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 231
    const-string v0, "countdown_url"

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "download_mobile"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    :cond_0
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$5;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    const-string v0, "verify_progress"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 270
    :cond_3
    const-string v0, "download_progress"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 201
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 202
    sput-boolean v1, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 203
    invoke-static {p0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->start()V

    .line 205
    invoke-direct {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    .line 207
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 208
    const v0, 0x3112a

    const-string v1, "activity-countdown-resume"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resumeCountdown()V

    .line 211
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 217
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopCountdown()V

    .line 218
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->stop()V

    .line 220
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 221
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 225
    return-void
.end method
