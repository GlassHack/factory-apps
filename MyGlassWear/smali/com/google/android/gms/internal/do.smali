.class public final Lcom/google/android/gms/internal/do;
.super Lcom/google/android/gms/location/places/Place;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/dp;


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

.field private final Ic:Landroid/os/Bundle;

.field private final Id:F

.field private final Ie:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final If:Ljava/lang/String;

.field private final Ig:Landroid/net/Uri;

.field private final Ih:Z

.field private final Ii:F

.field private final Ij:I

.field private final Ik:J

.field private final Il:Ljava/lang/String;

.field private final Im:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final In:Lcom/google/android/gms/internal/dq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final Io:Z

.field private final Ip:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Iq:Ljava/util/TimeZone;

.field private Ir:Ljava/util/Locale;

.field private Is:Lcom/google/android/gms/internal/ds;

.field private final mName:Ljava/lang/String;

.field private final mPhoneNumber:Ljava/lang/String;

.field final mVersionCode:I

.field private final pc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/do;->CREATOR:Lcom/google/android/gms/internal/dp;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJZLcom/google/android/gms/internal/dq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "F",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZFIJZ",
            "Lcom/google/android/gms/internal/dq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/places/Place;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/do;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/do;->pc:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/do;->HZ:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/do;->Ic:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/do;->mName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/do;->Cy:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/do;->mPhoneNumber:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/do;->Il:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/do;->Im:Ljava/util/List;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->HY:Lcom/google/android/gms/maps/model/LatLng;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/do;->Id:F

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->Ie:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->If:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->Ig:Landroid/net/Uri;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/internal/do;->Ih:Z

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/do;->Ii:F

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/internal/do;->Ij:I

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/google/android/gms/internal/do;->Ik:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/location/places/PlaceType;->create(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v5

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/do;->Ip:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->If:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/do;->Iq:Ljava/util/TimeZone;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/do;->Ir:Ljava/util/Locale;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/do;->Io:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->In:Lcom/google/android/gms/internal/dq;

    return-void
.end method

.method private as(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/do;->eQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Is:Lcom/google/android/gms/internal/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Is:Lcom/google/android/gms/internal/ds;

    iget-object v1, p0, Lcom/google/android/gms/internal/do;->pc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ds;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/do;->Is:Lcom/google/android/gms/internal/ds;

    return-void
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/do;->CREATOR:Lcom/google/android/gms/internal/dp;

    const/4 v0, 0x0

    return v0
.end method

.method public eN()Ljava/lang/String;
    .locals 1

    const-string v0, "getRegularOpenHours"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Il:Ljava/lang/String;

    return-object v0
.end method

.method public eO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getAttributions"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Im:Ljava/util/List;

    return-object v0
.end method

.method public eP()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/do;->Ik:J

    return-wide v0
.end method

.method public eQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/do;->Io:Z

    return v0
.end method

.method public eR()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Ic:Landroid/os/Bundle;

    return-object v0
.end method

.method public eS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->If:Ljava/lang/String;

    return-object v0
.end method

.method public eT()Lcom/google/android/gms/internal/dq;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->In:Lcom/google/android/gms/internal/dq;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/do;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/do;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/do;->pc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/do;->pc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->Ir:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/internal/do;->Ir:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/do;->Ik:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/do;->Ik:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    const-string v0, "getAddress"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Cy:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressComponents()Ljava/util/Map;
    .locals 1
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

    const-string v0, "getAddressComponents"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Ip:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "getId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->pc:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    const-string v0, "getLatLng"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->HY:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLevelNumber()F
    .locals 1

    const-string v0, "getLevelNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/do;->Id:F

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    const-string v0, "mLocale"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Ir:Ljava/util/Locale;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getName"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningHours()Lcom/google/android/gms/location/places/OpeningHours;
    .locals 1

    const-string v0, "getOpeningHours"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "getPhoneNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceLevel()I
    .locals 1

    const-string v0, "getPriceLevel"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/do;->Ij:I

    return v0
.end method

.method public getRating()F
    .locals 1

    const-string v0, "getRating"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/do;->Ii:F

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    const-string v0, "getTimeZone"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Iq:Ljava/util/TimeZone;

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

    const-string v0, "getTypes"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->HZ:Ljava/util/List;

    return-object v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    const-string v0, "getViewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Ie:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "getWebsiteUri"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->Ig:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->pc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->Ir:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/do;->Ik:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPermanentlyClosed()Z
    .locals 1

    const-string v0, "isPermanentlyClosed"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/do;->as(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/do;->Ih:Z

    return v0
.end method

.method public toParcelable()Landroid/os/Parcelable;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->pc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->HZ:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->Ir:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "address"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->Cy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "regularOpenHours"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->Il:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->HY:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "levelNumber"

    iget v2, p0, Lcom/google/android/gms/internal/do;->Id:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string/jumbo v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->Ie:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "timeZone"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->If:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string/jumbo v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->Ig:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/do;->Ih:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/internal/do;->Ij:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "timestampSecs"

    iget-wide v2, p0, Lcom/google/android/gms/internal/do;->Ik:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/do;->CREATOR:Lcom/google/android/gms/internal/dp;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dp;->a(Lcom/google/android/gms/internal/do;Landroid/os/Parcel;I)V

    return-void
.end method
