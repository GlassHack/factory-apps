.class final Lcom/google/android/gms/location/places/ac;
.super Lcom/google/android/gms/location/places/af;
.source "SourceFile"


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic f:Lcom/google/android/gms/location/places/AutocompleteFilter;

.field final synthetic g:Lcom/google/android/gms/location/places/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/z;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/gms/location/places/ac;->g:Lcom/google/android/gms/location/places/z;

    iput-object p2, p0, Lcom/google/android/gms/location/places/ac;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/ac;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/ac;->f:Lcom/google/android/gms/location/places/AutocompleteFilter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/af;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 5

    .prologue
    .line 250
    check-cast p1, Lcom/google/android/gms/location/internal/p;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/p;->k()Lcom/google/android/gms/location/places/internal/k;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/places/ak;

    iget-object v2, p0, Lcom/google/android/gms/location/places/ac;->g:Lcom/google/android/gms/location/places/z;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/location/places/ak;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/af;B)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/ac;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/places/ac;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v4, p0, Lcom/google/android/gms/location/places/ac;->f:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/places/internal/k;->a(Lcom/google/android/gms/location/places/ak;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V

    return-void
.end method
