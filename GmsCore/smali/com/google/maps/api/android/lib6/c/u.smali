.class public final Lcom/google/maps/api/android/lib6/c/u;
.super Lcom/google/android/gms/maps/internal/u;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/w;

.field private b:Lcom/google/maps/api/android/lib6/c/dw;

.field private c:Lcom/google/android/gms/maps/GoogleMapOptions;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/w;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/u;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/w;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->a:Lcom/google/maps/api/android/lib6/c/w;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/e/i;Landroid/os/Bundle;)Lcom/google/android/gms/e/i;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/u;->a:Lcom/google/maps/api/android/lib6/c/w;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {v1, v0, v2}, Lcom/google/maps/api/android/lib6/c/w;->a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/maps/api/android/lib6/c/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0, p3}, Lcom/google/maps/api/android/lib6/c/dw;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->A()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->A()Landroid/view/View;

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

.method public final a()Lcom/google/android/gms/maps/internal/k;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    if-nez v0, :cond_0

    const-string v0, "MapOptions"

    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/ci;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->x()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    if-eqz v0, :cond_0

    const-string v0, "MapOptions"

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/maps/internal/ci;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/c/dw;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->y()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->w()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->w()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    :cond_0
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/c/u;->c:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->z()V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/u;->b:Lcom/google/maps/api/android/lib6/c/dw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
