.class public final Lcom/google/maps/api/android/lib6/c/be;
.super Lcom/google/android/gms/maps/internal/ca;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/bg;

.field private b:Lcom/google/maps/api/android/lib6/c/bh;

.field private c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/bg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ca;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/bg;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->a:Lcom/google/maps/api/android/lib6/c/bg;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/e/i;Landroid/os/Bundle;)Lcom/google/android/gms/e/i;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/be;->a:Lcom/google/maps/api/android/lib6/c/bg;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-interface {v1, v0, v2}, Lcom/google/maps/api/android/lib6/c/bg;->a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/maps/api/android/lib6/c/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0, p3}, Lcom/google/maps/api/android/lib6/c/bh;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->j()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a()Lcom/google/android/gms/maps/internal/bw;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    if-nez v0, :cond_0

    const-string v0, "StreetViewPanoramaOptions"

    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/ci;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->g()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    if-eqz v0, :cond_0

    const-string v0, "StreetViewPanoramaOptions"

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/maps/internal/ci;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/c/bh;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->h()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->i()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    :cond_0
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/c/be;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/be;->b:Lcom/google/maps/api/android/lib6/c/bh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
