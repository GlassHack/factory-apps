.class public Lcom/android/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardViewMediator$5;,
        Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    }
.end annotation


# static fields
.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field private static sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 263
    new-instance v0, Lcom/android/keyguard/MultiUserAvatarCache;

    invoke-direct {v0}, Lcom/android/keyguard/MultiUserAvatarCache;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 192
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 199
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 206
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 228
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 241
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 243
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 319
    new-instance v4, Lcom/android/keyguard/KeyguardViewMediator$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 439
    new-instance v4, Lcom/android/keyguard/KeyguardViewMediator$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 1015
    new-instance v4, Lcom/android/keyguard/KeyguardViewMediator$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1050
    new-instance v4, Lcom/android/keyguard/KeyguardViewMediator$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, p0, v7, v8, v5}, Lcom/android/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 493
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 494
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 495
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 496
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v7, "show keyguard"

    invoke-virtual {v4, v5, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 497
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 499
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    new-instance v4, Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-direct {v4, p1}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 503
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 505
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 507
    if-eqz p2, :cond_7

    .end local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :goto_0
    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 509
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 512
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 515
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 517
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v4, Lcom/android/keyguard/KeyguardViewManager;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1, v3, v7, v8}, Lcom/android/keyguard/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    .line 520
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 522
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 524
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v5, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 525
    const-string v4, "lock_sound"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "soundPath":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 527
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v2, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 529
    :cond_1
    if-eqz v2, :cond_2

    iget v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v4, :cond_3

    .line 530
    :cond_2
    const-string v4, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load lock sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_3
    const-string v4, "unlock_sound"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    if-eqz v2, :cond_4

    .line 534
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v2, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 536
    :cond_4
    if-eqz v2, :cond_5

    iget v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v4, :cond_6

    .line 537
    :cond_5
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load unlock sound from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 541
    .local v1, "lockSoundDefaultAttenuation":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-float v6, v1

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 542
    return-void

    .line 507
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "lockSoundDefaultAttenuation":I
    .end local v2    # "soundPath":Ljava/lang/String;
    .end local v3    # "wm":Landroid/view/WindowManager;
    .restart local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_7
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .end local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 512
    goto/16 :goto_1
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/keyguard/MultiUserAvatarCache;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 3

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1264
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_2

    .line 1265
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_1
    :goto_0
    return-void

    .line 1269
    :cond_2
    const/4 v0, 0x0

    .line 1270
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_4

    .line 1274
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 1275
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1279
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1281
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1283
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isAssistantAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1284
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 1293
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 1294
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1277
    :cond_5
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 664
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-wide/16 v11, 0x0

    .line 629
    iget-object v9, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 632
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v9, "screen_off_timeout"

    const/16 v10, 0x7530

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    int-to-long v1, v9

    .line 636
    .local v1, "displayTimeout":J
    const-string v9, "lock_screen_lock_after_timeout"

    const/16 v10, 0x1388

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    int-to-long v3, v9

    .line 641
    .local v3, "lockAfterTimeout":J
    iget-object v9, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v10

    invoke-virtual {v9, v13, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v5

    .line 645
    .local v5, "policyTimeout":J
    cmp-long v9, v5, v11

    if-lez v9, :cond_1

    .line 647
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 648
    sub-long v9, v5, v1

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 653
    .local v7, "timeout":J
    :goto_0
    cmp-long v9, v7, v11

    if-gtz v9, :cond_0

    .line 655
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 656
    invoke-direct {p0, v13}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 660
    :cond_0
    return-void

    .line 650
    .end local v7    # "timeout":J
    :cond_1
    move-wide v7, v3

    .restart local v7    # "timeout":J
    goto :goto_0
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 876
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v6, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 898
    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v4

    .line 900
    .local v2, "requireSim":Z
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    .line 901
    .local v1, "provisioned":Z
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 902
    .local v3, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v6, :cond_7

    :cond_2
    if-eqz v2, :cond_7

    :cond_3
    move v0, v4

    .line 907
    .local v0, "lockedOrMissing":Z
    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    .line 913
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_0

    .line 920
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "lockedOrMissing":Z
    .end local v1    # "provisioned":Z
    .end local v2    # "requireSim":Z
    .end local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    move v2, v5

    .line 898
    goto :goto_1

    .restart local v1    # "provisioned":Z
    .restart local v2    # "requireSim":Z
    .restart local v3    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    move v0, v5

    .line 902
    goto :goto_2
.end method

.method public static getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;
    .locals 1

    .prologue
    .line 1368
    sget-object v0, Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;

    return-object v0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 1242
    monitor-enter p0

    .line 1247
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->hide()V

    .line 1252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1254
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1255
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1256
    monitor-exit p0

    .line 1257
    return-void

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleKeyguardDone(ZZ)V
    .locals 4
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 1112
    if-eqz p1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_1

    .line 1118
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1125
    if-eqz p1, :cond_1

    .line 1128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1133
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1134
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1135
    return-void

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onKeyguardExitResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1155
    monitor-enter p0

    .line 1157
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1160
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1167
    :cond_0
    monitor-exit p0

    .line 1168
    return-void

    .line 1167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 1

    .prologue
    .line 1332
    monitor-enter p0

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1335
    monitor-exit p0

    .line 1336
    return-void

    .line 1335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1343
    monitor-enter p0

    .line 1345
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 1346
    monitor-exit p0

    .line 1347
    return-void

    .line 1346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReset(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1304
    if-nez p1, :cond_0

    .line 1305
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "options":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1307
    .restart local p1    # "options":Landroid/os/Bundle;
    :cond_0
    const-string v0, "is_switching_user"

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1308
    monitor-enter p0

    .line 1310
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->reset(Landroid/os/Bundle;)V

    .line 1311
    monitor-exit p0

    .line 1312
    return-void

    .line 1311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetHidden(Z)V
    .locals 1
    .param p1, "isHidden"    # Z

    .prologue
    .line 843
    monitor-enter p0

    .line 844
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 845
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 846
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 847
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 849
    :cond_0
    monitor-exit p0

    .line 850
    return-void

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1210
    monitor-enter p0

    .line 1211
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1213
    monitor-exit p0

    .line 1235
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1221
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1222
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1223
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1232
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1233
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    goto :goto_0

    .line 1233
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1226
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleVerifyUnlock()V
    .locals 1

    .prologue
    .line 1319
    monitor-enter p0

    .line 1321
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->verifyUnlock()V

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1323
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1324
    monitor-exit p0

    .line 1325
    return-void

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 997
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 998
    return-void
.end method

.method private isAssistantAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1363
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 683
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 690
    :cond_0
    return-void
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 965
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 975
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 976
    return-void
.end method

.method private playSounds(Z)V
    .locals 8
    .param p1, "locked"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1173
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_1

    .line 1174
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1179
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1180
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 1183
    .local v1, "whichSound":I
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1191
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .line 1180
    .end local v1    # "whichSound":I
    :cond_3
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private resetStateLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 944
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 945
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 3

    .prologue
    .line 1146
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1147
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1148
    return-void
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 985
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 986
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 987
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 988
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 1200
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_1
    return-void

    .line 1200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1201
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private userActivity()V
    .locals 2

    .prologue
    .line 478
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 479
    return-void
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 954
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 934
    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1372
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1373
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1374
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 857
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 859
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 860
    return-void
.end method

.method public handleDismiss()V
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->dismiss()V

    .line 930
    :cond_0
    return-void
.end method

.method protected handleDispatchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->dispatch(Landroid/view/MotionEvent;)V

    .line 1143
    return-void
.end method

.method protected handleLaunchCamera()V
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->launchCamera()V

    .line 1139
    return-void
.end method

.method public handleShowAssistant()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->showAssistant()V

    .line 1360
    return-void
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1035
    const v3, 0x11170

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1036
    monitor-enter p0

    .line 1037
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1038
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v5, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1040
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    return-void

    .line 1038
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    move v3, v2

    .line 1039
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public launchCamera()V
    .locals 3

    .prologue
    .line 1377
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1378
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1379
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 1383
    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 697
    monitor-enter p0

    .line 698
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 701
    :cond_0
    monitor-exit p0

    .line 702
    return-void

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 708
    monitor-enter p0

    .line 709
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 712
    :cond_0
    monitor-exit p0

    .line 713
    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 585
    monitor-enter p0

    .line 586
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 589
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 594
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 597
    .local v1, "lockImmediately":Z
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 600
    :try_start_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 605
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v2, :cond_2

    .line 606
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 619
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurndOff(I)V

    .line 621
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 619
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lockImmediately":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 608
    .restart local v1    # "lockImmediately":Z
    :cond_3
    :try_start_4
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_4

    .line 609
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 610
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_1

    .line 611
    :cond_4
    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    if-nez v1, :cond_6

    .line 613
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    goto :goto_1

    .line 614
    :cond_6
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    .line 617
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 670
    monitor-enter p0

    .line 671
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 672
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 674
    if-eqz p1, :cond_0

    .line 675
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 677
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 679
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 680
    return-void

    .line 677
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 549
    monitor-enter p0

    .line 551
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 563
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 571
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 572
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 576
    return-void

    .line 568
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1013
    return-void
.end method

.method public setHidden(Z)V
    .locals 6
    .param p1, "isHidden"    # Z

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 833
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 834
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 837
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 833
    goto :goto_0

    :cond_1
    move v2, v3

    .line 835
    goto :goto_1
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 721
    monitor-enter p0

    .line 724
    :try_start_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 726
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    .line 727
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_0

    .line 731
    monitor-exit p0

    .line 774
    :goto_0
    return-void

    .line 737
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 738
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 773
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 739
    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_1

    .line 743
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 745
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 748
    :try_start_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 753
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_1

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 755
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 760
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 761
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 763
    :goto_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 765
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 766
    :catch_1
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public showAssistant()V
    .locals 3

    .prologue
    .line 1354
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1355
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1356
    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .param p1, "holdMs"    # J

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 485
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 780
    monitor-enter p0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 786
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 812
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 811
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 790
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_1

    .line 794
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 796
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 797
    :catch_1
    move-exception v0

    .line 798
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 800
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 803
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 804
    :catch_2
    move-exception v0

    .line 805
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 808
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 809
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method
