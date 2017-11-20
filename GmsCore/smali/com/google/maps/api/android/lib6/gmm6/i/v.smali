.class public final Lcom/google/maps/api/android/lib6/gmm6/i/v;
.super Lcom/google/maps/api/android/lib6/gmm6/i/w;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    return-void
.end method


# virtual methods
.method protected final a(F)F
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->a(I)F

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b(I)F

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 2

    const-string v0, "t"

    const/16 v1, 0x63

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/v;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->b(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z

    move-result v0

    return v0
.end method

.method protected final d(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/v;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->c(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V

    return-void
.end method

.method protected final f(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/v;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->a(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z

    move-result v0

    return v0
.end method
