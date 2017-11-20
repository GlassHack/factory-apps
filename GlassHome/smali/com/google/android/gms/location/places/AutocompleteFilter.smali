.class public Lcom/google/android/gms/location/places/AutocompleteFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/AutocompleteFilter$1;,
        Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/a;


# instance fields
.field private final Hd:Z

.field private final He:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/a;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "restrictToPlaces"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "placeTypes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/PlaceType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->Hd:Z

    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->He:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ZLjava/util/List;)V
    .locals 1
    .param p1, "restrictToPlaces"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "placeTypes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/PlaceType;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(IZLjava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(ZLjava/util/List;Lcom/google/android/gms/location/places/AutocompleteFilter$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/google/android/gms/location/places/AutocompleteFilter$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(ZLjava/util/List;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;-><init>(Lcom/google/android/gms/location/places/AutocompleteFilter$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/a;

    const/4 v0, 0x0

    return v0
.end method

.method public getPlaceTypes()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->He:Ljava/util/List;

    return-object v0
.end method

.method public getRestrictToPlaces()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->Hd:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/a;->a(Lcom/google/android/gms/location/places/AutocompleteFilter;Landroid/os/Parcel;I)V

    return-void
.end method
