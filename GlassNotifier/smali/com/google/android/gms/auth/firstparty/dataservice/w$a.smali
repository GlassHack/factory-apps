.class public abstract Lcom/google/android/gms/auth/firstparty/dataservice/w$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/dataservice/w$a$a;
    }
.end annotation


# direct methods
.method public static X(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/dataservice/w;
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

    instance-of v1, v0, Lcom/google/android/gms/auth/firstparty/dataservice/w;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/w;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/w$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getAccountData(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/a;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/a;->ag(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->checkAccountName(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/z;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/z;->aE(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->checkPassword(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/n;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/n;->at(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->checkRealName(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/t;->az(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->createAccount(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->aA(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    move-result-object v0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getGplusInfo(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/t;->az(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->createPlusProfile(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/af;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/af;->aK(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v0

    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getToken(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/k;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/k;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v0

    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->signIn(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/r;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/r;->ax(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    move-result-object v0

    :cond_11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->confirmCredentials(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ah;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ah;->aM(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;

    move-result-object v0

    :cond_13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->updateCredentials(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getAccountRecoveryCountryInfo()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/d;->aj(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;

    move-result-object v0

    :cond_16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getAccountRecoveryData(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/g;->am(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    move-result-object v0

    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->updateAccountRecoveryData(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/f;->al(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;

    move-result-object v0

    :cond_1a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getAccountRecoveryGuidance(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getAccountExportData(Ljava/lang/String;)Landroid/os/Bundle;

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
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->installAccountFromExportData(Ljava/lang/String;Landroid/os/Bundle;)Z

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/am;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/am;->aR(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;

    move-result-object v0

    :cond_1f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getWebSetupConfig(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/p;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/p;->av(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;

    move-result-object v0

    :cond_21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->clearToken(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/i;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/i;->ao(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;

    move-result-object v0

    :cond_23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->removeAccount(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ad;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ad;->aI(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;

    move-result-object v0

    :cond_25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getReauthSettings(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/aj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/aj;->aO(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;

    move-result-object v0

    :cond_27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->verifyPin(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->CREATOR:Lcom/google/android/gms/auth/AccountChangeEventsRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/AccountChangeEventsRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v0

    :cond_29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getAccountChangeEvents(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

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

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/x;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/x;->aC(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;

    move-result-object v0

    :cond_2b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getOtp(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->getAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->fR()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2d

    move v2, v1

    :cond_2d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/l;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/l;->ar(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;

    move-result-object v0

    :cond_2e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2f

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->isFactoryResetChallengeRequired()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_30

    move v2, v1

    :cond_30
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->clearFactoryResetChallenges()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v3, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/a;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/shared/a;->ba(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    :cond_31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w$a;->validateAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_32

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_32
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x24 -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
