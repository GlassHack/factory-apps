.class public final Lcom/google/maps/api/android/lib6/gmm6/b/a;
.super Lcom/google/maps/api/android/lib6/gmm6/b/k;


# instance fields
.field private final e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;[Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/k;-><init>(Landroid/view/animation/Interpolator;)V

    array-length v0, p2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->e:[Ljava/lang/Object;

    aget-object v0, p2, v2

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->a:Ljava/lang/Object;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->b:Ljava/lang/Object;

    aget-object v0, p2, v2

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->c:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->d:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected final a(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/b/a;->c(J)F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->e:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->e:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->e:[Ljava/lang/Object;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->c:Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->a:Ljava/lang/Object;

    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->b:Ljava/lang/Object;

    return-void
.end method

.method protected final c(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/a;->c:Ljava/lang/Object;

    return-void
.end method
