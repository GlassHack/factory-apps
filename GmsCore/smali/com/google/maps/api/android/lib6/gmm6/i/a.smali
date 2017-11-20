.class public final Lcom/google/maps/api/android/lib6/gmm6/i/a;
.super Lcom/google/maps/api/android/lib6/gmm6/i/j;


# instance fields
.field private a:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/a;->a:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public final c()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->j()F

    move-result v0

    return v0
.end method

.method public final d()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->k()F

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/a;->a:Landroid/view/MotionEvent;

    return-void
.end method
