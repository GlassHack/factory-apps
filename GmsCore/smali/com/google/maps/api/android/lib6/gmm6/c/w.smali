.class public final Lcom/google/maps/api/android/lib6/gmm6/c/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/as;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->c:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->d:I

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public final a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Lcom/google/android/gms/maps/model/VisibleRegion;
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->b:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->c:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->d:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(IIII)Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/maps/model/VisibleRegion;

    iget-object v1, v5, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v2, v5, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-object v3, v5, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-object v4, v5, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-object v5, v5, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->b()Lcom/google/android/gms/maps/model/g;

    move-result-object v6

    iget-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v7}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/g;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/g;

    move-result-object v6

    iget-object v5, v5, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/maps/model/g;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/g;->a()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/VisibleRegion;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "camera"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/w;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
