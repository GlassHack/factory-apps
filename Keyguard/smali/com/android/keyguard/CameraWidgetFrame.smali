.class public Lcom/android/keyguard/CameraWidgetFrame;
.super Lcom/android/keyguard/KeyguardWidgetFrame;
.source "CameraWidgetFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;,
        Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mDown:Z

.field private mFakeNavBar:Landroid/view/View;

.field private mFullscreenPreview:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mInsets:Landroid/graphics/Rect;

.field private mLaunchCameraStart:J

.field private final mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

.field private final mRecoverRunnable:Ljava/lang/Runnable;

.field private final mRenderRunnable:Ljava/lang/Runnable;

.field private final mRenderedSize:Landroid/graphics/Point;

.field private final mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

.field private final mTmpLoc:[I

.field private final mTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private final mTransitionToCameraRunnable:Ljava/lang/Runnable;

.field private mTransitioning:Z

.field private mUseFastTransition:Z

.field private final mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    .param p3, "activityLauncher"    # Lcom/android/keyguard/KeyguardActivityLauncher;
    .param p4, "widgetInfo"    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    .param p5, "previewWidget"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    .line 58
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    .line 72
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$1;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$2;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    .line 89
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$3;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    .line 95
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$4;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    .line 101
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$5;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    .line 107
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$6;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$7;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 145
    iput-object p2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    .line 146
    iput-object p3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    .line 147
    iput-object p4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    .line 148
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 149
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 151
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-direct {v1, p1}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v1, p5}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    .line 155
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "clickBlocker":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    .line 160
    const v1, 0x7f050036

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    sget-boolean v1, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new CameraWidgetFrame instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/CameraWidgetFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->render()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/CameraWidgetFrame;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CameraWidgetFrame;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/CameraWidgetFrame;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/CameraWidgetFrame;)Lcom/android/keyguard/KeyguardActivityLauncher;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->recover()V

    return-void
.end method

.method private cancelTransitionToCamera()V
    .locals 4

    .prologue
    .line 426
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callbacks"    # Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    .param p2, "launcher"    # Lcom/android/keyguard/KeyguardActivityLauncher;

    .prologue
    const/4 v0, 0x0

    .line 166
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCameraWidgetInfo()Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    move-result-object v4

    .line 170
    .local v4, "widgetInfo":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    if-eqz v4, :cond_0

    .line 172
    invoke-static {p0, v4}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v5

    .line 173
    .local v5, "previewWidget":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 176
    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/CameraWidgetFrame;-><init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V

    goto :goto_0
.end method

.method private enableWindowExitAnimation(Z)V
    .locals 8
    .param p1, "isEnabled"    # Z

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 476
    .local v2, "root":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 477
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    .line 479
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 480
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_3

    const v1, 0x7f0d0003

    .line 481
    .local v1, "newWindowAnimations":I
    :goto_1
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v4, :cond_0

    .line 482
    sget-boolean v4, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting windowAnimations to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 485
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 480
    .end local v1    # "newWindowAnimations":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetInfo"    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    .prologue
    .line 180
    iget v0, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 208
    sget-boolean v1, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v2, "inflateGenericWidgetView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, "iv":Landroid/widget/ImageView;
    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
    const/16 v1, 0x7f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 213
    return-object v0
.end method

.method private static inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetInfo"    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    .prologue
    .line 186
    sget-boolean v5, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inflateWidgetView: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    const/4 v4, 0x0

    .line 188
    .local v4, "widgetView":Landroid/view/View;
    const/4 v3, 0x0

    .line 190
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_0
    iget-object v5, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, "cameraContext":Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 194
    .local v1, "cameraInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 195
    iget v5, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 201
    .end local v0    # "cameraContext":Landroid/content/Context;
    .end local v1    # "cameraInflater":Landroid/view/LayoutInflater;
    :goto_0
    if-eqz v3, :cond_1

    .line 202
    sget-object v5, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v6, "Error creating camera widget view"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_1
    return-object v4

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v2

    .line 200
    goto :goto_0

    .line 198
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v3, v2

    goto :goto_0
.end method

.method private instanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCameraLaunched()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedSuccessfully()V

    .line 432
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    .line 433
    return-void
.end method

.method private onKeyguardVisibilityChanged(Z)V
    .locals 9
    .param p1, "showing"    # Z

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 490
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 493
    iput-boolean v6, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 494
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    iget-wide v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_2

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    sub-long v0, v2, v4

    .line 497
    .local v0, "launchTime":J
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v3, "Camera took %sms to launch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    iput-wide v7, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    .line 499
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onCameraLaunched()V

    .line 502
    .end local v0    # "launchTime":J
    :cond_2
    return-void
.end method

.method private onSecureCameraActivityStarted()V
    .locals 4

    .prologue
    .line 505
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecureCameraActivityStarted at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    return-void
.end method

.method private recover()V
    .locals 4

    .prologue
    .line 343
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recovering at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedUnsuccessfully()V

    .line 345
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    .line 346
    return-void
.end method

.method private render()V
    .locals 20

    .prologue
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 218
    .local v10, "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v13, v14, v15

    .line 219
    .local v13, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v14, v15

    .line 220
    .local v1, "height":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    if-ne v14, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    if-ne v14, v1, :cond_1

    .line 221
    sget-boolean v14, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v15, "Already rendered at size=%sx%s %d%%"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/high16 v18, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleX()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    if-eqz v13, :cond_0

    if-eqz v1, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v13, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v1, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->requestLayout()V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingRight()I

    move-result v15

    sub-int v12, v14, v15

    .line 234
    .local v12, "thisWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingBottom()I

    move-result v15

    sub-int v11, v14, v15

    .line 236
    .local v11, "thisHeight":I
    int-to-float v14, v12

    int-to-float v15, v13

    div-float v5, v14, v15

    .line 237
    .local v5, "pvScaleX":F
    int-to-float v14, v11

    int-to-float v15, v1

    div-float v6, v14, v15

    .line 238
    .local v6, "pvScaleY":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 240
    .local v4, "pvScale":F
    int-to-float v14, v13

    mul-float/2addr v14, v4

    float-to-int v9, v14

    .line 241
    .local v9, "pvWidth":I
    int-to-float v14, v1

    mul-float/2addr v14, v4

    float-to-int v3, v14

    .line 243
    .local v3, "pvHeight":I
    if-ge v9, v12, :cond_2

    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    int-to-float v7, v14

    .line 244
    .local v7, "pvTransX":F
    :goto_1
    if-ge v3, v11, :cond_3

    sub-int v14, v11, v3

    div-int/lit8 v14, v14, 0x2

    int-to-float v8, v14

    .line 246
    .local v8, "pvTransY":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v2, 0x1

    .line 247
    .local v2, "isRtl":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget v14, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    int-to-float v14, v14

    :goto_4
    invoke-virtual {v15, v14}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setPivotX(F)V

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setPivotY(F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v4}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setScaleX(F)V

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v4}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setScaleY(F)V

    .line 251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-eqz v2, :cond_6

    const/4 v14, -0x1

    :goto_5
    int-to-float v14, v14

    mul-float/2addr v14, v7

    invoke-virtual {v15, v14}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setTranslationX(F)V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v8}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setTranslationY(F)V

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    invoke-virtual {v14, v13, v1}, Landroid/graphics/Point;->set(II)V

    .line 255
    sget-boolean v14, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v15, "Rendered camera widget size=%sx%s %d%% instance=%s"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/high16 v18, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleX()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 243
    .end local v2    # "isRtl":Z
    .end local v7    # "pvTransX":F
    .end local v8    # "pvTransY":F
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 244
    .restart local v7    # "pvTransX":F
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 246
    .restart local v8    # "pvTransY":F
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 247
    .restart local v2    # "isRtl":Z
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 251
    :cond_6
    const/4 v14, 0x1

    goto :goto_5
.end method

.method private rescheduleTransitionToCamera()V
    .locals 6

    .prologue
    .line 419
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rescheduleTransitionToCamera at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    .line 422
    .local v0, "duration":J
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    return-void

    .line 421
    .end local v0    # "duration":J
    :cond_1
    const-wide/16 v0, 0x190

    goto :goto_0
.end method

.method private reset()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 436
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    .line 438
    iput-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 439
    iput-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    .line 440
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 445
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    .line 452
    return-void
.end method

.method private transitionToCamera()V
    .locals 17

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    if-eqz v12, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 264
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    .line 267
    .local v7, "navHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v8, v12, Landroid/graphics/Rect;->right:I

    .line 269
    .local v8, "navWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {v12, v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getLocationInWindow([I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v12}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleY()F

    move-result v13

    mul-float v10, v12, v13

    .line 271
    .local v10, "pvHeight":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v10, v13

    add-float v9, v12, v13

    .line 273
    .local v9, "pvCenter":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 275
    .local v11, "root":Landroid/view/ViewGroup;
    sget-boolean v12, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v12, :cond_2

    .line 276
    sget-object v12, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "root = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLeft()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTop()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-nez v12, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-static {v12, v13}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setClickable(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    sub-int/2addr v15, v7

    invoke-direct {v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    :cond_3
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    sub-int/2addr v12, v7

    int-to-float v3, v12

    .line 289
    .local v3, "fsHeight":F
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTop()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v3, v13

    add-float v2, v12, v13

    .line 291
    .local v2, "fsCenter":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v12}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleY()F

    move-result v5

    .line 292
    .local v5, "fsScaleY":F
    sub-float v6, v9, v2

    .line 293
    .local v6, "fsTransY":F
    move v4, v5

    .line 295
    .local v4, "fsScaleX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setVisibility(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setScaleX(F)V

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v5}, Landroid/view/View;->setScaleY(F)V

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 310
    if-gtz v7, :cond_4

    if-lez v8, :cond_6

    .line 311
    :cond_4
    if-lez v7, :cond_7

    const/4 v1, 0x1

    .line 312
    .local v1, "atBottom":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-nez v12, :cond_5

    .line 313
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, -0x1000000

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_8

    const/4 v12, -0x1

    move v14, v12

    :goto_2
    if-eqz v1, :cond_9

    move v13, v7

    :goto_3
    if-eqz v1, :cond_a

    const/16 v12, 0x57

    :goto_4
    move-object/from16 v0, v16

    invoke-direct {v0, v14, v13, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v13, v7

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotY(F)V

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v13, v8

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotX(F)V

    .line 325
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    .line 326
    if-eqz v1, :cond_b

    .line 327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    .line 331
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 339
    .end local v1    # "atBottom":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v12}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onLaunchingCamera()V

    goto/16 :goto_0

    .line 311
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "atBottom":Z
    :cond_8
    move v14, v8

    .line 315
    goto :goto_2

    :cond_9
    const/4 v12, -0x1

    move v13, v12

    goto :goto_3

    :cond_a
    const/16 v12, 0x75

    goto :goto_4

    .line 329
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    goto :goto_5
.end method


# virtual methods
.method public onActive(Z)V
    .locals 1
    .param p1, "isActive"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    .line 376
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    goto :goto_0
.end method

.method public onBouncerShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v0, :cond_2

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 359
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 365
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 369
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method protected onFocusLost()V
    .locals 4

    .prologue
    .line 408
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusLost at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 410
    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->onFocusLost()V

    .line 411
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 414
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    .line 416
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onSizeChanged new=%sx%s old=%sx%s at %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    if-eq p1, p3, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    if-eq p2, p4, :cond_3

    if-lez p4, :cond_3

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    const/4 v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardWidgetFrame;->onSizeChanged(IIII)V

    .line 464
    return-void
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 385
    iget-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v4, :cond_1

    .line 386
    sget-boolean v3, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: mTransitioning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    :goto_0
    return v2

    .line 390
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/CameraWidgetFrame;->getLocationOnScreen([I)V

    .line 391
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 392
    .local v1, "rawBottom":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 393
    sget-boolean v3, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: below widget"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 398
    .local v0, "action":I
    if-eqz v0, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    .line 399
    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v2, :cond_4

    .line 400
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    .line 402
    :cond_4
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction observed, not eaten"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v3

    .line 403
    goto :goto_0

    :cond_6
    move v2, v3

    .line 398
    goto :goto_1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 514
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 516
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 351
    return-void
.end method

.method public setUseFastTransition(Z)V
    .locals 0
    .param p1, "useFastTransition"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    .line 520
    return-void
.end method
