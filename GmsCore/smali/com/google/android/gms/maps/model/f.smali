.class public final Lcom/google/android/gms/maps/model/f;
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

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 15

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v13

    move v11, v12

    move v10, v12

    move v8, v12

    move v7, v12

    move v5, v12

    move v4, v12

    move-object v3, v6

    move-object v2, v6

    move v1, v9

    .line 45
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v13, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 47
    const v14, 0xffff

    and-int/2addr v14, v0

    packed-switch v14, :pswitch_data_0

    .line 170
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    .line 71
    :pswitch_2
    sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-static {p0, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    move-object v3, v0

    .line 77
    goto :goto_0

    .line 81
    :pswitch_3
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v4

    goto :goto_0

    .line 91
    :pswitch_4
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v5

    goto :goto_0

    .line 101
    :pswitch_5
    sget-object v6, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p0, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object v6, v0

    .line 107
    goto :goto_0

    .line 111
    :pswitch_6
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v7

    goto :goto_0

    .line 121
    :pswitch_7
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v8

    goto :goto_0

    .line 131
    :pswitch_8
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    .line 141
    :pswitch_9
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v10

    goto :goto_0

    .line 151
    :pswitch_a
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v11

    goto :goto_0

    .line 161
    :pswitch_b
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)F

    move-result v12

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v13, :cond_1

    .line 176
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V

    .line 183
    return-object v0

    .line 47
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 194
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->b()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    .line 201
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 208
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 215
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 222
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 229
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 236
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 243
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 250
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    .line 257
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 264
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 271
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    .line 279
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 280
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/maps/model/f;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    new-array v0, p1, [Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    return-object v0
.end method
