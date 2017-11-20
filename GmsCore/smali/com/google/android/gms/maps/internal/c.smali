.class public abstract Lcom/google/android/gms/maps/internal/c;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/internal/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/maps/internal/c;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/b;
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
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/b;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/android/gms/maps/internal/b;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/d;-><init>(Landroid/os/IBinder;)V

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
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/c;->a()Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 54
    goto :goto_0

    .line 58
    :sswitch_2
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/c;->b()Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 62
    goto :goto_0

    .line 66
    :sswitch_3
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 71
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/internal/c;->a(FF)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 74
    goto :goto_0

    .line 78
    :sswitch_4
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 81
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/c;->a(F)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 84
    goto :goto_0

    .line 88
    :sswitch_5
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/c;->b(F)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 94
    goto/16 :goto_0

    .line 98
    :sswitch_6
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/gms/maps/internal/c;->a(FII)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 108
    goto/16 :goto_0

    .line 112
    :sswitch_7
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 115
    sget-object v1, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/d;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 120
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 123
    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    .line 118
    goto :goto_1

    .line 127
    :sswitch_8
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 130
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 135
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 138
    goto/16 :goto_0

    :cond_9
    move-object v1, v0

    .line 133
    goto :goto_2

    .line 142
    :sswitch_9
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 145
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 151
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 152
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 155
    goto/16 :goto_0

    :cond_b
    move-object v1, v0

    .line 148
    goto :goto_3

    .line 159
    :sswitch_a
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 162
    sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    .line 168
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 172
    goto/16 :goto_0

    :cond_d
    move-object v1, v0

    .line 165
    goto :goto_4

    .line 176
    :sswitch_b
    const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 179
    sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    .line 185
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 190
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/e/i;

    move-result-object v1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 193
    goto/16 :goto_0

    :cond_f
    move-object v1, v0

    .line 182
    goto :goto_5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
