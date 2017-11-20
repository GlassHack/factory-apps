.class public Lcom/google/android/gms/location/places/AutocompletePrediction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/util/List;

.field final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/location/places/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompletePrediction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->a:I

    .line 59
    iput-object p2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->b:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->c:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->d:Ljava/util/List;

    .line 62
    iput-object p5, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->e:Ljava/util/List;

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/location/places/AutocompletePrediction;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/location/places/AutocompletePrediction;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/AutocompletePrediction;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->e:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    if-ne p0, p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;

    if-nez v2, :cond_2

    move v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/AutocompletePrediction;

    .line 204
    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction;->e:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->d:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->e:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "placeId"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "placeTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "substrings"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/d;->a(Lcom/google/android/gms/location/places/AutocompletePrediction;Landroid/os/Parcel;)V

    .line 92
    return-void
.end method
