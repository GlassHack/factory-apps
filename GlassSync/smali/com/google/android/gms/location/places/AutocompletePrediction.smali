.class public Lcom/google/android/gms/location/places/AutocompletePrediction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/AutocompletePrediction$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/AutocompletePrediction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dm:Ljava/lang/String;

.field final He:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final Hg:Ljava/lang/String;

.field final Hh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation
.end field

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompletePrediction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "placeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/AutocompletePrediction$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "placeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "substrings":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/AutocompletePrediction$a;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Dm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->He:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hh:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/location/places/AutocompletePrediction;
    .locals 6
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "placeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/AutocompletePrediction$a;",
            ">;)",
            "Lcom/google/android/gms/location/places/AutocompletePrediction;"
        }
    .end annotation

    .prologue
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "substrings":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/places/AutocompletePrediction$a;>;"
    new-instance v0, Lcom/google/android/gms/location/places/AutocompletePrediction;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/AutocompletePrediction;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

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
    instance-of v2, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/AutocompletePrediction;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Dm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;->Dm:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->He:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;->He:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hh:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hh:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Dm:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hg:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->He:Ljava/util/List;

    return-object v0
.end method

.method public getSubstrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/AutocompletePrediction$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hh:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Dm:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hg:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->He:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hh:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Dm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "placeId"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "placeTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->He:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "substrings"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->Hh:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/b;->a(Lcom/google/android/gms/location/places/AutocompletePrediction;Landroid/os/Parcel;I)V

    return-void
.end method
