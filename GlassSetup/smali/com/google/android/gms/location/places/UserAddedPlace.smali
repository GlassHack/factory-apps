.class public Lcom/google/android/gms/location/places/UserAddedPlace;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/UserAddedPlace$1;,
        Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/UserAddedPlace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Cy:Ljava/lang/String;

.field private final HY:Lcom/google/android/gms/maps/model/LatLng;

.field private final HZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field private final Ia:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPhoneNumber:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/k;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/UserAddedPlace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "phoneNumber"    # Ljava/lang/String;
    .param p7, "websiteUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "types":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/PlaceType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->HY:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->Cy:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->HZ:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->mPhoneNumber:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->Ia:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/location/places/UserAddedPlace$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/UserAddedPlace$Builder;-><init>(Lcom/google/android/gms/location/places/UserAddedPlace$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->Cy:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->HY:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->HZ:Ljava/util/List;

    return-object v0
.end method

.method public getWebsiteUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->Ia:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/k;->a(Lcom/google/android/gms/location/places/UserAddedPlace;Landroid/os/Parcel;I)V

    return-void
.end method
