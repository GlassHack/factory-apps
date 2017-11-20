.class public Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:I

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/gms/location/places/al;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/al;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->a:I

    .line 133
    iput p2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->b:I

    .line 134
    iput p3, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->c:I

    .line 135
    return-void
.end method

.method public static a(II)Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    if-ne p0, p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;

    if-nez v2, :cond_2

    move v0, v1

    .line 170
    goto :goto_0

    .line 172
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;

    .line 173
    iget v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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
    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "offset"

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "length"

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 146
    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/al;->a(Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;Landroid/os/Parcel;)V

    .line 147
    return-void
.end method
