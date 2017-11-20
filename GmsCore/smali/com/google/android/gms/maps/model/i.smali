.class public final Lcom/google/android/gms/maps/model/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 20
    const/4 v1, 0x0

    move-wide v2, v4

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 29
    const v7, 0xffff

    and-int/2addr v7, v6

    packed-switch v7, :pswitch_data_0

    .line 62
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)D

    move-result-wide v2

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-static {p0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)D

    move-result-wide v4

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-eq v6, v0, :cond_1

    .line 68
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    .line 71
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(IDD)V

    .line 75
    return-object v0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 83
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/LatLng;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 93
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ID)V

    .line 100
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ID)V

    .line 108
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 109
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/maps/model/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method
