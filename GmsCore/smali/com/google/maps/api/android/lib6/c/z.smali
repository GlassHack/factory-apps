.class public final Lcom/google/maps/api/android/lib6/c/z;
.super Lcom/google/android/gms/maps/internal/x;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/c/dw;

.field private final b:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/x;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->c:Landroid/content/Context;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/z;->b:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/internal/k;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/z;->c:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(Landroid/app/Activity;)Z

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->c:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/z;->b:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-static {v0, v2, v1}, Lcom/google/maps/api/android/lib6/c/dw;->a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/GoogleMapOptions;Z)Lcom/google/maps/api/android/lib6/c/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/c/dw;->a(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->x()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/c/dw;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->y()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->w()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->z()V

    return-void
.end method

.method public final f()Lcom/google/android/gms/e/i;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/z;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/dw;->A()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method
