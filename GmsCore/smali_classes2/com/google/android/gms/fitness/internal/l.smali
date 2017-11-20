.class public abstract Lcom/google/android/gms/fitness/internal/l;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/internal/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/fitness/internal/l;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 440
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    .line 62
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/f;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/e;

    move-result-object v1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/fitness/internal/e;Ljava/lang/String;)V

    move v0, v3

    .line 66
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 59
    goto :goto_1

    .line 70
    :sswitch_2
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    .line 79
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 83
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 76
    goto :goto_2

    .line 87
    :sswitch_3
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    sget-object v0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

    .line 96
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 100
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 93
    goto :goto_3

    .line 104
    :sswitch_4
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SubscribeRequest;

    .line 113
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SubscribeRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 117
    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 110
    goto :goto_4

    .line 121
    :sswitch_5
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    sget-object v0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    .line 130
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 134
    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 127
    goto :goto_5

    .line 138
    :sswitch_6
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    sget-object v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;

    move-object v2, v0

    .line 147
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_6

    .line 149
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Lcom/google/android/gms/fitness/internal/m;Ljava/lang/String;)V

    move v0, v3

    .line 151
    goto/16 :goto_0

    :cond_5
    move-object v2, v1

    .line 144
    goto :goto_6

    .line 147
    :cond_6
    const-string v0, "com.google.android.gms.fitness.internal.IListSubscriptionsCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/google/android/gms/fitness/internal/m;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/google/android/gms/fitness/internal/m;

    move-object v1, v0

    goto :goto_7

    :cond_7
    new-instance v1, Lcom/google/android/gms/fitness/internal/o;

    invoke-direct {v1, v4}, Lcom/google/android/gms/fitness/internal/o;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    .line 155
    :sswitch_7
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    sget-object v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    .line 164
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/DataInsertRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 168
    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 161
    goto :goto_8

    .line 172
    :sswitch_8
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 175
    sget-object v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    .line 181
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 186
    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    .line 178
    goto :goto_9

    .line 190
    :sswitch_9
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    sget-object v0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    .line 199
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/h;

    move-result-object v1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;Lcom/google/android/gms/fitness/internal/h;Ljava/lang/String;)V

    move v0, v3

    .line 203
    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    .line 196
    goto :goto_a

    .line 207
    :sswitch_a
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 210
    sget-object v0, Lcom/google/android/gms/fitness/request/DataTypeReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataTypeReadRequest;

    .line 216
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/h;

    move-result-object v1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/DataTypeReadRequest;Lcom/google/android/gms/fitness/internal/h;Ljava/lang/String;)V

    move v0, v3

    .line 220
    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    .line 213
    goto :goto_b

    .line 224
    :sswitch_b
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 227
    sget-object v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataReadRequest;

    move-object v2, v0

    .line 233
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_d

    .line 235
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/fitness/internal/b;Ljava/lang/String;)V

    move v0, v3

    .line 237
    goto/16 :goto_0

    :cond_c
    move-object v2, v1

    .line 230
    goto :goto_c

    .line 233
    :cond_d
    const-string v0, "com.google.android.gms.fitness.internal.IDataReadCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/google/android/gms/fitness/internal/b;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/android/gms/fitness/internal/b;

    move-object v1, v0

    goto :goto_d

    :cond_e
    new-instance v1, Lcom/google/android/gms/fitness/internal/d;

    invoke-direct {v1, v4}, Lcom/google/android/gms/fitness/internal/d;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    .line 241
    :sswitch_c
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 244
    sget-object v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    .line 250
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SessionInsertRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 254
    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    .line 247
    goto :goto_e

    .line 258
    :sswitch_d
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 261
    sget-object v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    move-object v2, v0

    .line 267
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_11

    .line 269
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SessionReadRequest;Lcom/google/android/gms/fitness/internal/p;Ljava/lang/String;)V

    move v0, v3

    .line 271
    goto/16 :goto_0

    :cond_10
    move-object v2, v1

    .line 264
    goto :goto_f

    .line 267
    :cond_11
    const-string v0, "com.google.android.gms.fitness.internal.ISessionReadCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_12

    instance-of v1, v0, Lcom/google/android/gms/fitness/internal/p;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/google/android/gms/fitness/internal/p;

    move-object v1, v0

    goto :goto_10

    :cond_12
    new-instance v1, Lcom/google/android/gms/fitness/internal/r;

    invoke-direct {v1, v4}, Lcom/google/android/gms/fitness/internal/r;-><init>(Landroid/os/IBinder;)V

    goto :goto_10

    .line 275
    :sswitch_e
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 278
    sget-object v0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SessionStartRequest;

    .line 284
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SessionStartRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 288
    goto/16 :goto_0

    :cond_13
    move-object v0, v1

    .line 281
    goto :goto_11

    .line 292
    :sswitch_f
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 295
    sget-object v0, Lcom/google/android/gms/fitness/request/SessionStopRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SessionStopRequest;

    move-object v2, v0

    .line 301
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_15

    .line 303
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SessionStopRequest;Lcom/google/android/gms/fitness/internal/s;Ljava/lang/String;)V

    move v0, v3

    .line 305
    goto/16 :goto_0

    :cond_14
    move-object v2, v1

    .line 298
    goto :goto_12

    .line 301
    :cond_15
    const-string v0, "com.google.android.gms.fitness.internal.ISessionStopCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_16

    instance-of v1, v0, Lcom/google/android/gms/fitness/internal/s;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/google/android/gms/fitness/internal/s;

    move-object v1, v0

    goto :goto_13

    :cond_16
    new-instance v1, Lcom/google/android/gms/fitness/internal/u;

    invoke-direct {v1, v4}, Lcom/google/android/gms/fitness/internal/u;-><init>(Landroid/os/IBinder;)V

    goto :goto_13

    .line 309
    :sswitch_10
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 312
    sget-object v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    .line 318
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 322
    goto/16 :goto_0

    :cond_17
    move-object v0, v1

    .line 315
    goto :goto_14

    .line 326
    :sswitch_11
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 329
    sget-object v0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;

    .line 335
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/StopBleScanRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 339
    goto/16 :goto_0

    :cond_18
    move-object v0, v1

    .line 332
    goto :goto_15

    .line 343
    :sswitch_12
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 346
    sget-object v0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;

    .line 352
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 356
    goto/16 :goto_0

    :cond_19
    move-object v0, v1

    .line 349
    goto :goto_16

    .line 360
    :sswitch_13
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 363
    sget-object v0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    .line 369
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 373
    goto/16 :goto_0

    :cond_1a
    move-object v0, v1

    .line 366
    goto :goto_17

    .line 377
    :sswitch_14
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 380
    sget-object v0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    .line 386
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 390
    goto/16 :goto_0

    :cond_1b
    move-object v0, v1

    .line 383
    goto :goto_18

    .line 394
    :sswitch_15
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 397
    sget-object v0, Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;

    .line 403
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 407
    goto/16 :goto_0

    :cond_1c
    move-object v0, v1

    .line 400
    goto :goto_19

    .line 411
    :sswitch_16
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v0

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 417
    goto/16 :goto_0

    .line 421
    :sswitch_17
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/internal/w;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/v;

    move-result-object v0

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/internal/l;->b(Lcom/google/android/gms/fitness/internal/v;Ljava/lang/String;)V

    move v0, v3

    .line 427
    goto/16 :goto_0

    .line 431
    :sswitch_18
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 435
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/fitness/internal/l;->a(Lcom/google/android/gms/fitness/internal/ble/c;Ljava/lang/String;)V

    move v0, v3

    .line 437
    goto/16 :goto_0

    .line 433
    :cond_1d
    const-string v0, "com.google.android.gms.fitness.internal.ble.IBleDevicesCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1e

    instance-of v1, v0, Lcom/google/android/gms/fitness/internal/ble/c;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/google/android/gms/fitness/internal/ble/c;

    move-object v1, v0

    goto :goto_1a

    :cond_1e
    new-instance v1, Lcom/google/android/gms/fitness/internal/ble/e;

    invoke-direct {v1, v2}, Lcom/google/android/gms/fitness/internal/ble/e;-><init>(Landroid/os/IBinder;)V

    goto :goto_1a

    .line 44
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
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_d
        0xb -> :sswitch_e
        0xc -> :sswitch_f
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_8
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
