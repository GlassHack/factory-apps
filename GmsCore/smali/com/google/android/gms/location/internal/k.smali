.class public abstract Lcom/google/android/gms/location/internal/k;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/internal/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/location/internal/k;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/j;
    .locals 2

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/location/internal/j;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/android/gms/location/internal/j;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/google/android/gms/location/internal/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/l;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 722
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 48
    :sswitch_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->CREATOR:Lcom/google/android/gms/location/internal/s;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 64
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/location/internal/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/g;

    move-result-object v2

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/location/internal/k;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/g;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    move-object v0, v5

    .line 61
    goto :goto_1

    .line 73
    :sswitch_2
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 82
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/internal/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/g;

    move-result-object v1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/internal/k;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/g;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 79
    goto :goto_2

    .line 91
    :sswitch_3
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/internal/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/g;

    move-result-object v1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/internal/k;->a([Ljava/lang/String;Lcom/google/android/gms/location/internal/g;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_4
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/internal/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/g;

    move-result-object v0

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/internal/g;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    :sswitch_5
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    .line 121
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 127
    :goto_4
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/gms/location/internal/k;->a(JZLandroid/app/PendingIntent;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_2
    move v1, v0

    .line 119
    goto :goto_3

    :cond_3
    move-object v0, v5

    .line 125
    goto :goto_4

    .line 133
    :sswitch_6
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 141
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/k;->a(Landroid/app/PendingIntent;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    move-object v0, v5

    .line 139
    goto :goto_5

    .line 147
    :sswitch_7
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/k;->a()Landroid/location/Location;

    move-result-object v1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v1, :cond_5

    .line 151
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 155
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    :sswitch_8
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/m;

    invoke-static {p2}, Lcom/google/android/gms/location/m;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    .line 170
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/h;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 177
    :sswitch_9
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/m;

    invoke-static {p2}, Lcom/google/android/gms/location/m;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    .line 186
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/h;

    move-result-object v0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {p0, v5, v0, v1}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    :sswitch_a
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/m;

    invoke-static {p2}, Lcom/google/android/gms/location/m;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    move-object v1, v0

    .line 204
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 210
    :goto_7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_8
    move-object v1, v5

    .line 201
    goto :goto_6

    :cond_9
    move-object v0, v5

    .line 208
    goto :goto_7

    .line 216
    :sswitch_b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 219
    sget-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->CREATOR:Lcom/google/android/gms/location/internal/r;

    invoke-static {p2}, Lcom/google/android/gms/location/internal/r;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v5

    .line 225
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/h;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 232
    :sswitch_c
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 235
    sget-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->CREATOR:Lcom/google/android/gms/location/internal/r;

    invoke-static {p2}, Lcom/google/android/gms/location/internal/r;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    move-object v1, v0

    .line 241
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 242
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 247
    :goto_9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_b
    move-object v1, v5

    .line 238
    goto :goto_8

    :cond_c
    move-object v0, v5

    .line 245
    goto :goto_9

    .line 253
    :sswitch_d
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/h;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/h;)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    :sswitch_e
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 265
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 270
    :goto_a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/k;->b(Landroid/app/PendingIntent;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_d
    move-object v0, v5

    .line 268
    goto :goto_a

    .line 276
    :sswitch_f
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    move v0, v7

    .line 279
    :cond_e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/k;->a(Z)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 285
    :sswitch_10
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 288
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 293
    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/k;->a(Landroid/location/Location;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_f
    move-object v0, v5

    .line 291
    goto :goto_b

    .line 299
    :sswitch_11
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 302
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    .line 308
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 311
    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/j;

    invoke-static {p2}, Lcom/google/android/gms/location/places/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v3

    .line 317
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 318
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v4

    .line 324
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v5

    move-object v0, p0

    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_10
    move-object v1, v5

    .line 305
    goto :goto_c

    :cond_11
    move-object v3, v5

    .line 314
    goto :goto_d

    :cond_12
    move-object v4, v5

    .line 321
    goto :goto_e

    .line 331
    :sswitch_12
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 334
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    .line 340
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 345
    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/j;

    invoke-static {p2}, Lcom/google/android/gms/location/places/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    .line 351
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 352
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    .line 358
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v6

    move-object v0, p0

    .line 359
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_14
    move-object v1, v5

    .line 337
    goto :goto_f

    :cond_15
    move-object v4, v5

    .line 348
    goto :goto_10

    .line 365
    :sswitch_13
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 370
    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    .line 376
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v1

    .line 377
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/internal/k;->a(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 383
    :sswitch_14
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 386
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 392
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 393
    sget-object v1, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/j;

    invoke-static {p2}, Lcom/google/android/gms/location/places/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v1

    .line 399
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 400
    sget-object v2, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    .line 406
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v2

    .line 407
    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_18
    move-object v0, v5

    .line 389
    goto :goto_11

    :cond_19
    move-object v1, v5

    .line 396
    goto :goto_12

    .line 413
    :sswitch_15
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 416
    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/j;

    invoke-static {p2}, Lcom/google/android/gms/location/places/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    .line 422
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 423
    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    .line 429
    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v1

    .line 430
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_1b
    move-object v0, v5

    .line 419
    goto :goto_13

    .line 436
    :sswitch_16
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 441
    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    .line 447
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v1

    .line 448
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/internal/k;->b(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 454
    :sswitch_17
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 457
    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/ao;

    invoke-static {p2}, Lcom/google/android/gms/location/places/ao;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v1

    .line 463
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 464
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    .line 470
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 473
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v4

    .line 479
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v5

    move-object v0, p0

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/places/UserDataType;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_1d
    move-object v1, v5

    .line 460
    goto :goto_14

    :cond_1e
    move-object v2, v5

    .line 467
    goto :goto_15

    :cond_1f
    move-object v4, v5

    .line 476
    goto :goto_16

    .line 486
    :sswitch_18
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 489
    sget-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Lcom/google/android/gms/location/places/p;

    invoke-static {p2}, Lcom/google/android/gms/location/places/p;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceRequest;

    move-result-object v0

    move-object v1, v0

    .line 495
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 496
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v2, v0

    .line 502
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 503
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 508
    :goto_19
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_20
    move-object v1, v5

    .line 492
    goto :goto_17

    :cond_21
    move-object v2, v5

    .line 499
    goto :goto_18

    :cond_22
    move-object v0, v5

    .line 506
    goto :goto_19

    .line 514
    :sswitch_19
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 517
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v1, v0

    .line 523
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    .line 524
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 529
    :goto_1b
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_23
    move-object v1, v5

    .line 520
    goto :goto_1a

    :cond_24
    move-object v0, v5

    .line 527
    goto :goto_1b

    .line 535
    :sswitch_1a
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 538
    sget-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/e;

    invoke-static {p2}, Lcom/google/android/gms/location/places/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/NearbyAlertRequest;

    move-result-object v0

    move-object v1, v0

    .line 544
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 545
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v2, v0

    .line 551
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 552
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 557
    :goto_1e
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_25
    move-object v1, v5

    .line 541
    goto :goto_1c

    :cond_26
    move-object v2, v5

    .line 548
    goto :goto_1d

    :cond_27
    move-object v0, v5

    .line 555
    goto :goto_1e

    .line 563
    :sswitch_1b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 566
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v1, v0

    .line 572
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    .line 573
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 578
    :goto_20
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/k;->b(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_28
    move-object v1, v5

    .line 569
    goto :goto_1f

    :cond_29
    move-object v0, v5

    .line 576
    goto :goto_20

    .line 584
    :sswitch_1c
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 589
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p2}, Lcom/google/android/gms/maps/model/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    .line 595
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 596
    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/b;

    invoke-static {p2}, Lcom/google/android/gms/location/places/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/AutocompleteFilter;

    move-result-object v3

    .line 602
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 603
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v4

    .line 609
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v5

    move-object v0, p0

    .line 610
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/internal/k;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_2a
    move-object v2, v5

    .line 592
    goto :goto_21

    :cond_2b
    move-object v3, v5

    .line 599
    goto :goto_22

    :cond_2c
    move-object v4, v5

    .line 606
    goto :goto_23

    .line 616
    :sswitch_1d
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 619
    sget-object v0, Lcom/google/android/gms/location/places/UserAddedPlace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserAddedPlace;

    .line 625
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 626
    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    .line 632
    :cond_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/a;

    move-result-object v1

    .line 633
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/places/UserAddedPlace;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_2e
    move-object v0, v5

    .line 622
    goto :goto_24

    .line 639
    :sswitch_1e
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/k;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v1, :cond_2f

    .line 645
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 649
    :cond_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 655
    :sswitch_1f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    .line 658
    sget-object v0, Lcom/google/android/gms/location/places/PlaceReport;->CREATOR:Lcom/google/android/gms/location/places/n;

    invoke-static {p2}, Lcom/google/android/gms/location/places/n;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceReport;

    move-result-object v0

    .line 664
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    .line 665
    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/location/places/internal/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    .line 670
    :cond_30
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/location/internal/k;->a(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/PlacesParams;)V

    goto/16 :goto_0

    :cond_31
    move-object v0, v5

    .line 661
    goto :goto_25

    .line 675
    :sswitch_20
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 678
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 684
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 685
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/internal/k;->a(Landroid/location/Location;I)V

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_32
    move-object v0, v5

    .line 681
    goto :goto_26

    .line 691
    :sswitch_21
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/k;->b(Ljava/lang/String;)Lcom/google/android/gms/location/LocationStatus;

    move-result-object v1

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    if-eqz v1, :cond_33

    .line 697
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    invoke-virtual {v1, p3, v7}, Lcom/google/android/gms/location/LocationStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 701
    :cond_33
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 707
    :sswitch_22
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/k;->b()Landroid/os/IBinder;

    move-result-object v0

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 715
    :sswitch_23
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/k;->c()Landroid/os/IBinder;

    move-result-object v0

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 44
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
        0x9 -> :sswitch_a
        0xa -> :sswitch_d
        0xb -> :sswitch_e
        0xc -> :sswitch_f
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_15
        0x12 -> :sswitch_18
        0x13 -> :sswitch_19
        0x14 -> :sswitch_9
        0x15 -> :sswitch_1e
        0x19 -> :sswitch_1f
        0x1a -> :sswitch_20
        0x22 -> :sswitch_21
        0x2a -> :sswitch_16
        0x2e -> :sswitch_1d
        0x2f -> :sswitch_12
        0x30 -> :sswitch_1a
        0x31 -> :sswitch_1b
        0x32 -> :sswitch_17
        0x33 -> :sswitch_22
        0x34 -> :sswitch_b
        0x35 -> :sswitch_c
        0x36 -> :sswitch_23
        0x37 -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
