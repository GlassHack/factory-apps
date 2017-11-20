.class public final Lcom/google/maps/api/android/lib6/gmm6/o/b/e;
.super Ljava/lang/Object;


# instance fields
.field public volatile a:F

.field public b:Lcom/google/maps/api/android/lib6/gmm6/o/b/f;

.field private final c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42960000    # 75.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a:F

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->c:Landroid/content/res/Resources;

    return-void
.end method

.method public static a(F)F
    .locals 4

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v0, 0x41f00000    # 30.0f

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    const/high16 v0, 0x42960000    # 75.0f

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, p0, v3

    if-lez v1, :cond_2

    const/high16 v1, 0x42340000    # 45.0f

    sub-float v2, p0, v3

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    cmpl-float v1, p0, v2

    if-lez v1, :cond_0

    sub-float v1, p0, v2

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 6

    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v0, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/f;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/f;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/f;->d()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_0
    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a:F

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->c:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->c:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->c:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v4

    invoke-virtual {v1, v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FF)V

    :goto_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    return-object v0

    :cond_1
    invoke-virtual {v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_0
.end method
