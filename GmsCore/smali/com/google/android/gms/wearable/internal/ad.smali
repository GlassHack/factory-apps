.class public abstract Lcom/google/android/gms/wearable/internal/ad;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/ac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;
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
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/ac;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gms/wearable/internal/ac;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/ae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ae;-><init>(Landroid/os/IBinder;)V

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
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sget-object v0, Lcom/google/android/gms/wearable/internal/GetConfigResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetConfigResponse;

    .line 60
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/GetConfigResponse;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 62
    goto :goto_0

    .line 66
    :sswitch_2
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    sget-object v0, Lcom/google/android/gms/wearable/internal/GetConfigsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetConfigsResponse;

    .line 74
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/GetConfigsResponse;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 76
    goto :goto_0

    .line 80
    :sswitch_3
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    sget-object v0, Lcom/google/android/gms/wearable/internal/PutDataResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/PutDataResponse;

    .line 88
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/PutDataResponse;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 90
    goto :goto_0

    .line 94
    :sswitch_4
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    sget-object v0, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;

    .line 102
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/GetDataItemResponse;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 104
    goto :goto_0

    .line 108
    :sswitch_5
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/h;

    invoke-static {p2}, Lcom/google/android/gms/common/data/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    .line 116
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 118
    goto/16 :goto_0

    .line 122
    :sswitch_6
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    sget-object v0, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;

    .line 130
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 132
    goto/16 :goto_0

    .line 136
    :sswitch_7
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    sget-object v0, Lcom/google/android/gms/wearable/internal/SendMessageResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/SendMessageResponse;

    .line 144
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/SendMessageResponse;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 146
    goto/16 :goto_0

    .line 150
    :sswitch_8
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 153
    sget-object v0, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;

    .line 158
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 160
    goto/16 :goto_0

    .line 164
    :sswitch_9
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 167
    sget-object v0, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;

    .line 172
    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 174
    goto/16 :goto_0

    .line 178
    :sswitch_a
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 181
    sget-object v0, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;

    .line 186
    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 188
    goto/16 :goto_0

    .line 192
    :sswitch_b
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 195
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/ad;

    invoke-static {p2}, Lcom/google/android/gms/common/api/ad;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 200
    :cond_a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 202
    goto/16 :goto_0

    .line 206
    :sswitch_c
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 209
    sget-object v0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    .line 214
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 216
    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
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
        0xd -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
