.class final Lcom/google/android/gms/location/places/aa;
.super Lcom/google/android/gms/location/places/ai;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/places/UserAddedPlace;

.field final synthetic e:Lcom/google/android/gms/location/places/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/UserAddedPlace;)V
    .locals 1

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/gms/location/places/aa;->e:Lcom/google/android/gms/location/places/z;

    iput-object p2, p0, Lcom/google/android/gms/location/places/aa;->d:Lcom/google/android/gms/location/places/UserAddedPlace;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/ai;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 5

    .prologue
    .line 201
    check-cast p1, Lcom/google/android/gms/location/internal/p;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/p;->k()Lcom/google/android/gms/location/places/internal/k;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/places/ak;

    iget-object v2, p0, Lcom/google/android/gms/location/places/aa;->e:Lcom/google/android/gms/location/places/z;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/p;->h()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/google/android/gms/location/places/ak;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/ai;Landroid/content/Context;B)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/aa;->d:Lcom/google/android/gms/location/places/UserAddedPlace;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/places/internal/k;->a(Lcom/google/android/gms/location/places/ak;Lcom/google/android/gms/location/places/UserAddedPlace;)V

    return-void
.end method
