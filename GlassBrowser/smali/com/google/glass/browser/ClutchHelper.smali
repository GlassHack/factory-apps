.class public Lcom/google/glass/browser/ClutchHelper;
.super Ljava/lang/Object;
.source "ClutchHelper.java"

# interfaces
.implements Lcom/google/glass/touchpad/ClutchDetector$StateListener;
.implements Lcom/google/glass/touchpad/ClutchDetector$MoveListener;
.implements Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/browser/ClutchHelper$2;,
        Lcom/google/glass/browser/ClutchHelper$ViewportPosition;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ONE_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

.field private static final POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

.field private static final POINTER_PROPERTIES_0:Landroid/view/MotionEvent$PointerProperties;

.field private static final POINTER_PROPERTIES_1:Landroid/view/MotionEvent$PointerProperties;

.field private static final POINTER_SIZE:I = 0x5

.field private static final TOUCH_EVENT_MARGIN_PIXELS:I = 0x14

.field private static final TOUCH_POINT_SEPARATION:F = 30.0f

.field private static final TWO_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

.field private static final ZOOM_FACTOR_EXPONENT:I = 0xc8

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private volatile clutchMode:Z

.field private clutchModeAllowed:Z

.field private final clutchModeFrameView:Landroid/view/View;

.field private final clutchModePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private currentViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field private emulatedPoint1:Landroid/graphics/PointF;

.field private emulatedPoint2:Landroid/graphics/PointF;

.field private hasEnteredClutchMode:Z

.field private isPointerDown:Z

.field private isWebViewVisible:Z

.field private lastClutchModeReleaseTime:J

.field private lastZoomViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field private final reticleView:Landroid/view/View;

.field private timeDown:J

.field private final tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

.field private final translationScrollResultX:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

.field private final translationScrollResultY:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    const-class v0, Lcom/google/glass/browser/ClutchHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/glass/browser/ClutchHelper;->$assertionsDisabled:Z

    .line 23
    const-string v0, "browser"

    .line 24
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/browser/ClutchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 63
    invoke-static {}, Lcom/google/glass/browser/ClutchHelper;->getPointerCoordsTemplate()Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    sput-object v0, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    .line 68
    invoke-static {v2}, Lcom/google/glass/browser/ClutchHelper;->getPointerProperties(I)Landroid/view/MotionEvent$PointerProperties;

    move-result-object v0

    sput-object v0, Lcom/google/glass/browser/ClutchHelper;->POINTER_PROPERTIES_0:Landroid/view/MotionEvent$PointerProperties;

    .line 73
    invoke-static {v1}, Lcom/google/glass/browser/ClutchHelper;->getPointerProperties(I)Landroid/view/MotionEvent$PointerProperties;

    move-result-object v0

    sput-object v0, Lcom/google/glass/browser/ClutchHelper;->POINTER_PROPERTIES_1:Landroid/view/MotionEvent$PointerProperties;

    .line 78
    new-array v0, v1, [Landroid/view/MotionEvent$PointerProperties;

    sget-object v3, Lcom/google/glass/browser/ClutchHelper;->POINTER_PROPERTIES_0:Landroid/view/MotionEvent$PointerProperties;

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/glass/browser/ClutchHelper;->ONE_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    sget-object v3, Lcom/google/glass/browser/ClutchHelper;->POINTER_PROPERTIES_0:Landroid/view/MotionEvent$PointerProperties;

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/glass/browser/ClutchHelper;->POINTER_PROPERTIES_1:Landroid/view/MotionEvent$PointerProperties;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/browser/ClutchHelper;->TWO_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    return-void

    :cond_0
    move v0, v2

    .line 20
    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/glass/time/Clock;Lcom/google/glass/browser/WebBrowserWebView;Landroid/view/View;Landroid/view/View;Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 3
    .param p1, "clock"    # Lcom/google/glass/time/Clock;
    .param p2, "webBrowserWebView"    # Lcom/google/glass/browser/WebBrowserWebView;
    .param p3, "clutchModeFrameView"    # Landroid/view/View;
    .param p4, "reticleView"    # Landroid/view/View;
    .param p5, "tipsViewHelper"    # Lcom/google/glass/browser/TipsViewHelper;
    .param p6, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v2, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModeAllowed:Z

    .line 113
    iput-boolean v2, p0, Lcom/google/glass/browser/ClutchHelper;->clutchMode:Z

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/browser/ClutchHelper;->lastClutchModeReleaseTime:J

    .line 134
    iput-boolean v2, p0, Lcom/google/glass/browser/ClutchHelper;->isWebViewVisible:Z

    .line 141
    iput-boolean v2, p0, Lcom/google/glass/browser/ClutchHelper;->isPointerDown:Z

    .line 172
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    .line 182
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    .line 189
    new-instance v0, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    invoke-direct {v0}, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;-><init>()V

    iput-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultX:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    .line 197
    new-instance v0, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    invoke-direct {v0}, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;-><init>()V

    iput-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultY:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    .line 210
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/browser/ClutchHelper$1;-><init>(Lcom/google/glass/browser/ClutchHelper;)V

    iput-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModePredicate:Lcom/google/common/base/Predicate;

    .line 223
    iput-object p1, p0, Lcom/google/glass/browser/ClutchHelper;->clock:Lcom/google/glass/time/Clock;

    .line 224
    iput-object p2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 225
    iput-object p3, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModeFrameView:Landroid/view/View;

    .line 226
    iput-object p4, p0, Lcom/google/glass/browser/ClutchHelper;->reticleView:Landroid/view/View;

    .line 227
    sget-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->CENTER:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    iput-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->currentViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 228
    iput-object p5, p0, Lcom/google/glass/browser/ClutchHelper;->tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    .line 229
    iput-object p6, p0, Lcom/google/glass/browser/ClutchHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/browser/ClutchHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/ClutchHelper;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/glass/browser/ClutchHelper;->clutchMode:Z

    return v0
.end method

.method private getCurrentViewportPosition()Lcom/google/glass/browser/ClutchHelper$ViewportPosition;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, -0x7fffffff

    .line 729
    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationX()F

    move-result v0

    .line 730
    .local v0, "translationX":F
    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v1

    .line 732
    .local v1, "translationY":F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_2

    .line 733
    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    .line 734
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP_LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 754
    :goto_0
    return-object v2

    .line 735
    :cond_0
    cmpg-float v2, v1, v3

    if-gez v2, :cond_1

    .line 736
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM_LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto :goto_0

    .line 738
    :cond_1
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto :goto_0

    .line 740
    :cond_2
    cmpg-float v2, v0, v3

    if-gez v2, :cond_5

    .line 741
    cmpl-float v2, v1, v4

    if-lez v2, :cond_3

    .line 742
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP_RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto :goto_0

    .line 743
    :cond_3
    cmpg-float v2, v1, v3

    if-gez v2, :cond_4

    .line 744
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM_RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto :goto_0

    .line 746
    :cond_4
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto :goto_0

    .line 749
    :cond_5
    cmpl-float v2, v1, v4

    if-lez v2, :cond_6

    .line 750
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto :goto_0

    .line 751
    :cond_6
    cmpg-float v2, v1, v3

    if-gez v2, :cond_7

    .line 752
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto :goto_0

    .line 754
    :cond_7
    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->CENTER:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto :goto_0
.end method

.method private static getPointerCoordsTemplate()Landroid/view/MotionEvent$PointerCoords;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 237
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 238
    .local v0, "pointerCoordsTemplate":Landroid/view/MotionEvent$PointerCoords;
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 239
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 240
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 241
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 242
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 243
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 244
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 245
    return-object v0
.end method

.method private static getPointerProperties(I)Landroid/view/MotionEvent$PointerProperties;
    .locals 2
    .param p0, "pointerId"    # I

    .prologue
    .line 253
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 254
    .local v0, "pointerProperties":Landroid/view/MotionEvent$PointerProperties;
    iput p0, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 255
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 256
    return-object v0
.end method

.method private hoverOnCenter()V
    .locals 33

    .prologue
    .line 388
    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "hoverOnCenter()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/browser/ClutchHelper;->touchUp()V

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 395
    .local v3, "now":J
    new-instance v31, Landroid/view/MotionEvent$PointerCoords;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, v31

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    .line 397
    .local v31, "pointerCoords0":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationX()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, v31

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, v31

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 399
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    aput-object v31, v8, v1

    .line 401
    .local v8, "onePointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v32, Landroid/view/MotionEvent$PointerCoords;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, v32

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    .line 403
    .local v32, "pointerCoords1":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationX()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, v32

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, v32

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 405
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v30, v0

    const/4 v1, 0x0

    aput-object v31, v30, v1

    const/4 v1, 0x1

    aput-object v32, v30, v1

    .line 408
    .local v30, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    const/4 v5, 0x0

    array-length v6, v8

    sget-object v7, Lcom/google/glass/browser/ClutchHelper;->ONE_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v26

    .line 423
    .local v26, "motionEventDown":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v26

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 426
    const/16 v13, 0x105

    move-object/from16 v0, v30

    array-length v14, v0

    sget-object v15, Lcom/google/glass/browser/ClutchHelper;->TWO_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    move-wide v9, v3

    move-wide v11, v3

    move-object/from16 v16, v30

    invoke-static/range {v9 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v27

    .line 441
    .local v27, "motionEventPointerDown":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v27

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 444
    const/4 v13, 0x7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 448
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationX()F

    move-result v2

    sub-float v14, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 449
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v2

    sub-float v15, v1, v2

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x40a00000    # 5.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide v9, v3

    move-wide v11, v3

    .line 444
    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v25

    .line 457
    .local v25, "centerHoverMotionMoveEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v25

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 460
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    const/16 v13, 0x106

    move-object/from16 v0, v30

    array-length v14, v0

    sget-object v15, Lcom/google/glass/browser/ClutchHelper;->TWO_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    move-wide v11, v3

    move-object/from16 v16, v30

    invoke-static/range {v9 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v28

    .line 475
    .local v28, "motionEventPointerUp":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v28

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 478
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    const/4 v5, 0x3

    array-length v6, v8

    sget-object v7, Lcom/google/glass/browser/ClutchHelper;->ONE_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v29

    .line 493
    .local v29, "motionEventUp":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v29

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 494
    return-void
.end method

.method private initDown()V
    .locals 27

    .prologue
    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMinX()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    add-float v21, v1, v2

    .line 584
    .local v21, "marginMinX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxX()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v19, v1, v2

    .line 585
    .local v19, "marginMaxX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMinY()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    add-float v22, v1, v2

    .line 586
    .local v22, "marginMinY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxY()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v20, v1, v2

    .line 588
    .local v20, "marginMaxY":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/glass/browser/ClutchHelper;->isPointerDown:Z

    if-eqz v1, :cond_1

    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->currentViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->CENTER:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v21

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v19

    if-gtz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v22

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v20

    if-lez v1, :cond_3

    .line 594
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/browser/ClutchHelper;->touchUp()V

    .line 606
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/glass/browser/ClutchHelper;->isPointerDown:Z

    if-nez v1, :cond_2

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/browser/ClutchHelper;->initEmulatedPoints()V

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    .line 610
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v23

    .line 623
    .local v23, "motionEventDown":Landroid/view/MotionEvent;
    const/4 v1, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v23

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 627
    new-instance v25, Landroid/view/MotionEvent$PointerCoords;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, v25

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    .line 629
    .local v25, "pointerDownCoords0":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v25

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v25

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 632
    new-instance v26, Landroid/view/MotionEvent$PointerCoords;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, v26

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    .line 634
    .local v26, "pointerDownCoords1":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v26

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v26

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 637
    const/4 v1, 0x2

    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    aput-object v25, v8, v1

    const/4 v1, 0x1

    aput-object v26, v8, v1

    .line 639
    .local v8, "pointerDownCoords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/ClutchHelper;->clock:Lcom/google/glass/time/Clock;

    .line 641
    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x105

    array-length v6, v8

    sget-object v7, Lcom/google/glass/browser/ClutchHelper;->TWO_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 639
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v24

    .line 654
    .local v24, "motionEventPointerDown":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v24

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 655
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/glass/browser/ClutchHelper;->isPointerDown:Z

    .line 657
    .end local v8    # "pointerDownCoords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v23    # "motionEventDown":Landroid/view/MotionEvent;
    .end local v24    # "motionEventPointerDown":Landroid/view/MotionEvent;
    .end local v25    # "pointerDownCoords0":Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "pointerDownCoords1":Landroid/view/MotionEvent$PointerCoords;
    :cond_2
    return-void

    .line 596
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v17, v1, v2

    .line 597
    .local v17, "diffX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v18, v1, v2

    .line 600
    .local v18, "diffY":F
    mul-float v1, v17, v17

    mul-float v2, v18, v18

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/browser/ClutchHelper;->touchUp()V

    goto/16 :goto_0
.end method

.method private initEmulatedPoints()V
    .locals 7

    .prologue
    const/high16 v6, 0x420c0000    # 35.0f

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    .line 503
    sget-object v0, Lcom/google/glass/browser/ClutchHelper$2;->$SwitchMap$com$google$glass$browser$ClutchHelper$ViewportPosition:[I

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->currentViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    invoke-virtual {v1}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 577
    :goto_0
    return-void

    .line 505
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 506
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterX()F

    move-result v1

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 507
    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterY()F

    move-result v2

    sub-float/2addr v2, v4

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 508
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v5

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 512
    :pswitch_1
    sget-boolean v0, Lcom/google/glass/browser/ClutchHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getMinY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterX()F

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 515
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterX()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 519
    :pswitch_2
    sget-boolean v0, Lcom/google/glass/browser/ClutchHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getMinX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 520
    :cond_1
    sget-boolean v0, Lcom/google/glass/browser/ClutchHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getMinY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 522
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 526
    :pswitch_3
    sget-boolean v0, Lcom/google/glass/browser/ClutchHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getMinX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 528
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterY()F

    move-result v1

    .line 527
    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 529
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 530
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterY()F

    move-result v1

    add-float/2addr v1, v5

    .line 529
    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 533
    :pswitch_4
    sget-boolean v0, Lcom/google/glass/browser/ClutchHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getMinX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 535
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxY()F

    move-result v1

    sub-float/2addr v1, v3

    .line 534
    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 536
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 537
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxY()F

    move-result v1

    sub-float/2addr v1, v4

    sub-float/2addr v1, v3

    .line 536
    invoke-virtual {v0, v6, v1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 541
    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 542
    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxY()F

    move-result v2

    sub-float/2addr v2, v3

    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 543
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 544
    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxY()F

    move-result v2

    sub-float/2addr v2, v5

    sub-float/2addr v2, v3

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 548
    :pswitch_6
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 549
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 550
    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxY()F

    move-result v2

    sub-float/2addr v2, v3

    .line 549
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 551
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 552
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v4

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 554
    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxY()F

    move-result v2

    sub-float/2addr v2, v4

    sub-float/2addr v2, v3

    .line 551
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 558
    :pswitch_7
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 559
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 560
    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterY()F

    move-result v2

    .line 559
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 561
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 562
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v5

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 564
    invoke-interface {v2}, Lcom/google/glass/browser/WebBrowserWebView;->getCenterY()F

    move-result v2

    .line 561
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 567
    :pswitch_8
    sget-boolean v0, Lcom/google/glass/browser/ClutchHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getMinY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 568
    :cond_5
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 569
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 571
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 572
    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v4

    sub-float/2addr v1, v3

    .line 571
    invoke-virtual {v0, v1, v6}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private moveBy(FF)V
    .locals 13
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationX()F

    move-result v3

    .line 664
    .local v3, "translationX":F
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getTranslationY()F

    move-result v7

    .line 666
    .local v7, "translationY":F
    sget-object v0, Lcom/google/glass/browser/ClutchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "moveBy(delta: [%s, %s]). translation: [%s, %s]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 667
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v5

    .line 666
    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getWidth()I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    .line 670
    .local v10, "maxTranslationX":I
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getHeight()I

    move-result v0

    div-int/lit8 v11, v0, 0x2

    .line 672
    .local v11, "maxTranslationY":I
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v10

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 673
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 674
    const/4 p1, 0x0

    .line 677
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v11

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 678
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 679
    const/4 p2, 0x0

    .line 682
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 726
    :goto_0
    return-void

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 687
    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->computeRealHorizontalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    .line 688
    .local v2, "scrollRangeX":I
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 689
    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->computeRealVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getHeight()I

    move-result v1

    sub-int v6, v0, v1

    .line 691
    .local v6, "scrollRangeY":I
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 693
    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getScrollX()I

    move-result v1

    int-to-float v4, v10

    iget-object v5, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultX:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    move v0, p1

    .line 691
    invoke-static/range {v0 .. v5}, Lcom/google/glass/browser/TranslationOverScrollUtils;->computeTranslationOverScroll(FIIFFLcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;)V

    .line 698
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    .line 700
    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->getScrollY()I

    move-result v5

    int-to-float v8, v11

    iget-object v9, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultY:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    move v4, p2

    .line 698
    invoke-static/range {v4 .. v9}, Lcom/google/glass/browser/TranslationOverScrollUtils;->computeTranslationOverScroll(FIIFFLcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;)V

    .line 706
    const/4 v12, 0x0

    .line 707
    .local v12, "translated":Z
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultX:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    iget v0, v0, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultX:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    iget v0, v0, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    add-float/2addr v3, v0

    .line 709
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0, v3}, Lcom/google/glass/browser/WebBrowserWebView;->setTranslationX(F)V

    .line 710
    const/4 v12, 0x1

    .line 712
    :cond_3
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultY:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    iget v0, v0, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 713
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultY:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    iget v0, v0, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    add-float/2addr v7, v0

    .line 714
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0, v7}, Lcom/google/glass/browser/WebBrowserWebView;->setTranslationY(F)V

    .line 715
    const/4 v12, 0x1

    .line 718
    :cond_4
    if-eqz v12, :cond_5

    .line 719
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v0}, Lcom/google/glass/browser/WebBrowserWebView;->onScrollChanged()V

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultX:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    iget v1, v1, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    iget-object v4, p0, Lcom/google/glass/browser/ClutchHelper;->translationScrollResultY:Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    iget v4, v4, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    .line 723
    invoke-interface {v0, v1, v4}, Lcom/google/glass/browser/WebBrowserWebView;->scrollBy(II)V

    .line 725
    invoke-direct {p0}, Lcom/google/glass/browser/ClutchHelper;->getCurrentViewportPosition()Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->currentViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    goto/16 :goto_0
.end method

.method private zoomBy(F)V
    .locals 22
    .param p1, "zoomFactor"    # F

    .prologue
    .line 763
    move/from16 v0, p1

    float-to-double v1, v0

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    move/from16 p1, v0

    .line 764
    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "zoomBy(zoomFactor: [%s])"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->currentViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->lastZoomViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    if-eq v1, v2, :cond_0

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/browser/ClutchHelper;->touchUp()V

    .line 769
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->currentViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->lastZoomViewportPosition:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 772
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/browser/ClutchHelper;->initDown()V

    .line 775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v17, v1, v2

    .line 776
    .local v17, "diffX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v18, v1, v2

    .line 777
    .local v18, "diffY":F
    mul-float v17, v17, p1

    .line 778
    mul-float v18, v18, p1

    .line 779
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float v2, v2, v17

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v2, v2, v18

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 782
    new-instance v20, Landroid/view/MotionEvent$PointerCoords;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    .line 784
    .local v20, "pointerDownCoords0":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 786
    new-instance v21, Landroid/view/MotionEvent$PointerCoords;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    .line 788
    .local v21, "pointerDownCoords1":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 789
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 790
    const/4 v1, 0x2

    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    aput-object v20, v8, v1

    const/4 v1, 0x1

    aput-object v21, v8, v1

    .line 792
    .local v8, "pointerDownCoords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/ClutchHelper;->clock:Lcom/google/glass/time/Clock;

    .line 794
    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v6, 0x2

    sget-object v7, Lcom/google/glass/browser/ClutchHelper;->TWO_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 792
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 807
    .local v19, "motionEventMove":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v19

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 808
    return-void
.end method


# virtual methods
.method public getLastClutchModeReleaseTime()J
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 310
    iget-wide v0, p0, Lcom/google/glass/browser/ClutchHelper;->lastClutchModeReleaseTime:J

    return-wide v0
.end method

.method public getReticleViewVisibility()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->reticleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hideReticleView()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 285
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->reticleView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public isClutchMode()Z
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 293
    iget-boolean v0, p0, Lcom/google/glass/browser/ClutchHelper;->clutchMode:Z

    return v0
.end method

.method public isClutchModeAllowed()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModeAllowed:Z

    return v0
.end method

.method public onCenterFocused()V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Lcom/google/glass/browser/ClutchHelper;->hoverOnCenter()V

    .line 867
    return-void
.end method

.method public onClutchModeEntered()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 817
    iput-boolean v2, p0, Lcom/google/glass/browser/ClutchHelper;->clutchMode:Z

    .line 819
    iget-boolean v0, p0, Lcom/google/glass/browser/ClutchHelper;->hasEnteredClutchMode:Z

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 821
    iput-boolean v2, p0, Lcom/google/glass/browser/ClutchHelper;->hasEnteredClutchMode:Z

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    sget-object v1, Lcom/google/glass/browser/TipsViewHelper$Tip;->TWO_FINGER_PAN:Lcom/google/glass/browser/TipsViewHelper$Tip;

    invoke-virtual {v0, v1}, Lcom/google/glass/browser/TipsViewHelper;->dontShowTip(Lcom/google/glass/browser/TipsViewHelper$Tip;)V

    .line 828
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    sget-object v1, Lcom/google/glass/browser/TipsViewHelper$Tip;->TWO_FINGER_ZOOM:Lcom/google/glass/browser/TipsViewHelper$Tip;

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModePredicate:Lcom/google/common/base/Predicate;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/browser/TipsViewHelper;->showTip(Lcom/google/glass/browser/TipsViewHelper$Tip;Lcom/google/common/base/Predicate;)V

    .line 830
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->reticleView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModeFrameView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 833
    invoke-direct {p0}, Lcom/google/glass/browser/ClutchHelper;->initDown()V

    .line 834
    return-void
.end method

.method public onClutchModeExited()V
    .locals 2

    .prologue
    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/browser/ClutchHelper;->clutchMode:Z

    .line 839
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/browser/ClutchHelper;->lastClutchModeReleaseTime:J

    .line 841
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModeFrameView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 842
    invoke-virtual {p0}, Lcom/google/glass/browser/ClutchHelper;->touchUp()V

    .line 844
    iget-boolean v0, p0, Lcom/google/glass/browser/ClutchHelper;->isWebViewVisible:Z

    if-eqz v0, :cond_0

    .line 849
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/browser/ClutchHelper;->hoverOnCenter()V

    goto :goto_0
.end method

.method public onMoveBy(FF)Z
    .locals 1
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 853
    invoke-direct {p0, p1, p2}, Lcom/google/glass/browser/ClutchHelper;->moveBy(FF)V

    .line 854
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBy(F)Z
    .locals 2
    .param p1, "factor"    # F

    .prologue
    .line 859
    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getScale()F

    move-result v0

    .line 860
    .local v0, "previousScale":F
    invoke-direct {p0, p1}, Lcom/google/glass/browser/ClutchHelper;->zoomBy(F)V

    .line 861
    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getScale()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetLoadingState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 267
    iput-boolean v0, p0, Lcom/google/glass/browser/ClutchHelper;->hasEnteredClutchMode:Z

    .line 268
    iput-boolean v0, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModeAllowed:Z

    .line 269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/browser/ClutchHelper;->lastClutchModeReleaseTime:J

    .line 270
    iget-object v0, p0, Lcom/google/glass/browser/ClutchHelper;->reticleView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method

.method public setClutchModeAllowed(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 301
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 302
    iput-boolean p1, p0, Lcom/google/glass/browser/ClutchHelper;->clutchModeAllowed:Z

    .line 303
    return-void
.end method

.method public setIsWebViewVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 319
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 320
    iput-boolean p1, p0, Lcom/google/glass/browser/ClutchHelper;->isWebViewVisible:Z

    .line 321
    return-void
.end method

.method public touchUp()V
    .locals 29

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/glass/browser/ClutchHelper;->isPointerDown:Z

    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v27, Landroid/view/MotionEvent$PointerCoords;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, v27

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    .line 337
    .local v27, "pointerCoords0":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v27

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v27

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 339
    new-instance v28, Landroid/view/MotionEvent$PointerCoords;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper;->POINTER_COORDS_TEMPLATE:Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, v28

    invoke-direct {v0, v1}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    .line 341
    .local v28, "pointerCoords1":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v28

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->emulatedPoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v28

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 343
    const/4 v1, 0x2

    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    aput-object v27, v8, v1

    const/4 v1, 0x1

    aput-object v28, v8, v1

    .line 346
    .local v8, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/browser/ClutchHelper;->clock:Lcom/google/glass/time/Clock;

    .line 348
    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x106

    array-length v6, v8

    sget-object v7, Lcom/google/glass/browser/ClutchHelper;->TWO_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 346
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v25

    .line 361
    .local v25, "motionEventPointerUp":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v25

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 364
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/glass/browser/ClutchHelper;->timeDown:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->clock:Lcom/google/glass/time/Clock;

    .line 366
    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x1

    sget-object v15, Lcom/google/glass/browser/ClutchHelper;->ONE_POINTER_PROPERTIES:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    aput-object v28, v16, v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    .line 364
    invoke-static/range {v9 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v26

    .line 379
    .local v26, "motionEventUp":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/browser/ClutchHelper;->webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    move-object/from16 v0, v26

    invoke-interface {v1, v0}, Lcom/google/glass/browser/WebBrowserWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 381
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/glass/browser/ClutchHelper;->isPointerDown:Z

    goto/16 :goto_0
.end method
