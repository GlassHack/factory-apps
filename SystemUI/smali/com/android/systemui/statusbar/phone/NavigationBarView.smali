.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityClickListener:Landroid/view/View$OnClickListener;

.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field mBarSize:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private mCameraDisabledByDpm:Z

.field private final mCameraTouchListener:Landroid/view/View$OnTouchListener;

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field mNavigationIconHints:I

.field private mRecentIcon:Landroid/graphics/drawable/Drawable;

.field private mRecentLandIcon:Landroid/graphics/drawable/Drawable;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowMenu:Z

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 71
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 78
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 79
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 97
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    .line 145
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityClickListener:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCameraTouchListener:Landroid/view/View$OnTouchListener;

    .line 262
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 201
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 206
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 207
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 208
    new-instance v1, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    .line 210
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 212
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isCameraDisabledByDpm()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCameraDisabledByDpm:Z

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->watchForDevicePolicyChanges()V

    .line 216
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/DelegateViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCameraDisabledByDpm:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isCameraDisabledByDpm()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->enableAccessibility(Z)V

    return-void
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/view/View;

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    if-nez p2, :cond_1

    .line 638
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    .end local p2    # "button":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 650
    return-void

    .line 640
    .restart local p2    # "button":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " drawingAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawingAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quiescentAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local p2    # "button":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getQuiescentAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableAccessibility(Z)V
    .locals 9
    .param p1, "touchEnabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 475
    const-string v6, "PhoneStatusBar/NavigationBarView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "touchEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityClickListener:Landroid/view/View$OnClickListener;

    .line 480
    .local v3, "onClickListener":Landroid/view/View$OnClickListener;
    :goto_0
    if-eqz p1, :cond_3

    .line 481
    .local v4, "onTouchListener":Landroid/view/View$OnTouchListener;
    :goto_1
    const/4 v1, 0x0

    .line 482
    .local v1, "hasCamera":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 483
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v6, v6, v2

    const v7, 0x7f070015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, "cameraButton":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v6, v6, v2

    const v7, 0x7f070014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 485
    .local v5, "searchLight":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 486
    const/4 v1, 0x1

    .line 487
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    :cond_0
    if-eqz v5, :cond_1

    .line 491
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "cameraButton":Landroid/view/View;
    .end local v1    # "hasCamera":Z
    .end local v2    # "i":I
    .end local v3    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v4    # "onTouchListener":Landroid/view/View$OnTouchListener;
    .end local v5    # "searchLight":Landroid/view/View;
    :cond_2
    move-object v3, v4

    .line 479
    goto :goto_0

    .line 480
    .restart local v3    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCameraTouchListener:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 494
    .restart local v1    # "hasCamera":Z
    .restart local v2    # "i":I
    .restart local v4    # "onTouchListener":Landroid/view/View$OnTouchListener;
    :cond_4
    if-eqz v1, :cond_5

    .line 497
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 499
    :cond_5
    return-void
.end method

.method private getIcons(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v1, 0x7f020067

    .line 295
    const v0, 0x7f020066

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 296
    const v0, 0x7f020068

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 297
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 298
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 299
    const v0, 0x7f020072

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    .line 300
    const v0, 0x7f020073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    .line 301
    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 575
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 580
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 576
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 577
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 580
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private isCameraDisabledByDpm()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 397
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 399
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    .line 401
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 402
    .local v4, "userId":I
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 403
    .local v1, "disabledFlags":I
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 406
    .local v0, "disabledBecauseKeyguardSecure":Z
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v6

    .line 411
    .end local v0    # "disabledBecauseKeyguardSecure":Z
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :cond_1
    :goto_1
    return v5

    .restart local v1    # "disabledFlags":I
    .restart local v4    # "userId":I
    :cond_2
    move v0, v5

    .line 403
    goto :goto_0

    .line 407
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v3

    .line 408
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "PhoneStatusBar/NavigationBarView"

    const-string v7, "Can\'t get userId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 586
    return-void
.end method

.method private setVisibleOrGone(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    .line 391
    if-eqz p1, :cond_0

    .line 392
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_0
    return-void

    .line 392
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "vis"    # I

    .prologue
    .line 589
    sparse-switch p0, :sswitch_data_0

    .line 595
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 591
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 593
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 589
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private watchForAccessibilityChanges()V
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 463
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->enableAccessibility(Z)V

    .line 466
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 472
    return-void
.end method

.method private watchForDevicePolicyChanges()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 600
    const-string v5, "NavigationBarView {"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 602
    .local v1, "r":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 603
    .local v2, "size":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      this: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 609
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    if-gt v5, v6, :cond_0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_1

    :cond_0
    move v0, v4

    .line 610
    .local v0, "offscreen":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      window: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string v5, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const-string v5, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const-string v5, "      disabled=0x%08x vertical=%s menu=%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    const-string v3, "true"

    :goto_2
    aput-object v3, v6, v4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v3, :cond_4

    const-string v3, "true"

    :goto_3
    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    const-string v3, "back"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 626
    const-string v3, "home"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 627
    const-string v3, "rcnt"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 628
    const-string v3, "menu"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 629
    const-string v3, "srch"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 630
    const-string v3, "cmra"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 632
    const-string v3, "    }"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    return-void

    .end local v0    # "offscreen":Z
    :cond_1
    move v0, v3

    .line 609
    goto/16 :goto_0

    .line 610
    .restart local v0    # "offscreen":Z
    :cond_2
    const-string v5, ""

    goto/16 :goto_1

    .line 620
    :cond_3
    const-string v3, "false"

    goto :goto_2

    :cond_4
    const-string v3, "false"

    goto :goto_3
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getCameraButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSearchLight()Landroid/view/View;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const v5, 0x7f070017

    const/4 v4, 0x0

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v2, 0x2

    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v3, v0, v4

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->watchForAccessibilityChanges()V

    .line 456
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 529
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 531
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 538
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 539
    .local v0, "newVertical":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 540
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 545
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 546
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 547
    return-void

    .line 538
    .end local v0    # "newVertical":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 252
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 254
    .end local v0    # "ret":Z
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public reorient()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 506
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 507
    .local v1, "rot":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 511
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 516
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init(Z)V

    .line 517
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 518
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 524
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 525
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 243
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .param p1, "disabledFlags"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 344
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 13
    .param p1, "disabledFlags"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 347
    if-nez p2, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v8, p1, :cond_0

    .line 388
    :goto_0
    return-void

    .line 349
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 351
    const/high16 v8, 0x200000

    and-int/2addr v8, p1

    if-eqz v8, :cond_3

    move v1, v9

    .line 352
    .local v1, "disableHome":Z
    :goto_1
    const/high16 v8, 0x1000000

    and-int/2addr v8, p1

    if-eqz v8, :cond_4

    move v2, v9

    .line 353
    .local v2, "disableRecent":Z
    :goto_2
    const/high16 v8, 0x400000

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_5

    move v0, v9

    .line 355
    .local v0, "disableBack":Z
    :goto_3
    const/high16 v8, 0x2000000

    and-int/2addr v8, p1

    if-eqz v8, :cond_6

    move v3, v9

    .line 358
    .local v3, "disableSearch":Z
    :goto_4
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    move v8, v9

    :goto_5
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 361
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v12, 0x7f07000e

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 362
    .local v5, "navButtons":Landroid/view/ViewGroup;
    if-eqz v5, :cond_2

    .line 363
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 364
    .local v4, "lt":Landroid/animation/LayoutTransition;
    if-eqz v4, :cond_2

    .line 365
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v8

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 366
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v4, v8}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 368
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 369
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 378
    .end local v4    # "lt":Landroid/animation/LayoutTransition;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v12

    if-eqz v0, :cond_8

    move v8, v11

    :goto_6
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v12

    if-eqz v1, :cond_9

    move v8, v11

    :goto_7
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v8

    if-eqz v2, :cond_a

    :goto_8
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 382
    if-eqz v1, :cond_b

    if-nez v3, :cond_b

    move v7, v9

    .line 383
    .local v7, "showSearch":Z
    :goto_9
    if-eqz v7, :cond_c

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCameraDisabledByDpm:Z

    if-nez v8, :cond_c

    move v6, v9

    .line 384
    .local v6, "showCamera":Z
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 387
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v10

    invoke-virtual {v8, v10, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyBackButtonQuiescentAlpha(IZ)V

    goto/16 :goto_0

    .end local v0    # "disableBack":Z
    .end local v1    # "disableHome":Z
    .end local v2    # "disableRecent":Z
    .end local v3    # "disableSearch":Z
    .end local v5    # "navButtons":Landroid/view/ViewGroup;
    .end local v6    # "showCamera":Z
    .end local v7    # "showSearch":Z
    :cond_3
    move v1, v10

    .line 351
    goto/16 :goto_1

    .restart local v1    # "disableHome":Z
    :cond_4
    move v2, v10

    .line 352
    goto/16 :goto_2

    .restart local v2    # "disableRecent":Z
    :cond_5
    move v0, v10

    .line 353
    goto/16 :goto_3

    .restart local v0    # "disableBack":Z
    :cond_6
    move v3, v10

    .line 355
    goto/16 :goto_4

    .restart local v3    # "disableSearch":Z
    :cond_7
    move v8, v10

    .line 358
    goto/16 :goto_5

    .restart local v5    # "navButtons":Landroid/view/ViewGroup;
    :cond_8
    move v8, v10

    .line 378
    goto :goto_6

    :cond_9
    move v8, v10

    .line 379
    goto :goto_7

    :cond_a
    move v11, v10

    .line 380
    goto :goto_8

    :cond_b
    move v7, v10

    .line 382
    goto :goto_9

    .restart local v7    # "showSearch":Z
    :cond_c
    move v6, v10

    .line 383
    goto :goto_a
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 307
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 308
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 432
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 435
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 317
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 4
    .param p1, "hints"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v2, 0x1

    .line 320
    if-nez p2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 321
    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    move v0, v2

    .line 322
    .local v0, "backAlt":Z
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 331
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    goto :goto_0

    .line 321
    .end local v0    # "backAlt":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 333
    .restart local v0    # "backAlt":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 337
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method public setSlippery(Z)V
    .locals 5
    .param p1, "newSlippery"    # Z

    .prologue
    const/high16 v4, 0x20000000

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 416
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 417
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 418
    .local v1, "oldSlippery":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 419
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 425
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 426
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    .end local v1    # "oldSlippery":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 417
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 420
    .restart local v1    # "oldSlippery":Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 421
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
