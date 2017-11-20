.class public abstract Lcom/google/android/gms/auth/firstparty/dataservice/ap;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/ao;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/dataservice/ao;
    .locals 2

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/auth/firstparty/dataservice/ao;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/ao;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/aq;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 548
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 51
    :sswitch_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    move-result-object v0

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    :sswitch_2
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/a;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/a;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    move-result-object v0

    .line 80
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    move-result-object v0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :sswitch_3
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/at;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/at;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;

    move-result-object v0

    .line 101
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    move-result-object v0

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 114
    :sswitch_4
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/n;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/n;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;

    move-result-object v0

    .line 122
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;

    move-result-object v0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v0, :cond_6

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 129
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    :sswitch_5
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 138
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/al;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/al;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v0

    .line 143
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v0, :cond_8

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 150
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    :sswitch_6
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 159
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/am;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/am;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    move-result-object v0

    .line 164
    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    move-result-object v0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v0, :cond_a

    .line 167
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 171
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    :sswitch_7
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 180
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/al;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/al;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v0

    .line 185
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->b(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v0, :cond_c

    .line 188
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 192
    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    :sswitch_8
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 201
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ba;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ba;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    .line 206
    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v0, :cond_e

    .line 209
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 213
    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    :sswitch_9
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 222
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/m;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/m;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v0

    .line 227
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v0, :cond_10

    .line 230
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 234
    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 240
    :sswitch_a
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 243
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/r;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/r;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    move-result-object v0

    .line 248
    :cond_11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v0, :cond_12

    .line 251
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 255
    :cond_12
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 261
    :sswitch_b
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 264
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bc;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/bc;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;

    move-result-object v0

    .line 269
    :cond_13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v0, :cond_14

    .line 272
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 276
    :cond_14
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    :sswitch_c
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v0, :cond_15

    .line 286
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 290
    :cond_15
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_d
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 299
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/e;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;

    move-result-object v0

    .line 304
    :cond_16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v0, :cond_17

    .line 307
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 311
    :cond_17
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 317
    :sswitch_e
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 320
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/i;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    move-result-object v0

    .line 325
    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    move-result-object v0

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v0, :cond_19

    .line 328
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 332
    :cond_19
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    :sswitch_f
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 341
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/g;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/g;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;

    move-result-object v0

    .line 346
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    move-result-object v0

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v0, :cond_1b

    .line 349
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 353
    :cond_1b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 359
    :sswitch_10
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v0, :cond_1c

    .line 365
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 369
    :cond_1c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    :sswitch_11
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 380
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 385
    :cond_1d
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1e
    move v0, v2

    goto :goto_1

    .line 392
    :sswitch_12
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 395
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bg;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/bg;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;

    move-result-object v0

    .line 400
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;

    move-result-object v0

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v0, :cond_20

    .line 403
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 407
    :cond_20
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 413
    :sswitch_13
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    .line 416
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/p;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/p;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;

    move-result-object v0

    .line 421
    :cond_21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;

    move-result-object v0

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v0, :cond_22

    .line 424
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 428
    :cond_22
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 434
    :sswitch_14
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    .line 437
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/k;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;

    move-result-object v0

    .line 442
    :cond_23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    move-result-object v0

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v0, :cond_24

    .line 445
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 449
    :cond_24
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 455
    :sswitch_15
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 458
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ax;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ax;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;

    move-result-object v0

    .line 463
    :cond_25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    move-result-object v0

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v0, :cond_26

    .line 466
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 470
    :cond_26
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 476
    :sswitch_16
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    .line 479
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bd;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/bd;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;

    move-result-object v0

    .line 484
    :cond_27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    move-result-object v0

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v0, :cond_28

    .line 487
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 491
    :cond_28
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    :sswitch_17
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    .line 500
    sget-object v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->CREATOR:Lcom/google/android/gms/auth/c;

    invoke-static {p2}, Lcom/google/android/gms/auth/c;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v0

    .line 505
    :cond_29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object v0

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v0, :cond_2a

    .line 508
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 512
    :cond_2a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 518
    :sswitch_18
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    .line 521
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ar;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ar;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;

    move-result-object v0

    .line 526
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;

    move-result-object v0

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    if-eqz v0, :cond_2c

    .line 529
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 533
    :cond_2c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 539
    :sswitch_19
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
