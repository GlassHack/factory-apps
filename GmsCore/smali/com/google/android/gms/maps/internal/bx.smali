.class public abstract Lcom/google/android/gms/maps/internal/bx;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/internal/bw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/internal/bx;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/bw;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/bw;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/android/gms/maps/internal/bw;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/by;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/by;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 53
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/bx;->a(Z)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 62
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/bx;->b(Z)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 71
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/bx;->c(Z)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 80
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/bx;->d(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/bx;->a()Z

    move-result v2

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    :sswitch_6
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/bx;->b()Z

    move-result v2

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    :sswitch_7
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/bx;->c()Z

    move-result v2

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    :sswitch_8
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/bx;->d()Z

    move-result v2

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    :sswitch_9
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lcom/google/android/gms/maps/model/o;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/o;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    .line 127
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 128
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/maps/internal/bx;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    .line 124
    goto :goto_1

    .line 134
    :sswitch_a
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/bx;->e()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v2

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v2, :cond_9

    .line 138
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 142
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/bx;->a(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    :sswitch_c
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 160
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 165
    :cond_a
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/bx;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    :sswitch_d
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 180
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/maps/internal/bx;->a(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 187
    :sswitch_e
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/bx;->f()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v2

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v2, :cond_c

    .line 191
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 195
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    :sswitch_f
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_d

    .line 204
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/bx;->a(Lcom/google/android/gms/maps/internal/bk;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    :cond_d
    const-string v0, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v2, v0, Lcom/google/android/gms/maps/internal/bk;

    if-eqz v2, :cond_e

    check-cast v0, Lcom/google/android/gms/maps/internal/bk;

    move-object v2, v0

    goto :goto_2

    :cond_e
    new-instance v2, Lcom/google/android/gms/maps/internal/bm;

    invoke-direct {v2, v3}, Lcom/google/android/gms/maps/internal/bm;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 210
    :sswitch_10
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_f

    .line 213
    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/bx;->a(Lcom/google/android/gms/maps/internal/bh;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 212
    :cond_f
    const-string v0, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaCameraChangeListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_10

    instance-of v2, v0, Lcom/google/android/gms/maps/internal/bh;

    if-eqz v2, :cond_10

    check-cast v0, Lcom/google/android/gms/maps/internal/bh;

    move-object v2, v0

    goto :goto_3

    :cond_10
    new-instance v2, Lcom/google/android/gms/maps/internal/bj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/maps/internal/bj;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 219
    :sswitch_11
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_11

    .line 222
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/bx;->a(Lcom/google/android/gms/maps/internal/bn;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 221
    :cond_11
    const-string v0, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_12

    instance-of v2, v0, Lcom/google/android/gms/maps/internal/bn;

    if-eqz v2, :cond_12

    check-cast v0, Lcom/google/android/gms/maps/internal/bn;

    move-object v2, v0

    goto :goto_4

    :cond_12
    new-instance v2, Lcom/google/android/gms/maps/internal/bp;

    invoke-direct {v2, v3}, Lcom/google/android/gms/maps/internal/bp;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 228
    :sswitch_12
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v2

    .line 231
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/bx;->a(Lcom/google/android/gms/e/i;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    move-result-object v2

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v2, :cond_13

    .line 234
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 238
    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    :sswitch_13
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 247
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->CREATOR:Lcom/google/android/gms/maps/model/s;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/s;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    move-result-object v0

    .line 252
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/bx;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/e/i;

    move-result-object v0

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_14
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_15
    move-object v0, v2

    .line 250
    goto :goto_5

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
