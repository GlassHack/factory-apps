.class public Lcom/google/android/gms/location/places/PlaceLikelihood;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/location/places/internal/PlaceImpl;

.field final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/gms/location/places/m;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceLikelihood;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/places/internal/PlaceImpl;F)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->a:I

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->b:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    .line 47
    iput p3, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->c:F

    .line 48
    return-void
.end method

.method public static a(Lcom/google/android/gms/location/places/internal/PlaceImpl;F)Lcom/google/android/gms/location/places/PlaceLikelihood;
    .locals 3

    .prologue
    .line 36
    new-instance v1, Lcom/google/android/gms/location/places/PlaceLikelihood;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/gms/location/places/PlaceLikelihood;-><init>(ILcom/google/android/gms/location/places/internal/PlaceImpl;F)V

    return-object v1
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->c:F

    return v0
.end method

.method public final b()Lcom/google/android/gms/location/places/h;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->b:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceLikelihood;

    if-nez v2, :cond_2

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/PlaceLikelihood;

    .line 59
    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->b:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceLikelihood;->b:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->c:F

    iget v3, p1, Lcom/google/android/gms/location/places/PlaceLikelihood;->c:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->b:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "place"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->b:Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "likelihood"

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/m;->a(Lcom/google/android/gms/location/places/PlaceLikelihood;Landroid/os/Parcel;I)V

    .line 91
    return-void
.end method
