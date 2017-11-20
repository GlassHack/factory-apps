.class public final Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/AutocompleteFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private Hd:Z

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


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->Hd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->Hf:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/AutocompleteFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/location/places/AutocompleteFilter$1;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/places/AutocompleteFilter;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->Hf:Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->Hf:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v2, Lcom/google/android/gms/location/places/AutocompleteFilter;

    iget-boolean v3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->Hd:Z

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(ZLjava/util/List;Lcom/google/android/gms/location/places/AutocompleteFilter$1;)V

    return-object v2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public varargs restrictToPlaceTypes([Lcom/google/android/gms/location/places/PlaceType;)Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
    .locals 1
    .param p1, "placeTypes"    # [Lcom/google/android/gms/location/places/PlaceType;

    .prologue
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->Hf:Ljava/util/Collection;

    return-object p0
.end method

.method public restrictToPlaces(Z)Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
    .locals 0
    .param p1, "restrictToPlaces"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->Hd:Z

    return-object p0
.end method
