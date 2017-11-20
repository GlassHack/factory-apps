.class public final Lcom/google/maps/api/android/lib6/gmm6/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/c;->a:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/c;->a:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/c;->a:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/b/c;->a:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method
