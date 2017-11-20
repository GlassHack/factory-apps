.class public Lcom/android/keyguard/KeyguardHostView;
.super Lcom/android/keyguard/KeyguardViewBase;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardHostView$13;,
        Lcom/android/keyguard/KeyguardHostView$SavedState;,
        Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;,
        Lcom/android/keyguard/KeyguardHostView$OnDismissAction;,
        Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;,
        Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static DEBUGXPORT:Z


# instance fields
.field private final MAX_WIDGETS:I

.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetToShow:I

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private final mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field protected mClientGeneration:I

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field private mEnableFallback:Z

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsVerifyUnlockOnly:Z

.field private mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field private mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

.field private mPostBootCompletedRunnable:Ljava/lang/Runnable;

.field private mSafeModeEnabled:Z

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field protected mShowSecurityWhenReturn:Z

.field private mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

.field private final mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

.field private mTransportState:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field private mUserSetupCompleted:Z

.field private mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput v4, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 80
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 90
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 101
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 121
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    .line 254
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 507
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$3;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    .line 573
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$4;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 890
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$5;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$5;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 1148
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$6;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$6;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    .line 1178
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$7;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$7;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    .line 1372
    new-instance v5, Lcom/android/keyguard/KeyguardHostView$10;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$10;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 150
    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "KeyguardHostView"

    const-string v6, "KeyguardHostView()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 158
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    .line 160
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 162
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 164
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 167
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    .line 170
    const/4 v3, 0x0

    .line 172
    .local v3, "userContext":Landroid/content/Context;
    :try_start_0
    const-string v2, "system"

    .line 173
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "system"

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 182
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/appwidget/AppWidgetHost;

    const v6, 0x4b455947    # 1.2933447E7f

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 185
    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 187
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v5, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 189
    new-instance v5, Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    .line 191
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_setup_complete"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    .line 195
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInitialTransportState()V

    .line 197
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v4, :cond_3

    .line 198
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard widgets disabled by safe mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 201
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard widgets disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_4
    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 204
    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard secure camera disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    return-void

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 179
    move-object v3, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardHostView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showBackupSecurityScreen()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardHostView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardHostView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardActivityLauncher;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardHostView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardHostView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    return-void
.end method

.method private addDefaultStatusWidget(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1264
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1265
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030014

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1266
    .local v1, "statusWidget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1267
    return-void
.end method

.method private addDefaultWidgets()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1207
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1208
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1209
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030001

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1210
    .local v0, "addWidget":Landroid/view/View;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0, v5}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1211
    const v4, 0x7f0a001b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1212
    .local v1, "addWidgetButton":Landroid/view/View;
    new-instance v4, Lcom/android/keyguard/KeyguardHostView$8;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardHostView$8;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    .end local v0    # "addWidget":Landroid/view/View;
    .end local v1    # "addWidgetButton":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1226
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-static {v4, v5, v6}, Lcom/android/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v2

    .line 1228
    .local v2, "cameraWidget":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1229
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 1232
    .end local v2    # "cameraWidget":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private addWidget(IIZ)Z
    .locals 5
    .param p1, "appId"    # I
    .param p2, "pageIndex"    # I
    .param p3, "updateDbIfFailed"    # Z

    .prologue
    .line 1132
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1133
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 1135
    .local v1, "view":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v1, p2}, Lcom/android/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 1136
    const/4 v2, 0x1

    .line 1144
    .end local v1    # "view":Landroid/appwidget/AppWidgetHostView;
    :goto_0
    return v2

    .line 1138
    :cond_0
    if-eqz p3, :cond_1

    .line 1139
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** AppWidgetInfo for app widget id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  was null for user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1142
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 1144
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addWidgetsFromSettings()V
    .locals 5

    .prologue
    .line 1270
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1271
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1294
    :cond_1
    :goto_0
    return-void

    .line 1275
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 1278
    .local v1, "insertionIndex":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 1280
    .local v2, "widgets":[I
    if-nez v2, :cond_3

    .line 1281
    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1283
    :cond_3
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1284
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    .line 1285
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1283
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1290
    :cond_4
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2
.end method

.method private allocateIdForDefaultAppWidget()I
    .locals 7

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1299
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    const v4, 0x7f05000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f050010

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    .local v1, "defaultAppWidget":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1307
    .local v0, "appWidgetId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :goto_0
    return v0

    .line 1308
    :catch_0
    move-exception v2

    .line 1309
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1311
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cameraDisabledByDpm()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupAppWidgetIds()V
    .locals 7

    .prologue
    .line 226
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 234
    .local v2, "appWidgetIdsInKeyguardSettings":[I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v1

    .line 235
    .local v1, "appWidgetIdsBoundToHost":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 236
    aget v0, v1, v3

    .line 237
    .local v0, "appWidgetId":I
    invoke-static {v2, v0}, Lcom/android/keyguard/KeyguardHostView;->contains([II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a appWidgetId that\'s not being used by keyguard, deleting id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 235
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static contains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 247
    .local v3, "value":I
    if-ne v3, p1, :cond_0

    .line 248
    const/4 v4, 0x1

    .line 251
    .end local v3    # "value":I
    :goto_1
    return v4

    .line 246
    .restart local v3    # "value":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v3    # "value":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1578
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1582
    .local v3, "um":Landroid/os/UserManager;
    if-nez v3, :cond_2

    .line 1583
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1584
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1585
    const-string v5, "KeyguardHostView"

    const-string v6, "user service is null."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1590
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v3, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1591
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_3

    .line 1592
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1593
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1594
    const-string v5, "KeyguardHostView"

    const-string v6, "list of users is null."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1598
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_3
    const v5, 0x7f0a0030

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1599
    .local v1, "multiUserView":Landroid/view/View;
    if-nez v1, :cond_4

    .line 1600
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1601
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1602
    const-string v5, "KeyguardHostView"

    const-string v6, "can\'t find user_selector in layout."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1606
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 1607
    instance-of v5, v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v5, :cond_5

    .line 1608
    check-cast v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .end local v1    # "multiUserView":Landroid/view/View;
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .line 1609
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    .line 1610
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 1611
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$12;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$12;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 1636
    .local v0, "callback":Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    .line 1638
    .end local v0    # "callback":Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    .restart local v1    # "multiUserView":Landroid/view/View;
    :cond_5
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1639
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1640
    if-nez v1, :cond_6

    .line 1641
    const-string v5, "KeyguardHostView"

    const-string v6, "could not find the user_selector."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1643
    :cond_6
    const-string v5, "KeyguardHostView"

    const-string v6, "user_selector is the wrong type."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private ensureTransportPresentOrRemoved(I)Z
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1514
    const v7, 0x7f0a0050

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    move v3, v5

    .line 1515
    .local v3, "showing":Z
    :goto_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    move v4, v5

    .line 1516
    .local v4, "visible":Z
    :goto_1
    if-ne p1, v5, :cond_5

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v5

    .line 1517
    .local v2, "shouldBeVisible":Z
    :goto_2
    if-nez v3, :cond_7

    if-nez v4, :cond_0

    if-eqz v2, :cond_7

    .line 1519
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1520
    .local v0, "lastWidget":I
    const/4 v1, 0x0

    .line 1521
    .local v1, "position":I
    if-ltz v0, :cond_1

    .line 1522
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v0

    .line 1525
    :cond_1
    :goto_3
    sget-boolean v6, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v6, :cond_2

    const-string v6, "KeyguardHostView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add transport at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1534
    .end local v0    # "lastWidget":I
    .end local v1    # "position":I
    :goto_4
    return v5

    .end local v2    # "shouldBeVisible":Z
    .end local v3    # "showing":Z
    .end local v4    # "visible":Z
    :cond_3
    move v3, v6

    .line 1514
    goto :goto_0

    .restart local v3    # "showing":Z
    :cond_4
    move v4, v6

    .line 1515
    goto :goto_1

    .restart local v4    # "visible":Z
    :cond_5
    move v2, v6

    .line 1516
    goto :goto_2

    .line 1522
    .restart local v0    # "lastWidget":I
    .restart local v1    # "position":I
    .restart local v2    # "shouldBeVisible":Z
    :cond_6
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 1528
    .end local v0    # "lastWidget":I
    .end local v1    # "position":I
    :cond_7
    if-eqz v3, :cond_9

    if-nez p1, :cond_9

    .line 1529
    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_8

    const-string v5, "KeyguardHostView"

    const-string v7, "remove transport"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 1531
    iput-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 1532
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    :cond_9
    move v5, v6

    .line 1534
    goto :goto_4
.end method

.method private findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;
    .locals 2

    .prologue
    .line 1538
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1539
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/CameraWidgetFrame;

    .line 1543
    :goto_1
    return-object v1

    .line 1538
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1543
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppropriateWidgetPage(I)I
    .locals 6
    .param p1, "musicTransportState"    # I

    .prologue
    .line 1552
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v3, :cond_2

    .line 1553
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1554
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1555
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v3, v4, :cond_0

    .line 1574
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1554
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1560
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1563
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 1564
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KeyguardHostView"

    const-string v4, "Music playing, show transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    .line 1569
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1570
    .local v2, "rightMost":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1571
    add-int/lit8 v2, v2, -0x1

    .line 1573
    :cond_5
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show right-most page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v2

    .line 1574
    goto :goto_1
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 3
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "disabledFeatures":I
    if-eqz p1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 443
    .local v0, "currentUser":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 445
    .end local v0    # "currentUser":I
    :cond_0
    return v1
.end method

.method private getInitialTransportState()V
    .locals 4

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    move-result-object v0

    .line 218
    .local v0, "dcs":Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 221
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial transport state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pbstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    return-void

    .line 218
    :cond_1
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getInsertPageIndex()I
    .locals 4

    .prologue
    .line 1253
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1254
    .local v0, "addWidget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1255
    .local v1, "insertionIndex":I
    if-gez v1, :cond_0

    .line 1256
    const/4 v1, 0x0

    .line 1260
    :goto_0
    return v1

    .line 1258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 1117
    sget-object v0, Lcom/android/keyguard/KeyguardHostView$13;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1127
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1118
    :pswitch_0
    const v0, 0x7f030010

    goto :goto_0

    .line 1119
    :pswitch_1
    const v0, 0x7f03000d

    goto :goto_0

    .line 1120
    :pswitch_2
    const v0, 0x7f03000e

    goto :goto_0

    .line 1121
    :pswitch_3
    const v0, 0x7f03000c

    goto :goto_0

    .line 1122
    :pswitch_4
    const v0, 0x7f030004

    goto :goto_0

    .line 1123
    :pswitch_5
    const/high16 v0, 0x7f030000

    goto :goto_0

    .line 1124
    :pswitch_6
    const v0, 0x7f030011

    goto :goto_0

    .line 1125
    :pswitch_7
    const v0, 0x7f030012

    goto :goto_0

    .line 1117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;
    .locals 3

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-nez v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1241
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTransportControlView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 1243
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    new-instance v2, Lcom/android/keyguard/KeyguardHostView$9;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostView$9;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView;->setTransportControlCallback(Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;)V

    .line 1249
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    return-object v1
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 12
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v5

    .line 937
    .local v5, "securityViewIdForMode":I
    const/4 v8, 0x0

    .line 938
    .local v8, "view":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v2

    .line 939
    .local v2, "children":I
    const/4 v1, 0x0

    .local v1, "child":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 940
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, v5, :cond_4

    .line 941
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    check-cast v8, Lcom/android/keyguard/KeyguardSecurityView;

    .line 945
    .restart local v8    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 946
    .local v4, "layoutId":I
    if-nez v8, :cond_2

    if-eqz v4, :cond_2

    .line 947
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 948
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget-boolean v9, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "KeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inflating id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 950
    .local v7, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9, v7}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 951
    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    move-object v8, v7

    .line 952
    check-cast v8, Lcom/android/keyguard/KeyguardSecurityView;

    .line 955
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "v":Landroid/view/View;
    :cond_2
    instance-of v9, v8, Lcom/android/keyguard/KeyguardSelectorView;

    if-eqz v9, :cond_3

    move-object v6, v8

    .line 956
    check-cast v6, Lcom/android/keyguard/KeyguardSelectorView;

    .line 957
    .local v6, "selectorView":Lcom/android/keyguard/KeyguardSelectorView;
    const v9, 0x7f0a0024

    invoke-virtual {v6, v9}, Lcom/android/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 958
    .local v0, "carrierText":Landroid/view/View;
    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardSelectorView;->setCarrierArea(Landroid/view/View;)V

    .line 961
    .end local v0    # "carrierText":Landroid/view/View;
    .end local v6    # "selectorView":Lcom/android/keyguard/KeyguardSelectorView;
    :cond_3
    return-object v8

    .line 939
    .end local v4    # "layoutId":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 1103
    sget-object v0, Lcom/android/keyguard/KeyguardHostView$13;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1113
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1104
    :pswitch_0
    const v0, 0x7f0a0048

    goto :goto_0

    .line 1105
    :pswitch_1
    const v0, 0x7f0a0035

    goto :goto_0

    .line 1106
    :pswitch_2
    const v0, 0x7f0a0037

    goto :goto_0

    .line 1107
    :pswitch_3
    const v0, 0x7f0a0032

    goto :goto_0

    .line 1108
    :pswitch_4
    const v0, 0x7f0a001f

    goto :goto_0

    .line 1109
    :pswitch_5
    const v0, 0x7f0a0016

    goto :goto_0

    .line 1110
    :pswitch_6
    const v0, 0x7f0a004a

    goto :goto_0

    .line 1111
    :pswitch_7
    const v0, 0x7f0a004b

    goto :goto_0

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private getWidgetPosition(I)I
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 340
    .local v0, "appWidgetContainer":Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 341
    .local v1, "children":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 342
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 343
    .local v2, "content":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 350
    .end local v2    # "content":Landroid/view/View;
    .end local v3    # "i":I
    :goto_1
    return v3

    .line 345
    .restart local v2    # "content":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_0
    if-nez v2, :cond_1

    .line 347
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** Null content at i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",N="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    .end local v2    # "content":Landroid/view/View;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private static final isMusicPlaying(I)Z
    .locals 1
    .param p0, "playbackState"    # I

    .prologue
    .line 303
    packed-switch p0, :pswitch_data_0

    .line 312
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 310
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private maybeEnableAddButton()V
    .locals 2

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 426
    :cond_0
    return-void
.end method

.method private numWidgets()I
    .locals 4

    .prologue
    .line 1196
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1197
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 1198
    .local v2, "widgetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1199
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1200
    add-int/lit8 v2, v2, 0x1

    .line 1198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    :cond_1
    return v2
.end method

.method private reportFailedUnlockAttempt()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 675
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 676
    .local v4, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    .line 678
    .local v1, "failedAttempts":I
    sget-boolean v10, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportFailedPatternAttempt: #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 681
    .local v3, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v10, :cond_3

    move v7, v8

    .line 683
    .local v7, "usingPattern":Z
    :goto_0
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    .line 686
    .local v2, "failedAttemptsBeforeWipe":I
    const/16 v0, 0xf

    .line 689
    .local v0, "failedAttemptWarning":I
    if-lez v2, :cond_4

    sub-int v5, v2, v1

    .line 693
    .local v5, "remainingBeforeWipe":I
    :goto_1
    const/4 v6, 0x0

    .line 694
    .local v6, "showTimeout":Z
    const/4 v10, 0x5

    if-ge v5, v10, :cond_6

    .line 699
    if-lez v5, :cond_5

    .line 700
    invoke-direct {p0, v1, v5}, Lcom/android/keyguard/KeyguardHostView;->showAlmostAtWipeDialog(II)V

    .line 721
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 722
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 723
    if-eqz v6, :cond_2

    .line 724
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showTimeoutDialog()V

    .line 726
    :cond_2
    return-void

    .end local v0    # "failedAttemptWarning":I
    .end local v2    # "failedAttemptsBeforeWipe":I
    .end local v5    # "remainingBeforeWipe":I
    .end local v6    # "showTimeout":Z
    .end local v7    # "usingPattern":Z
    :cond_3
    move v7, v9

    .line 681
    goto :goto_0

    .line 689
    .restart local v0    # "failedAttemptWarning":I
    .restart local v2    # "failedAttemptsBeforeWipe":I
    .restart local v7    # "usingPattern":Z
    :cond_4
    const v5, 0x7fffffff

    goto :goto_1

    .line 703
    .restart local v5    # "remainingBeforeWipe":I
    .restart local v6    # "showTimeout":Z
    :cond_5
    const-string v8, "KeyguardHostView"

    const-string v9, "Too many unlock attempts; device will be wiped!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->showWipeDialog(I)V

    goto :goto_2

    .line 707
    :cond_6
    rem-int/lit8 v10, v1, 0x5

    if-nez v10, :cond_7

    move v6, v8

    .line 709
    :goto_3
    if-eqz v7, :cond_1

    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardHostView;->mEnableFallback:Z

    if-eqz v9, :cond_1

    .line 710
    const/16 v9, 0xf

    if-ne v1, v9, :cond_8

    .line 711
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAlmostAtAccountLoginDialog()V

    .line 712
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    move v6, v9

    .line 707
    goto :goto_3

    .line 713
    :cond_8
    const/16 v9, 0x14

    if-lt v1, v9, :cond_1

    .line 714
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 715
    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v8}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 717
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private setBackButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v0

    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v0

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method private setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1452
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 1453
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 1455
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 1456
    .local v0, "cameraWidget":Lcom/android/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->setInsets(Landroid/graphics/Rect;)V

    .line 1457
    :cond_2
    return-void
.end method

.method private shouldEnableAddWidget()Z
    .locals 2

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 1670
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1671
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1672
    .local v0, "configDisabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 1673
    .local v2, "isTestHarness":Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1674
    .local v1, "fileOverride":Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 666
    const/16 v2, 0x1e

    .line 667
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 669
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v4, 0x7f050082

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v2, 0x7f050080

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method private showAppropriateWidgetPage()V
    .locals 4

    .prologue
    .line 1475
    iget v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 1476
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->ensureTransportPresentOrRemoved(I)Z

    move-result v2

    .line 1477
    .local v2, "transportAdded":Z
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->getAppropriateWidgetPage(I)I

    move-result v0

    .line 1478
    .local v0, "pageToShow":I
    if-nez v2, :cond_1

    .line 1479
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1483
    new-instance v3, Lcom/android/keyguard/KeyguardHostView$11;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardHostView$11;-><init>(Lcom/android/keyguard/KeyguardHostView;I)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private showBackupSecurityScreen()V
    .locals 3

    .prologue
    .line 751
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 753
    .local v0, "backup":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 754
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 619
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 624
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 627
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 628
    return-void
.end method

.method private showNextSecurityScreenOrFinish(Z)V
    .locals 8
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 769
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showNextSecurityScreenOrFinish("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    const/4 v1, 0x0

    .line 771
    .local v1, "finish":Z
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_4

    .line 772
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 774
    .local v2, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 775
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v2, :cond_3

    .line 776
    const/4 v1, 0x1

    .line 809
    .end local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_0
    if-eqz v1, :cond_8

    .line 812
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "deferKeyguardDone":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v3, :cond_1

    .line 818
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 819
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 821
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v3, :cond_2

    .line 822
    if-eqz v0, :cond_7

    .line 823
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDonePending()V

    .line 831
    .end local v0    # "deferKeyguardDone":Z
    :cond_2
    :goto_1
    return-void

    .line 778
    .restart local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 780
    .end local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    if-eqz p1, :cond_6

    .line 781
    sget-object v3, Lcom/android/keyguard/KeyguardHostView$13;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 802
    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad security screen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fail safe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 787
    :pswitch_0
    const/4 v1, 0x1

    .line 788
    goto :goto_0

    .line 793
    :pswitch_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 794
    .restart local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_5

    .line 795
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 797
    :cond_5
    const/4 v1, 0x1

    .line 799
    goto :goto_0

    .line 807
    .end local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 825
    .restart local v0    # "deferKeyguardDone":Z
    :cond_7
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_1

    .line 829
    .end local v0    # "deferKeyguardDone":Z
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto :goto_1

    .line 781
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 13
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 971
    sget-boolean v10, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showSecurityScreen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_1

    .line 1028
    :goto_0
    return-void

    .line 975
    :cond_1
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v10}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v6

    .line 976
    .local v6, "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v5

    .line 979
    .local v5, "newView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 980
    .local v1, "fullScreenEnabled":Z
    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_2

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_2

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_a

    :cond_2
    move v3, v9

    .line 983
    .local v3, "isSimOrAccount":Z
    :goto_1
    iget-object v11, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v11, v10}, Lcom/android/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 987
    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v10

    const/high16 v11, 0x2000000

    or-int/2addr v10, v11

    :goto_3
    invoke-virtual {p0, v10}, Lcom/android/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    .line 991
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_4

    .line 992
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-nez v1, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {v10, v8}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 996
    :cond_4
    if-eqz v6, :cond_5

    .line 997
    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 998
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 1000
    :cond_5
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1001
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v8}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 1003
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v4

    .line 1004
    .local v4, "needsInput":Z
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v8, :cond_6

    .line 1005
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v8, v4}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 1009
    :cond_6
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 1011
    .local v0, "childCount":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v7

    .line 1012
    .local v7, "securityViewIdForMode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_7

    .line 1013
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v7, :cond_d

    .line 1014
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 1019
    :cond_7
    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v8, :cond_8

    .line 1021
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 1023
    :cond_8
    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v8, :cond_9

    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1025
    invoke-direct {p0, v9}, Lcom/android/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 1027
    :cond_9
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_0

    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "isSimOrAccount":Z
    .end local v4    # "needsInput":Z
    .end local v7    # "securityViewIdForMode":I
    :cond_a
    move v3, v8

    .line 980
    goto :goto_1

    .restart local v3    # "isSimOrAccount":Z
    :cond_b
    move v10, v8

    .line 983
    goto :goto_2

    .line 987
    :cond_c
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v10

    const v11, -0x2000001

    and-int/2addr v10, v11

    goto :goto_3

    .line 1012
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "needsInput":Z
    .restart local v7    # "securityViewIdForMode":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 631
    const/16 v2, 0x1e

    .line 632
    .local v2, "timeoutInSeconds":I
    const/4 v1, 0x0

    .line 634
    .local v1, "messageId":I
    sget-object v3, Lcom/android/keyguard/KeyguardHostView$13;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 646
    :goto_0
    if-eqz v1, :cond_0

    .line 647
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void

    .line 636
    :pswitch_0
    const v1, 0x7f05007f

    .line 637
    goto :goto_0

    .line 639
    :pswitch_1
    const v1, 0x7f05007d

    .line 640
    goto :goto_0

    .line 642
    :pswitch_2
    const v1, 0x7f05007e

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showWipeDialog(I)V
    .locals 6
    .param p1, "attempts"    # I

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v2, 0x7f050081

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method private updateAndAddWidgets()V
    .locals 2

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    .line 405
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addDefaultWidgets()V

    .line 406
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    .line 407
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->maybeEnableAddButton()V

    .line 408
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setEnableChallengeDragging(Z)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 420
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 469
    instance-of v1, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 470
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 471
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 472
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 473
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 481
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 476
    .restart local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 479
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1
    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSecurityViews()V
    .locals 3

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 463
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method private widgetsDisabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 449
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 450
    .local v1, "disabledByLowRamDevice":Z
    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v0, v3

    .line 452
    .local v0, "disabledByDpm":Z
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 453
    .local v2, "disabledByUser":Z
    :goto_1
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v0    # "disabledByDpm":Z
    .end local v2    # "disabledByUser":Z
    :cond_2
    move v0, v4

    .line 450
    goto :goto_0

    .restart local v0    # "disabledByDpm":Z
    :cond_3
    move v2, v4

    .line 452
    goto :goto_1
.end method


# virtual methods
.method addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .locals 1
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "pageIndex"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 505
    return-void
.end method

.method public announceCurrentSecurityMethod()V
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 210
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1317
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    .line 1318
    .local v2, "childCount":I
    const/4 v6, 0x0

    .line 1319
    .local v6, "widgetPageExists":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1320
    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1321
    const/4 v6, 0x1

    .line 1325
    :cond_0
    if-nez v6, :cond_3

    .line 1326
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 1328
    .local v4, "insertPageIndex":I
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v9

    if-nez v9, :cond_5

    move v5, v7

    .line 1330
    .local v5, "userAddedWidgetsEnabled":Z
    :goto_1
    const/4 v0, 0x0

    .line 1332
    .local v0, "addedDefaultAppWidget":Z
    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v9, :cond_1

    .line 1333
    if-eqz v5, :cond_6

    .line 1334
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1335
    .local v1, "appWidgetId":I
    if-eqz v1, :cond_1

    .line 1336
    invoke-direct {p0, v1, v4, v7}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1360
    .end local v1    # "appWidgetId":I
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 1361
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1365
    :cond_2
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    .line 1366
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    .line 1370
    .end local v0    # "addedDefaultAppWidget":Z
    .end local v4    # "insertPageIndex":I
    .end local v5    # "userAddedWidgetsEnabled":Z
    :cond_3
    return-void

    .line 1319
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v4    # "insertPageIndex":I
    :cond_5
    move v5, v8

    .line 1328
    goto :goto_1

    .line 1341
    .restart local v0    # "addedDefaultAppWidget":Z
    .restart local v5    # "userAddedWidgetsEnabled":Z
    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 1342
    .restart local v1    # "appWidgetId":I
    if-nez v1, :cond_7

    .line 1343
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1344
    if-eqz v1, :cond_7

    .line 1345
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    .line 1348
    :cond_7
    if-eqz v1, :cond_1

    .line 1349
    invoke-direct {p0, v1, v4, v8}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1350
    if-nez v0, :cond_1

    .line 1351
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1352
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_2
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    .line 1653
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1654
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1655
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 1656
    .local v1, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->removeAllViews()V

    .line 1654
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1658
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->onPause()V

    .line 1659
    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1073
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1709
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1710
    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->handleExternalCameraEvent(Landroid/view/MotionEvent;)V

    .line 1730
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 336
    :cond_0
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 1446
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    .line 1447
    const/4 v0, 0x1

    return v0
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    .line 570
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public goToWidget(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1678
    iput p1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1679
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1680
    return-void
.end method

.method public handleBackKey()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1692
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_0

    .line 1694
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 1695
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1702
    :goto_0
    return v0

    .line 1698
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_1

    .line 1699
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1702
    goto :goto_0
.end method

.method public handleMenuKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1684
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1685
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1686
    const/4 v0, 0x1

    .line 1688
    :cond_0
    return v0
.end method

.method public initializeSwitchingUserState(Z)V
    .locals 2
    .param p1, "switching"    # Z

    .prologue
    .line 546
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 549
    :cond_0
    return-void
.end method

.method public launchCamera()V
    .locals 3

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1734
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onAttachedToWindow()V

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 494
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 498
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onDetachedFromWindow()V

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 500
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 501
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 357
    const v2, 0x7f0a0028

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 358
    .local v1, "deleteDropTarget":Landroid/view/View;
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetPager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 359
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 361
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setDeleteDropTarget(Landroid/view/View;)V

    .line 362
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setMinScale(F)V

    .line 364
    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/SlidingChallengeLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    .line 365
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V

    .line 369
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 371
    const v2, 0x7f0a0027

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/MultiPaneChallengeLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    .line 373
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    :goto_0
    check-cast v0, Lcom/android/keyguard/ChallengeLayout;

    .line 375
    .local v0, "challenge":Lcom/android/keyguard/ChallengeLayout;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v2}, Lcom/android/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 376
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 377
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V

    .line 378
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V

    .line 379
    const v2, 0x7f0a002b

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 380
    const v2, 0x7f0a0048

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSelectorView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;

    .line 381
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V

    .line 383
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 385
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    .line 398
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 399
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 400
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 401
    return-void

    .line 373
    .end local v0    # "challenge":Lcom/android/keyguard/ChallengeLayout;
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    goto :goto_0

    .line 390
    .restart local v0    # "challenge":Lcom/android/keyguard/ChallengeLayout;
    :cond_2
    new-instance v2, Lcom/android/keyguard/KeyguardHostView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostView$2;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1431
    instance-of v1, p1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_0

    .line 1432
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1442
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1435
    check-cast v0, Lcom/android/keyguard/KeyguardHostView$SavedState;

    .line 1436
    .local v0, "ss":Lcom/android/keyguard/KeyguardHostView$SavedState;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1437
    iget v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 1438
    iget v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1439
    iget-object v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    .line 1440
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState, transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1417
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState, tstate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1419
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1421
    .local v1, "ss":Lcom/android/keyguard/KeyguardHostView$SavedState;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    .line 1423
    .local v0, "showing":Z
    :goto_0
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    :goto_1
    iput v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 1424
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1425
    iget-object v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1426
    return-object v1

    .line 1421
    .end local v0    # "showing":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1423
    .restart local v0    # "showing":Z
    :cond_2
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    goto :goto_1
.end method

.method public onScreenTurnedOff()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1050
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "screen off, instance %s at %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1057
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 1058
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 1061
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1062
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 1063
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 1064
    .local v0, "cameraPage":Lcom/android/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_2

    .line 1065
    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 1068
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearFocus()V

    .line 1069
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 1032
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on, instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1034
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1039
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->requestLayout()V

    .line 1041
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 1045
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->requestFocus()Z

    .line 1046
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 322
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 323
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardHostView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 324
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 325
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 326
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 327
    return v0

    :cond_1
    move v0, v1

    .line 325
    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 561
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1461
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onWindowFocusChanged(Z)V

    .line 1462
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v1, "focused"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_2

    .line 1464
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 1466
    .local v0, "slider":Lcom/android/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_1

    .line 1467
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 1468
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1470
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 1472
    .end local v0    # "slider":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_2
    return-void

    .line 1462
    :cond_3
    const-string v1, "unfocused"

    goto :goto_0
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 485
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 486
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 487
    return-void
.end method

.method protected setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 933
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1077
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1079
    return-void
.end method

.method public showAssistant()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1713
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v2, v3, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 1716
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 1726
    :goto_0
    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f040000

    const v3, 0x7f040001

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1722
    .local v6, "opts":Landroid/app/ActivityOptions;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1724
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .param p1, "turningOff"    # Z

    .prologue
    .line 734
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 735
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 742
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 743
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 555
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1083
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1084
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    .line 1092
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 1097
    :cond_2
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 1098
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0
.end method
