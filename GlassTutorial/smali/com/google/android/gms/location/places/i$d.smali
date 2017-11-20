.class abstract Lcom/google/android/gms/location/places/i$d;
.super Lcom/google/android/gms/location/places/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/i$b",
        "<",
        "Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/i$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/i$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/i$d;->z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;

    move-result-object v0

    return-object v0
.end method

.method protected z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/places/Place;)V

    return-object v0
.end method
