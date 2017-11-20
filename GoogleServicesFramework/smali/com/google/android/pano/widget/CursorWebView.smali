.class public Lcom/google/android/pano/widget/CursorWebView;
.super Landroid/webkit/WebView;
.source "CursorWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/CursorWebView$SpaceListener;
    }
.end annotation


# instance fields
.field private mAccelerateMargin:I

.field private mActive:Z

.field private mBounceRate:F

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDrawMargin:I

.field private mFingerDown:Z

.field private mHeightMm:F

.field private mInvalidateArea:Landroid/graphics/Rect;

.field private mMargin:I

.field private mNoTouchColor:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRect:Landroid/graphics/Rect;

.field private mScrollAccelDuration:F

.field private mScrollAccelMax:I

.field private mScrollMax:I

.field private mScrollMin:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrolling:Z

.field private mSeti:Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

.field private mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

.field private mTouchColor:I

.field private mTouchPaint:Landroid/graphics/Paint;

.field private mTouchSize:I

.field private mTrackedHeight:F

.field private mTrackedWidth:F

.field private mWidthMm:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/CursorWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/4 v3, 0x0

    .line 292
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v1, Lcom/google/android/pano/widget/CursorWebView$1;

    invoke-direct {v1, p0}, Lcom/google/android/pano/widget/CursorWebView$1;-><init>(Lcom/google/android/pano/widget/CursorWebView;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 212
    new-instance v1, Lcom/google/android/pano/widget/CursorWebView$2;

    invoke-direct {v1, p0}, Lcom/google/android/pano/widget/CursorWebView$2;-><init>(Lcom/google/android/pano/widget/CursorWebView;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v1, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;-><init>(Lcom/google/android/pano/widget/CursorWebView;Lcom/google/android/pano/widget/CursorWebView$1;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mSeti:Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

    .line 259
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mInvalidateArea:Landroid/graphics/Rect;

    .line 260
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    .line 262
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchPaint:Landroid/graphics/Paint;

    .line 267
    iput v4, p0, Lcom/google/android/pano/widget/CursorWebView;->mWidthMm:F

    .line 268
    iput v4, p0, Lcom/google/android/pano/widget/CursorWebView;->mHeightMm:F

    .line 269
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    .line 270
    const/16 v1, 0x30

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    .line 271
    const/16 v1, 0x200

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelMax:I

    .line 272
    const v1, 0x461c4000    # 10000.0f

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelDuration:F

    .line 283
    iput-boolean v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mActive:Z

    .line 284
    iput-boolean v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mFingerDown:Z

    .line 285
    iput-boolean v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrolling:Z

    .line 293
    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/CursorWebView;->setWillNotDraw(Z)V

    .line 294
    new-instance v1, Lcom/google/android/pano/util/TouchNavSpaceTracker;

    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mSeti:Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mSeti:Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

    invoke-direct {v1, v2, v3}, Lcom/google/android/pano/util/TouchNavSpaceTracker;-><init>(Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    .line 295
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mWidthMm:F

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mHeightMm:F

    invoke-virtual {v1, v2, v3}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalSize(FF)V

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 297
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/google/android/pano/R$dimen;->cursor_web_view_scroll_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    .line 298
    sget v1, Lcom/google/android/pano/R$dimen;->cursor_web_view_draw_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    .line 299
    sget v1, Lcom/google/android/pano/R$dimen;->cursor_web_view_accel_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mAccelerateMargin:I

    .line 300
    sget v1, Lcom/google/android/pano/R$dimen;->cursor_web_view_bounce_rate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mBounceRate:F

    .line 301
    sget v1, Lcom/google/android/pano/R$color;->touch_indicator_active:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchColor:I

    .line 302
    sget v1, Lcom/google/android/pano/R$color;->touch_indicator_inactive:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mNoTouchColor:I

    .line 303
    sget v1, Lcom/google/android/pano/R$dimen;->cursor_touch_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    .line 304
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    sget v1, Lcom/google/android/pano/R$dimen;->pixels_per_mm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/CursorWebView;->setPhysicalDensity(F)V

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/pano/widget/CursorWebView;->getViewPositionFromTracker()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mBounceRate:F

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelDuration:F

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/pano/widget/CursorWebView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelDuration:F

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelMax:I

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelMax:I

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mWidthMm:F

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/pano/widget/CursorWebView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mWidthMm:F

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mHeightMm:F

    return v0
.end method

.method static synthetic access$1602(Lcom/google/android/pano/widget/CursorWebView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mHeightMm:F

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    return v0
.end method

.method static synthetic access$1702(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    return v0
.end method

.method static synthetic access$1802(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    return p1
.end method

.method static synthetic access$1900(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/CursorWebView;->sendOnTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchColor:I

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchColor:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mNoTouchColor:I

    return v0
.end method

.method static synthetic access$2102(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mNoTouchColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/pano/widget/CursorWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mFingerDown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/pano/widget/CursorWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mFingerDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mInvalidateArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/pano/widget/CursorWebView;)Lcom/google/android/pano/util/TouchNavSpaceTracker;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedWidth:F

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/pano/widget/CursorWebView;FF)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/CursorWebView;->getScrollVelocity(FF)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedHeight:F

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/pano/widget/CursorWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrolling:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/pano/widget/CursorWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrolling:Z

    return p1
.end method

.method private getScrollVelocity(FF)F
    .locals 5
    .param p1, "dist"    # F
    .param p2, "size"    # F

    .prologue
    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, "scrollVel":F
    const/4 v0, 0x0

    .line 422
    .local v0, "minScroll":F
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 423
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    int-to-float v2, v2

    sub-float v1, p1, v2

    .line 424
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    neg-int v2, v2

    int-to-float v0, v2

    .line 429
    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mAccelerateMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v1, v2

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    iget v4, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v1, v2, v0

    .line 431
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    .line 432
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    neg-int v2, v2

    int-to-float v1, v2

    .line 436
    :cond_1
    :goto_1
    return v1

    .line 425
    :cond_2
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 426
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    sub-float v1, p1, v2

    .line 427
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    int-to-float v0, v2

    goto :goto_0

    .line 433
    :cond_3
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 434
    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    int-to-float v1, v2

    goto :goto_1
.end method

.method private getViewPositionFromTracker()Landroid/graphics/PointF;
    .locals 5

    .prologue
    .line 440
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getCurrentPixelPosition()Landroid/graphics/PointF;

    move-result-object v1

    .line 441
    .local v1, "p":Landroid/graphics/PointF;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 442
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/CursorWebView;->getLocationOnScreen([I)V

    .line 443
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    neg-int v3, v3

    iget v4, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 444
    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    neg-int v3, v3

    iget v4, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 446
    return-object v1
.end method

.method private registerIntentListeners(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "scroll"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "size"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "cursor"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    return-void
.end method

.method private sendOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 451
    return-void
.end method

.method private unregisterIntentListeners(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 355
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 379
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 380
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    neg-int v2, v2

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 381
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 382
    iget-boolean v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mActive:Z

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getCurrentPixelPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 384
    .local v0, "p":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 385
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 386
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mFingerDown:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchColor:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 388
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mInvalidateArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 391
    .end local v0    # "p":Landroid/graphics/PointF;
    :cond_0
    return-void

    .line 386
    .restart local v0    # "p":Landroid/graphics/PointF;
    :cond_1
    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mNoTouchColor:I

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mActive:Z

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 344
    iget-boolean v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrolling:Z

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/CursorWebView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 347
    :cond_0
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/android/pano/widget/CursorWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/CursorWebView;->unregisterIntentListeners(Landroid/content/Context;)V

    .line 338
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/android/pano/widget/CursorWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/CursorWebView;->registerIntentListeners(Landroid/content/Context;)V

    .line 333
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 367
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedWidth:F

    .line 368
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedHeight:F

    .line 373
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedWidth:F

    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPixelSize(FF)V

    .line 374
    return-void
.end method

.method public setPhysicalDensity(F)V
    .locals 1
    .param p1, "pixelsPerMm"    # F

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalDensity(F)V

    .line 328
    return-void
.end method
