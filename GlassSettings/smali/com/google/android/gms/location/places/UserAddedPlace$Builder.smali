.class public final Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/UserAddedPlace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private Cy:Ljava/lang/String;

.field private HY:Lcom/google/android/gms/maps/model/LatLng;

.field private HZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field private Ia:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/UserAddedPlace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/location/places/UserAddedPlace$1;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/places/UserAddedPlace;
    .locals 8

    new-instance v0, Lcom/google/android/gms/location/places/UserAddedPlace;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->HY:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->Cy:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->HZ:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->mPhoneNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->Ia:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/UserAddedPlace;-><init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->Cy:Ljava/lang/String;

    return-object p0
.end method

.method public setLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->HY:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setTypes(Ljava/util/List;)Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;)",
            "Lcom/google/android/gms/location/places/UserAddedPlace$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/PlaceType;>;"
    iput-object p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->HZ:Ljava/util/List;

    return-object p0
.end method

.method public setWebsiteUri(Ljava/lang/String;)Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
    .locals 0
    .param p1, "websiteUri"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;->Ia:Ljava/lang/String;

    return-object p0
.end method
