.class public abstract Lcom/google/android/gms/wearable/internal/aj;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/ai;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ai;
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/ai;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gms/wearable/internal/ai;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/ak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ak;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    sget-object v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 62
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 64
    goto :goto_0

    .line 68
    :sswitch_2
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 75
    goto :goto_0

    .line 79
    :sswitch_3
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 84
    goto :goto_0

    .line 88
    :sswitch_4
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/wearable/internal/aj;->b(Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 95
    goto :goto_0

    .line 99
    :sswitch_5
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/wearable/internal/aj;->c(Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 106
    goto/16 :goto_0

    .line 110
    :sswitch_6
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    sget-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/PutDataRequest;

    .line 120
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/PutDataRequest;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 122
    goto/16 :goto_0

    .line 126
    :sswitch_7
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 136
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;Landroid/net/Uri;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 138
    goto/16 :goto_0

    .line 142
    :sswitch_8
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->b(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 147
    goto/16 :goto_0

    .line 151
    :sswitch_9
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 161
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->b(Lcom/google/android/gms/wearable/internal/ac;Landroid/net/Uri;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 163
    goto/16 :goto_0

    .line 167
    :sswitch_a
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 177
    :cond_4
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->c(Lcom/google/android/gms/wearable/internal/ac;Landroid/net/Uri;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 179
    goto/16 :goto_0

    .line 183
    :sswitch_b
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 192
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 198
    :sswitch_c
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    sget-object v0, Lcom/google/android/gms/wearable/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    .line 208
    :cond_5
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/Asset;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 210
    goto/16 :goto_0

    .line 214
    :sswitch_d
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->c(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 219
    goto/16 :goto_0

    .line 223
    :sswitch_e
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->d(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 228
    goto/16 :goto_0

    .line 232
    :sswitch_f
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 237
    sget-object v0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/AddListenerRequest;

    .line 242
    :cond_6
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/internal/AddListenerRequest;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 244
    goto/16 :goto_0

    .line 248
    :sswitch_10
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 253
    sget-object v0, Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;

    .line 258
    :cond_7
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 260
    goto/16 :goto_0

    .line 264
    :sswitch_11
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 267
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->e(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 269
    goto/16 :goto_0

    .line 273
    :sswitch_12
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->f(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 278
    goto/16 :goto_0

    .line 282
    :sswitch_13
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v2

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 287
    sget-object v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 292
    :cond_8
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/aj;->b(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 294
    goto/16 :goto_0

    .line 298
    :sswitch_14
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->g(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 303
    goto/16 :goto_0

    .line 307
    :sswitch_15
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->h(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 312
    goto/16 :goto_0

    .line 316
    :sswitch_16
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/aj;->i(Lcom/google/android/gms/wearable/internal/ac;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 321
    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_13
        0x3 -> :sswitch_14
        0x4 -> :sswitch_15
        0x5 -> :sswitch_16
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
