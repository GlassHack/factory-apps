.class public Lcom/android/keyguard/KeyguardFaceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardFaceUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEcaView:Landroid/view/View;

.field private mFaceUnlockAreaView:Landroid/view/View;

.field private mIsShowing:Z

.field private final mIsShowingLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLastRotation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    .line 54
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    .line 57
    new-instance v0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$1;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 250
    new-instance v0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$3;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardFaceUnlockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardFaceUnlockView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardFaceUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardFaceUnlockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initializeBiometricUnlockView()V
    .locals 2

    .prologue
    .line 188
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lcom/android/keyguard/FaceUnlock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/FaceUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    .line 192
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardFaceUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$2;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private maybeStartBiometricUnlock()V
    .locals 6

    .prologue
    .line 211
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 213
    .local v2, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    const/4 v0, 0x1

    .line 216
    .local v0, "backupIsTimedOut":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 220
    .local v3, "powerManager":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    monitor-enter v5

    .line 221
    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 222
    .local v1, "isShowing":Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_3

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 248
    .end local v0    # "backupIsTimedOut":Z
    .end local v1    # "isShowing":Z
    .end local v2    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    :goto_1
    return-void

    .line 213
    .restart local v2    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    .restart local v0    # "backupIsTimedOut":Z
    .restart local v3    # "powerManager":Landroid/os/PowerManager;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 239
    .restart local v1    # "isShowing":Z
    :cond_3
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    .line 243
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_1

    .line 245
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_1
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 321
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 122
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_1

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 88
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->initializeBiometricUnlockView()V

    .line 90
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 91
    const v1, 0x7f0a0024

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    .line 92
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 182
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/keyguard/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 139
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_1

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 153
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 160
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-nez v1, :cond_1

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when adding rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/FaceUnlock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/FaceUnlock;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 103
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 108
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 315
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method
