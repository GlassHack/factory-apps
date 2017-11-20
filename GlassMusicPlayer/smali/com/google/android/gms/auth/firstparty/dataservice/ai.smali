.class public abstract Lcom/google/android/gms/auth/firstparty/dataservice/ai;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/ah;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/dataservice/ah;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/auth/firstparty/dataservice/ah;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/ah;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/aj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/aj;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/d;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/am;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/am;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/y;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/y;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/ae;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/af;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/af;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    move-result-object v0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/ae;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->b(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/h;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/x;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/x;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v0

    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_10

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/ac;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ac;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    move-result-object v0

    :cond_11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/j;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;

    move-result-object v0

    :cond_13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_14

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/q;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/q;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;

    move-result-object v0

    :cond_16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_17

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/t;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/t;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    move-result-object v0

    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_19

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/s;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/s;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;

    move-result-object v0

    :cond_1a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1b

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1c

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_1d
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1e
    move v0, v2

    goto :goto_1

    :sswitch_12
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/n;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/n;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;

    move-result-object v0

    :cond_1f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_20

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_20
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/aa;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/aa;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;

    move-result-object v0

    :cond_21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_22

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_22
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/v;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/v;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;

    move-result-object v0

    :cond_23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_24

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_24
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/f;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/f;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;

    move-result-object v0

    :cond_25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_26

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_26
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/k;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;

    move-result-object v0

    :cond_27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_28

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_28
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    sget-object v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->a:Lcom/google/android/gms/auth/b;

    invoke-static {p2}, Lcom/google/android/gms/auth/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v0

    :cond_29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2a

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/ak;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ak;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;

    move-result-object v0

    :cond_2b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2c

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

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
