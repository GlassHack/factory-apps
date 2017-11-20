.class public Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/PlacesApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceResult"
.end annotation


# instance fields
.field private final HC:Lcom/google/android/gms/common/api/Status;

.field private final HD:Lcom/google/android/gms/location/places/Place;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/places/Place;)V
    .locals 0
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p2, "place"    # Lcom/google/android/gms/location/places/Place;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;->HC:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;->HD:Lcom/google/android/gms/location/places/Place;

    return-void
.end method


# virtual methods
.method public getPlace()Lcom/google/android/gms/location/places/Place;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;->HD:Lcom/google/android/gms/location/places/Place;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacesApi$PlaceResult;->HC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
