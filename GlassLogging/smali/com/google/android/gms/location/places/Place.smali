.class public abstract Lcom/google/android/gms/location/places/Place;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromParcelable(Landroid/os/Parcelable;Landroid/content/Context;)Lcom/google/android/gms/location/places/Place;
    .locals 2
    .param p0, "parcelable"    # Landroid/os/Parcelable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "parcelable":Landroid/os/Parcelable;
    :goto_0
    return-object p0

    .restart local p0    # "parcelable":Landroid/os/Parcelable;
    :cond_0
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    check-cast p0, Lcom/google/android/gms/internal/do;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "parcelable":Landroid/os/Parcelable;
    invoke-static {p1}, Lcom/google/android/gms/internal/ds;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/ds;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/ds;)V

    goto :goto_0

    .restart local p0    # "parcelable":Landroid/os/Parcelable;
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parcelable is not a Place"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getAddressComponents()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLatLng()Lcom/google/android/gms/maps/model/LatLng;
.end method

.method public abstract getLevelNumber()F
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOpeningHours()Lcom/google/android/gms/location/places/OpeningHours;
.end method

.method public abstract getPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getPriceLevel()I
.end method

.method public abstract getRating()F
.end method

.method public abstract getTimeZone()Ljava/util/TimeZone;
.end method

.method public abstract getTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
.end method

.method public abstract getWebsiteUri()Landroid/net/Uri;
.end method

.method public abstract isPermanentlyClosed()Z
.end method

.method public abstract toParcelable()Landroid/os/Parcelable;
.end method
