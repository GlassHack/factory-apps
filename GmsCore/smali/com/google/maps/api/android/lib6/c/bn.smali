.class public final Lcom/google/maps/api/android/lib6/c/bn;
.super Lcom/google/android/gms/maps/internal/cd;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/c/bh;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/cd;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/bn;->b:Landroid/content/Context;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/bn;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/internal/bw;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->a:Lcom/google/maps/api/android/lib6/c/bh;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(Landroid/app/Activity;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bn;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/c/bh;->a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/maps/api/android/lib6/c/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->a:Lcom/google/maps/api/android/lib6/c/bh;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/c/bh;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->g()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/c/bh;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->h()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->i()V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()Lcom/google/android/gms/e/i;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bn;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bh;->j()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method
