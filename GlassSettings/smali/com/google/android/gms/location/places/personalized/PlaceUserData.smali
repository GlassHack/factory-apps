.class public Lcom/google/android/gms/location/places/personalized/PlaceUserData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/b;


# instance fields
.field private final Hg:Ljava/lang/String;

.field private final II:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final IJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/PlaceAlias;",
            ">;"
        }
    .end annotation
.end field

.field final mVersionCode:I

.field private final pg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/personalized/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/b;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "placeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/PlaceAlias;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "testDataImpls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;>;"
    .local p5, "placeAliases":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/personalized/PlaceAlias;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->pg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Hg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->II:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->IJ:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;
    .locals 6
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "placeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/PlaceAlias;",
            ">;)",
            "Lcom/google/android/gms/location/places/personalized/PlaceUserData;"
        }
    .end annotation

    .prologue
    .local p2, "testDataImpls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;>;"
    .local p3, "placeAliases":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/personalized/PlaceAlias;>;"
    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/personalized/PlaceUserData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public containsUserDataTypes(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "userDataTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/location/places/UserDataType;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserDataType;

    sget-object v5, Lcom/google/android/gms/location/places/UserDataType;->TEST_TYPE:Lcom/google/android/gms/location/places/UserDataType;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/location/places/UserDataType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->II:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_2
    or-int/2addr v0, v1

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/google/android/gms/location/places/UserDataType;->ALIASES:Lcom/google/android/gms/location/places/UserDataType;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/location/places/UserDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->IJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_4
    or-int/2addr v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    move v3, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/b;

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
    instance-of v2, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->pg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->pg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Hg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Hg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->II:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->II:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->IJ:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->IJ:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getPlaceAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/PlaceAlias;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->IJ:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Hg:Ljava/lang/String;

    return-object v0
.end method

.method public getTestData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/TestData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->II:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getTestDataImpls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->II:Ljava/util/List;

    return-object v0
.end method

.method public getUserAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->pg:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Hg:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->II:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->IJ:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/b;->a(Lcom/google/android/gms/location/places/personalized/PlaceUserData;Landroid/os/Parcel;I)V

    return-void
.end method
