.class public Lcom/android/keyguard/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;,
        Lcom/android/keyguard/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

.field private mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedsInput:Z

.field private mScreenOn:Z

.field mStateContainer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManager:Landroid/view/ViewManager;

.field private final mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewManager"    # Landroid/view/ViewManager;
    .param p3, "callback"    # Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .param p4, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 85
    new-instance v0, Lcom/android/keyguard/KeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewManager$1;-><init>(Lcom/android/keyguard/KeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 263
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    .line 107
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 109
    iput-object p3, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 110
    iput-object p4, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardViewManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method private inflateKeyguardView(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0a0026

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 321
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 322
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 323
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v5, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->removeView(Landroid/view/View;)V

    .line 325
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 326
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 327
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardHostView;

    iput-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 328
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 329
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 330
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p1, :cond_3

    const-string v5, "is_switching_user"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/android/keyguard/KeyguardHostView;->initializeSwitchingUserState(Z)V

    .line 336
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v5, :cond_1

    .line 337
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const v6, 0x7f0a0032

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardPasswordView;

    .line 340
    .local v1, "kpv":Lcom/android/keyguard/KeyguardPasswordView;
    if-eqz v1, :cond_1

    .line 341
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardPasswordView;->needsInput()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 345
    .end local v1    # "kpv":Lcom/android/keyguard/KeyguardPasswordView;
    :cond_1
    if-eqz p1, :cond_2

    .line 346
    const-string v5, "showappwidget"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 348
    .local v4, "widgetToShow":I
    if-eqz v4, :cond_2

    .line 349
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardHostView;->goToWidget(I)V

    .line 352
    .end local v4    # "widgetToShow":I
    :cond_2
    return-void

    :cond_3
    move v5, v7

    .line 330
    goto :goto_0
.end method

.method private maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "enableScreenRotation"    # Z
    .param p2, "force"    # Z
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 267
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    if-nez v2, :cond_3

    .line 274
    new-instance v2, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;-><init>(Lcom/android/keyguard/KeyguardViewManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    .line 276
    const v4, 0x110900

    .line 281
    .local v4, "flags":I
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    if-nez v2, :cond_1

    .line 282
    const/high16 v2, 0x20000

    or-int/2addr v4, v2

    .line 285
    :cond_1
    const/4 v6, -0x1

    .line 286
    .local v6, "stretch":I
    const/16 v7, 0x7d4

    .line 287
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d4

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 289
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 290
    const v1, 0x7f0d0003

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 291
    if-eqz p1, :cond_6

    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 294
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 296
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 299
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 300
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 301
    const-string v1, "Keyguard"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 303
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 308
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "stretch":I
    .end local v7    # "type":I
    :cond_3
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-nez v1, :cond_5

    .line 309
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->removeAllViews()V

    .line 311
    invoke-direct {p0, p3}, Lcom/android/keyguard/KeyguardViewManager;->inflateKeyguardView(Landroid/os/Bundle;)V

    .line 312
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->requestFocus()Z

    .line 314
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 315
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 318
    return-void

    .line 291
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v6    # "stretch":I
    .restart local v7    # "type":I
    :cond_6
    const/4 v1, 0x5

    goto :goto_0
.end method

.method private maybeEnableScreenRotation(Z)V
    .locals 3
    .param p1, "enableScreenRotation"    # Z

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private shouldEnableScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7f070000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private shouldEnableTranslucentDecor()Z
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private updateUserActivityTimeoutInWindowLayoutParams()V
    .locals 5

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->getUserActivityTimeout()J

    move-result-wide v0

    .line 363
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 371
    .end local v0    # "timeout":J
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v3, 0x2710

    iput-wide v3, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :cond_0
    monitor-exit p0

    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->dispatch(Landroid/view/MotionEvent;)V

    .line 548
    :cond_0
    return-void
.end method

.method public declared-synchronized hide()V
    .locals 5

    .prologue
    .line 492
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 502
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 504
    .local v0, "lastView":Lcom/android/keyguard/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 505
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    new-instance v2, Lcom/android/keyguard/KeyguardViewManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardViewManager$3;-><init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/keyguard/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    .end local v0    # "lastView":Lcom/android/keyguard/KeyguardViewBase;
    :cond_0
    monitor-exit p0

    return-void

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public launchCamera()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->launchCamera()V

    .line 554
    :cond_0
    return-void
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 427
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :cond_0
    monitor-exit p0

    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 435
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 439
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 444
    .local v1, "token":Landroid/os/IBinder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v2, :cond_3

    .line 445
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->onScreenTurnedOn()V

    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 453
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    new-instance v3, Lcom/android/keyguard/KeyguardViewManager$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/keyguard/KeyguardViewManager$2;-><init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 439
    .end local v1    # "token":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 465
    .restart local v1    # "token":Landroid/os/IBinder;
    :cond_2
    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling onShown():"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 471
    .restart local v1    # "token":Landroid/os/IBinder;
    :cond_3
    if-eqz p1, :cond_0

    .line 473
    :try_start_3
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 474
    :catch_1
    move-exception v0

    .line 475
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling onShown():"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized reset(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .locals 4
    .param p1, "needsInput"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 397
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 398
    if-eqz p1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 407
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized show(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    .line 122
    .local v0, "enableScreenRotation":Z
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewManager;->maybeEnableScreenRotation(Z)V

    .line 129
    const/high16 v1, 0x200000

    .line 130
    .local v1, "visFlags":I
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableTranslucentDecor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0xc000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setSystemUiVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->show()V

    .line 140
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->requestFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 120
    .end local v0    # "enableScreenRotation":Z
    .end local v1    # "visFlags":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->showAssistant()V

    .line 542
    :cond_0
    return-void
.end method

.method updateShowWallpaper(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public updateUserActivityTimeout()V
    .locals 3

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    return-void
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 1

    .prologue
    .line 482
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 483
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
