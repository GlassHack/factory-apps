.class public final Lcom/google/maps/api/android/lib6/gmm6/o/am;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/i/m;


# static fields
.field private static final c:F

.field private static final d:F

.field private static final e:D


# instance fields
.field private final a:F

.field private final b:F

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

.field private h:Landroid/view/MotionEvent;

.field private i:F

.field private j:F

.field private k:Lcom/google/maps/api/android/lib6/gmm6/o/an;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a/b;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x3f7f3b64    # 0.997f

    :goto_0
    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lcom/google/maps/api/android/lib6/gmm6/o/am;->c:F

    div-float/2addr v0, v1

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->d:F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->e:D

    return-void

    :cond_0
    const v0, 0x3f7fbe77    # 0.999f

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/ao;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/an;->a:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->n()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->b:F

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->n()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->a:F

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iput-boolean p1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->a:Z

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/i/o;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/o;->a(FF)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/o;->c()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/o;->a()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/o;->b()F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->b(FFF)F

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/i/q;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->b:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/i/q;->a:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v3, 0x14a

    invoke-virtual {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(FI)F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->getWidth()I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->getHeight()I

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->u()V

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/q;->c()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v6, Lcom/google/maps/api/android/lib6/gmm6/o/am;->e:D

    div-double/2addr v4, v6

    double-to-float v0, v4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/q;->a()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/q;->b()F

    move-result v5

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/i/q;->a:I

    if-nez v3, :cond_5

    move v3, v2

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/q;->c()F

    move-result v3

    sget v6, Lcom/google/maps/api/android/lib6/gmm6/o/am;->c:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/q;->c()F

    move-result v3

    sget v6, Lcom/google/maps/api/android/lib6/gmm6/o/am;->d:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(FFF)F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->u()V

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_2
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/i/u;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/i/u;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(F)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iput-boolean p1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->b:Z

    return v0
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iput-boolean p1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->d:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->d:Z

    return v0
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iput-boolean p1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->e:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->e:Z

    return v0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->s()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/an;->b:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->j:F

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->s()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/an;->b:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x14a

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(FFFI)F

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->u()V

    iput-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/an;->a:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/an;->a:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    :cond_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->j:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->i:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/o/an;->b:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    if-ne v4, v5, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->b:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->a:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v3, v3, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->b:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/an;->c:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    const-string v3, "d"

    const/16 v4, 0x63

    invoke-static {v4, v3}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/o/an;->c:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v3, v3, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->b:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(FI)F

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->u()V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->j:F

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/an;->d:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->e:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->i:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->j:F

    invoke-static {v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->a(FFFF)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v1, v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->a(FFFF)F

    move-result v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v5

    sub-float v3, v4, v3

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v3, v4

    float-to-double v6, v3

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v3, v6

    invoke-virtual {v5, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->b(FFF)F

    goto :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->k:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/an;->a:Lcom/google/maps/api/android/lib6/gmm6/o/an;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->a(FF)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/am;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->b(FF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->s()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->h:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->e(FF)V

    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->v()Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(FF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->t()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->s()V

    goto :goto_0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->g:Lcom/google/maps/api/android/lib6/gmm6/o/ap;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ap;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->s()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->c(FF)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/am;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ao;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ao;->b(FF)Z

    move-result v0

    return v0
.end method
