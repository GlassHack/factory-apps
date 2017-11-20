.class final Lcom/google/android/gms/location/places/ab;
.super Lcom/google/android/gms/location/places/ah;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/google/android/gms/location/places/PlaceFilter;

.field final synthetic h:Lcom/google/android/gms/location/places/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;ILcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/android/gms/location/places/ab;->h:Lcom/google/android/gms/location/places/z;

    iput-object p2, p0, Lcom/google/android/gms/location/places/ab;->d:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p3, p0, Lcom/google/android/gms/location/places/ab;->e:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/location/places/ab;->f:I

    iput-object p5, p0, Lcom/google/android/gms/location/places/ab;->g:Lcom/google/android/gms/location/places/PlaceFilter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/ah;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 6

    .prologue
    .line 355
    check-cast p1, Lcom/google/android/gms/location/internal/p;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/p;->k()Lcom/google/android/gms/location/places/internal/k;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/places/ak;

    iget-object v2, p0, Lcom/google/android/gms/location/places/ab;->h:Lcom/google/android/gms/location/places/z;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/p;->h()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/google/android/gms/location/places/ak;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/ah;Landroid/content/Context;B)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/ab;->d:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p0, Lcom/google/android/gms/location/places/ab;->e:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/location/places/ab;->f:I

    iget-object v5, p0, Lcom/google/android/gms/location/places/ab;->g:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/k;->a(Lcom/google/android/gms/location/places/ak;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;ILcom/google/android/gms/location/places/PlaceFilter;)V

    return-void
.end method
