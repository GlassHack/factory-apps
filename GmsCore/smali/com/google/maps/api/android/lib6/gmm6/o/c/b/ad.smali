.class final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;F)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->b:F

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->c:F

    invoke-static {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->d:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    return-void
.end method
