.class public final Lcom/google/android/gms/location/places/NearbyAlertRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/location/places/PlaceFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/location/places/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/e;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->a:I

    .line 63
    iput p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    .line 64
    iput p3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    .line 65
    iput-object p4, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    .line 66
    return-void
.end method

.method public static a(ILcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/gms/location/places/NearbyAlertRequest;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/location/places/NearbyAlertRequest;-><init>(IIILcom/google/android/gms/location/places/PlaceFilter;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    return v0
.end method

.method public final d()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/e;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    if-ne p0, p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    if-nez v2, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    .line 149
    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/PlaceFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "placeFilter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/e;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/e;->a(Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/os/Parcel;I)V

    .line 168
    return-void
.end method
