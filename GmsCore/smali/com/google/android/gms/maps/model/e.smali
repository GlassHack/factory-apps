.class public final Lcom/google/android/gms/maps/model/e;
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

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v1

    .line 22
    const/4 v3, 0x0

    .line 24
    const-wide/16 v4, 0x0

    move v8, v10

    move v7, v10

    move v6, v9

    move v2, v10

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    const v11, 0xffff

    and-int/2addr v11, v0

    packed-switch v11, :pswitch_data_0

    .line 122
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 43
    :pswitch_0
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    .line 53
    :pswitch_1
    sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-static {p0, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    move-object v3, v0

    .line 59
    goto :goto_0

    .line 63
    :pswitch_2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)D

    move-result-wide v4

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v6

    goto :goto_0

    .line 83
    :pswitch_4
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    .line 93
    :pswitch_5
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_0

    .line 103
    :pswitch_6
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v9

    goto :goto_0

    .line 113
    :pswitch_7
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 128
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    .line 131
    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V

    .line 135
    return-object v1

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 143
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 153
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 160
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->c()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ID)V

    .line 167
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->d()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 174
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->e()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 181
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->f()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 188
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->g()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 195
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->h()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 203
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 204
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/maps/model/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/maps/model/CircleOptions;

    return-object v0
.end method
