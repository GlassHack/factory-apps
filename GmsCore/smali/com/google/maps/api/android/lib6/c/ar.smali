.class public final Lcom/google/maps/api/android/lib6/c/ar;
.super Lcom/google/android/gms/maps/internal/br;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/bu;

.field private final b:Lcom/google/maps/api/android/lib6/c/as;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/bu;Lcom/google/maps/api/android/lib6/c/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/br;-><init>()V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/ar;->b:Lcom/google/maps/api/android/lib6/c/as;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ar;->a:Lcom/google/maps/api/android/lib6/c/bu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/e/i;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ar;->a:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->br:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ar;->b:Lcom/google/maps/api/android/lib6/c/as;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/as;->a(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/e/i;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ar;->a:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bp:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ar;->b:Lcom/google/maps/api/android/lib6/c/as;

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v1, v0}, Lcom/google/maps/api/android/lib6/c/as;->a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/maps/model/VisibleRegion;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ar;->a:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bq:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ar;->b:Lcom/google/maps/api/android/lib6/c/as;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/as;->a()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ar;->b:Lcom/google/maps/api/android/lib6/c/as;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
