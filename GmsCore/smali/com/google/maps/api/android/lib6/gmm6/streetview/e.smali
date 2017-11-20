.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/google/maps/api/android/lib6/gmm6/streetview/c;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/streetview/b;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/streetview/y;

.field private c:F

.field private d:J

.field private final e:F

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;

.field private final g:Landroid/view/GestureDetector$OnGestureListener;

.field private final h:Landroid/view/GestureDetector$OnDoubleTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->c:F

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->g:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/y;

    invoke-direct {v0, p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/y;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/y;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/y;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/y;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/y;->a(Z)V

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/c;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->e:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)Z
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->c:F

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->d:F

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->e:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->c:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;

    invoke-direct {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)Z
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->c:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->d:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;

    invoke-direct {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->c:F

    const/high16 v1, 0x41b00000    # 22.0f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->e:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;->g()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;

    invoke-direct {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;)Z

    goto :goto_1
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->g:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->g:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->g:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->g:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->g:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->h:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
