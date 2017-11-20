.class public abstract Lcom/google/android/gms/maps/internal/l;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/internal/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/internal/l;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/k;
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
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/k;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/android/gms/maps/internal/k;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/m;-><init>(Landroid/os/IBinder;)V

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
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 483
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/maps/model/CameraPosition;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    :sswitch_2
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->b()F

    move-result v0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->c()F

    move-result v0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/e/i;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_5
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->b(Lcom/google/android/gms/e/i;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    :sswitch_6
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v0

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/internal/f;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/e;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/maps/internal/e;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 109
    :sswitch_7
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v0

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/internal/f;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/e;

    move-result-object v3

    .line 116
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/e/i;ILcom/google/android/gms/maps/internal/e;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    :sswitch_8
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->d()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    :sswitch_9
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/m;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/m;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 137
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/a/v;

    move-result-object v0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/v;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 135
    goto :goto_1

    .line 144
    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    sget-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/l;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 152
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/a/s;

    move-result-object v0

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 150
    goto :goto_2

    .line 159
    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    sget-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/k;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 167
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/a/p;

    move-result-object v0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 165
    goto :goto_3

    .line 174
    :sswitch_c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 177
    sget-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/f;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/f;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    .line 182
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/a/g;

    move-result-object v0

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 180
    goto :goto_4

    .line 189
    :sswitch_d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 192
    sget-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/v;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/v;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    .line 197
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/y;

    move-result-object v0

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/y;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    .line 195
    goto :goto_5

    .line 204
    :sswitch_e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->e()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 211
    :sswitch_f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->f()I

    move-result v0

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    :sswitch_10
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 228
    :sswitch_11
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->g()Z

    move-result v1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v1, :cond_b

    move v0, v2

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    :sswitch_12
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    move v0, v2

    .line 239
    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(Z)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 245
    :sswitch_13
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->h()Z

    move-result v1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v1, :cond_d

    move v0, v2

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    :sswitch_14
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    .line 256
    :goto_6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->b(Z)Z

    move-result v1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v1, :cond_e

    move v0, v2

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_f
    move v1, v0

    .line 255
    goto :goto_6

    .line 263
    :sswitch_15
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->i()Z

    move-result v1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v1, :cond_10

    move v0, v2

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    :sswitch_16
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    move v0, v2

    .line 274
    :cond_11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->c(Z)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 280
    :sswitch_17
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->j()Landroid/location/Location;

    move-result-object v1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v1, :cond_12

    .line 284
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    invoke-virtual {v1, p3, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 288
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 294
    :sswitch_18
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_13

    .line 297
    :goto_7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/q;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 296
    :cond_13
    const-string v0, "com.google.android.gms.maps.internal.ILocationSourceDelegate"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/q;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/maps/internal/q;

    move-object v1, v0

    goto :goto_7

    :cond_14
    new-instance v1, Lcom/google/android/gms/maps/internal/s;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/s;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    .line 303
    :sswitch_19
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->k()Lcom/google/android/gms/maps/internal/cf;

    move-result-object v0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/cf;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 311
    :sswitch_1a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->l()Lcom/google/android/gms/maps/internal/bq;

    move-result-object v0

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/bq;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_16
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 319
    :sswitch_1b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_17

    .line 322
    :goto_8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/aa;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 321
    :cond_17
    const-string v0, "com.google.android.gms.maps.internal.IOnCameraChangeListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/aa;

    if-eqz v1, :cond_18

    check-cast v0, Lcom/google/android/gms/maps/internal/aa;

    move-object v1, v0

    goto :goto_8

    :cond_18
    new-instance v1, Lcom/google/android/gms/maps/internal/ac;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/ac;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    .line 328
    :sswitch_1c
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_19

    .line 331
    :goto_9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/am;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 330
    :cond_19
    const-string v0, "com.google.android.gms.maps.internal.IOnMapClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1a

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/am;

    if-eqz v1, :cond_1a

    check-cast v0, Lcom/google/android/gms/maps/internal/am;

    move-object v1, v0

    goto :goto_9

    :cond_1a
    new-instance v1, Lcom/google/android/gms/maps/internal/ao;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/ao;-><init>(Landroid/os/IBinder;)V

    goto :goto_9

    .line 337
    :sswitch_1d
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 340
    :goto_a
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/as;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 339
    :cond_1b
    const-string v0, "com.google.android.gms.maps.internal.IOnMapLongClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/as;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/google/android/gms/maps/internal/as;

    move-object v1, v0

    goto :goto_a

    :cond_1c
    new-instance v1, Lcom/google/android/gms/maps/internal/au;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/au;-><init>(Landroid/os/IBinder;)V

    goto :goto_a

    .line 346
    :sswitch_1e
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1d

    .line 349
    :goto_b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/av;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 348
    :cond_1d
    const-string v0, "com.google.android.gms.maps.internal.IOnMarkerClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1e

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/av;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/google/android/gms/maps/internal/av;

    move-object v1, v0

    goto :goto_b

    :cond_1e
    new-instance v1, Lcom/google/android/gms/maps/internal/ax;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/ax;-><init>(Landroid/os/IBinder;)V

    goto :goto_b

    .line 355
    :sswitch_1f
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1f

    .line 358
    :goto_c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/ay;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 357
    :cond_1f
    const-string v0, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_20

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/ay;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/google/android/gms/maps/internal/ay;

    move-object v1, v0

    goto :goto_c

    :cond_20
    new-instance v1, Lcom/google/android/gms/maps/internal/ba;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/ba;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    .line 364
    :sswitch_20
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_21

    .line 367
    :goto_d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/ag;)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 366
    :cond_21
    const-string v0, "com.google.android.gms.maps.internal.IOnInfoWindowClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_22

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/ag;

    if-eqz v1, :cond_22

    check-cast v0, Lcom/google/android/gms/maps/internal/ag;

    move-object v1, v0

    goto :goto_d

    :cond_22
    new-instance v1, Lcom/google/android/gms/maps/internal/ai;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/ai;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    .line 373
    :sswitch_21
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_23

    .line 376
    :goto_e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/n;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 375
    :cond_23
    const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_24

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/n;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/google/android/gms/maps/internal/n;

    move-object v1, v0

    goto :goto_e

    :cond_24
    new-instance v1, Lcom/google/android/gms/maps/internal/p;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/p;-><init>(Landroid/os/IBinder;)V

    goto :goto_e

    .line 382
    :sswitch_22
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 385
    sget-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/e;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 390
    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/a/d;

    move-result-object v0

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/d;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_25
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_26
    move-object v0, v1

    .line 388
    goto :goto_f

    .line 397
    :sswitch_23
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_27

    .line 400
    :goto_10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/be;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 399
    :cond_27
    const-string v0, "com.google.android.gms.maps.internal.IOnMyLocationChangeListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_28

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/be;

    if-eqz v1, :cond_28

    check-cast v0, Lcom/google/android/gms/maps/internal/be;

    move-object v1, v0

    goto :goto_10

    :cond_28
    new-instance v1, Lcom/google/android/gms/maps/internal/bg;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/bg;-><init>(Landroid/os/IBinder;)V

    goto :goto_10

    .line 406
    :sswitch_24
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_29

    .line 409
    :goto_11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/bb;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 408
    :cond_29
    const-string v0, "com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2a

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/bb;

    if-eqz v1, :cond_2a

    check-cast v0, Lcom/google/android/gms/maps/internal/bb;

    move-object v1, v0

    goto :goto_11

    :cond_2a
    new-instance v1, Lcom/google/android/gms/maps/internal/bd;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/bd;-><init>(Landroid/os/IBinder;)V

    goto :goto_11

    .line 415
    :sswitch_25
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 419
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v0

    .line 420
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/bt;Lcom/google/android/gms/e/i;)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 417
    :cond_2b
    const-string v0, "com.google.android.gms.maps.internal.ISnapshotReadyCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2c

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/bt;

    if-eqz v1, :cond_2c

    check-cast v0, Lcom/google/android/gms/maps/internal/bt;

    move-object v1, v0

    goto :goto_12

    :cond_2c
    new-instance v1, Lcom/google/android/gms/maps/internal/bv;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/bv;-><init>(Landroid/os/IBinder;)V

    goto :goto_12

    .line 426
    :sswitch_26
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/google/android/gms/maps/internal/l;->a(IIII)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 441
    :sswitch_27
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->m()Z

    move-result v1

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v1, :cond_2d

    move v0, v2

    :cond_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    :sswitch_28
    const-string v1, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    move v0, v2

    .line 452
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/l;->d(Z)V

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 458
    :sswitch_29
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 461
    :goto_13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/ap;)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 460
    :cond_2f
    const-string v0, "com.google.android.gms.maps.internal.IOnMapLoadedCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_30

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/ap;

    if-eqz v1, :cond_30

    check-cast v0, Lcom/google/android/gms/maps/internal/ap;

    move-object v1, v0

    goto :goto_13

    :cond_30
    new-instance v1, Lcom/google/android/gms/maps/internal/ar;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/ar;-><init>(Landroid/os/IBinder;)V

    goto :goto_13

    .line 467
    :sswitch_2a
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/l;->n()Lcom/google/android/gms/maps/model/a/j;

    move-result-object v0

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/j;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_31
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 475
    :sswitch_2b
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_32

    .line 478
    :goto_14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/l;->a(Lcom/google/android/gms/maps/internal/ad;)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 477
    :cond_32
    const-string v0, "com.google.android.gms.maps.internal.IOnIndoorStateChangeListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_33

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/ad;

    if-eqz v1, :cond_33

    check-cast v0, Lcom/google/android/gms/maps/internal/ad;

    move-object v1, v0

    goto :goto_14

    :cond_33
    new-instance v1, Lcom/google/android/gms/maps/internal/af;

    invoke-direct {v1, v3}, Lcom/google/android/gms/maps/internal/af;-><init>(Landroid/os/IBinder;)V

    goto :goto_14

    .line 41
    nop

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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_2b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
