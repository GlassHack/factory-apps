.class public abstract Lcom/google/maps/api/android/lib6/gmm6/b/k;
.super Lcom/google/maps/api/android/lib6/gmm6/b/n;


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Ljava/lang/Object;

.field protected c:Ljava/lang/Object;

.field protected d:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/b/n;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/k;->d:Z

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/k;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract a(J)V
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/k;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/b/k;->a(J)V

    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)V
.end method

.method protected abstract c(Ljava/lang/Object;)V
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/k;->d:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/k;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/k;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/k;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/k;->d:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/k;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/b/k;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/k;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/k;->d:Z

    return v0
.end method
