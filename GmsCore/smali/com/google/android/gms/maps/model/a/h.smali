.class public abstract Lcom/google/android/gms/maps/model/a/h;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/model/a/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/model/a/h;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/g;
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
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/maps/model/a/g;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/android/gms/maps/model/a/g;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/a/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a/i;-><init>(Landroid/os/IBinder;)V

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
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->a()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string v2, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_4
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->c()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :sswitch_5
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->a(F)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_6
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 107
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/maps/model/a/h;->a(FF)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    :sswitch_7
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->d()F

    move-result v0

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 121
    :sswitch_8
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->e()F

    move-result v0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 129
    :sswitch_9
    const-string v2, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 137
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 143
    :sswitch_a
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->f()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 151
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    :sswitch_b
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->b(F)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    :sswitch_c
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->g()F

    move-result v0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 174
    :sswitch_d
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 177
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->c(F)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 183
    :sswitch_e
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->h()F

    move-result v0

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 191
    :sswitch_f
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 194
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->a(Z)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 193
    goto :goto_1

    .line 200
    :sswitch_10
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->i()Z

    move-result v0

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 208
    :sswitch_11
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->d(F)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 217
    :sswitch_12
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->j()F

    move-result v0

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 225
    :sswitch_13
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/a/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/g;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->a(Lcom/google/android/gms/maps/model/a/g;)Z

    move-result v0

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    :sswitch_14
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/h;->k()I

    move-result v0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    :sswitch_15
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/h;->a(Lcom/google/android/gms/e/i;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
