.class final Lcom/google/maps/api/android/lib6/c/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/bk;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/bh;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/bi;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/c/bd;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bi;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bh;->a(Lcom/google/maps/api/android/lib6/c/bh;)Lcom/google/maps/api/android/lib6/c/bl;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/bd;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/bl;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bi;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bh;->a(Lcom/google/maps/api/android/lib6/c/bh;)Lcom/google/maps/api/android/lib6/c/bl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/bl;->a(Z)V

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bi;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bh;->b(Lcom/google/maps/api/android/lib6/c/bh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bi;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/bd;->g()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/bh;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bi;->a:Lcom/google/maps/api/android/lib6/c/bh;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bh;->a(Lcom/google/maps/api/android/lib6/c/bh;)Lcom/google/maps/api/android/lib6/c/bl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/bl;->a(Z)V

    goto :goto_0
.end method
