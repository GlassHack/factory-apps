.class public final Lcom/google/android/gms/location/places/PlaceFilter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/PlaceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private Hf:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field private Hl:Ljava/lang/String;

.field private Hm:Z

.field private Hs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field private Ht:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hf:Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hm:Z

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hs:Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Ht:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/PlaceFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/location/places/PlaceFilter$1;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/location/places/PlaceFilter$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 2
    .param p1, "template"    # Lcom/google/android/gms/location/places/PlaceFilter;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hf:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hm:Z

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hs:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Ht:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceTypes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hf:Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceFilter;->getTextQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceFilter;->getRequireOpenNow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hm:Z

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceFilter;->getRequestedUserDataTypes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hs:Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Ht:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/PlaceFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/location/places/PlaceFilter;
    .param p2, "x1"    # Lcom/google/android/gms/location/places/PlaceFilter$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/location/places/PlaceFilter$Builder;-><init>(Lcom/google/android/gms/location/places/PlaceFilter;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hf:Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hf:Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hs:Ljava/util/Collection;

    if-eqz v0, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hs:Ljava/util/Collection;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Ht:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Ht:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_2
    new-instance v0, Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hm:Z

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(Ljava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Lcom/google/android/gms/location/places/PlaceFilter$1;)V

    return-object v0

    :cond_0
    move-object v1, v6

    goto :goto_0

    :cond_1
    move-object v4, v6

    goto :goto_1

    :cond_2
    move-object v5, v6

    goto :goto_2
.end method

.method public varargs requiredUserDataTypes([Lcom/google/android/gms/location/places/UserDataType;)Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    .locals 1
    .param p1, "userDataTypes"    # [Lcom/google/android/gms/location/places/UserDataType;

    .prologue
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hs:Ljava/util/Collection;

    return-object p0
.end method

.method public varargs restrictToPlaceIds([Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    .locals 0
    .param p1, "placeIds"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Ht:[Ljava/lang/String;

    return-object p0
.end method

.method public restrictToPlaceTypes(Ljava/util/Collection;)Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;)",
            "Lcom/google/android/gms/location/places/PlaceFilter$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "placeTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/location/places/PlaceType;>;"
    iput-object p1, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hf:Ljava/util/Collection;

    return-object p0
.end method

.method public varargs restrictToPlaceTypes([Lcom/google/android/gms/location/places/PlaceType;)Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    .locals 1
    .param p1, "placeTypes"    # [Lcom/google/android/gms/location/places/PlaceType;

    .prologue
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->restrictToPlaceTypes(Ljava/util/Collection;)Lcom/google/android/gms/location/places/PlaceFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public restrictToPlacesOpenNow()Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hm:Z

    return-object p0
.end method

.method public setTextQuery(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceFilter$Builder;
    .locals 0
    .param p1, "textQuery"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/places/PlaceFilter$Builder;->Hl:Ljava/lang/String;

    return-object p0
.end method
