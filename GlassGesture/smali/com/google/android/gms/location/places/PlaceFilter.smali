.class public final Lcom/google/android/gms/location/places/PlaceFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/PlaceFilter$1;,
        Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/d;


# instance fields
.field final Hk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field private final Hl:Ljava/lang/String;

.field private final Hm:Z

.field final Hn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field final Ho:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Hp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field private final Hq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field private final Hr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/d;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p3, "textQuery"    # Ljava/lang/String;
    .param p4, "requireOpenNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "placeTypesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/PlaceType;>;"
    .local p5, "requestedUserDataTypesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/UserDataType;>;"
    .local p6, "placeIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->mVersionCode:I

    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hk:Ljava/util/List;

    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "textQuery":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hm:Z

    if-nez p5, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hn:Ljava/util/List;

    if-nez p6, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Ho:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hk:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->f(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hp:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hn:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->f(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hq:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Ho:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->f(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hr:Ljava/util/Set;

    return-void

    .restart local p3    # "textQuery":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .end local p3    # "textQuery":Ljava/lang/String;
    :cond_2
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 7
    .param p2, "textQuery"    # Ljava/lang/String;
    .param p3, "requireOpenNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "placeTypes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/PlaceType;>;"
    .local p4, "requestedUserDataTypes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/UserDataType;>;"
    .local p5, "placeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(ILjava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Lcom/google/android/gms/location/places/PlaceFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Lcom/google/android/gms/location/places/PlaceFilter$1;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(Ljava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static f(Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultFilter()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/PlaceFilter$Builder;-><init>(Lcom/google/android/gms/location/places/PlaceFilter$1;)V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->build()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/PlaceFilter$Builder;-><init>(Lcom/google/android/gms/location/places/PlaceFilter$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    .locals 2
    .param p0, "template"    # Lcom/google/android/gms/location/places/PlaceFilter;

    .prologue
    new-instance v0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/places/PlaceFilter$Builder;-><init>(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/PlaceFilter$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/d;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceFilter;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/PlaceFilter;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hp:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->Hp:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hm:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->Hm:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hq:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->Hq:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hr:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->Hr:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getPlaceIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hr:Ljava/util/Set;

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hp:Ljava/util/Set;

    return-object v0
.end method

.method public getRequestedUserDataTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hq:Ljava/util/Set;

    return-object v0
.end method

.method public getRequireOpenNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hm:Z

    return v0
.end method

.method public getTextQuery()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hp:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hq:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hr:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/google/android/gms/location/places/Place;)Z
    .locals 5
    .param p1, "place"    # Lcom/google/android/gms/location/places/Place;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->getRequireOpenNow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/Place;->isPermanentlyClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceTypes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/Place;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/Place;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    :goto_2
    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public requiresUserData()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->getRequestedUserDataTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hp:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "placeIds"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hr:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "requireOpenNow"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "requestedUserDataTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->Hq:Ljava/util/Set;

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
    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/d;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/d;->a(Lcom/google/android/gms/location/places/PlaceFilter;Landroid/os/Parcel;I)V

    return-void
.end method
