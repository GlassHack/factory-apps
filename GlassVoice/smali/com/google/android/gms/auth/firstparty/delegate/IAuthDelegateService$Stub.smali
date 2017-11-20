.class public abstract Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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

    const/4 v3, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/c;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/delegate/c;->Q(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub;->getSetupAccountWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_2
    const-string v2, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/d;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/delegate/d;->R(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub;->getTokenRetrievalWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_3
    const-string v2, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/e;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/delegate/e;->S(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub;->getUpdateCredentialsWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_4
    const-string v2, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/a;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/firstparty/delegate/a;->P(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;

    move-result-object v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/IAuthDelegateService$Stub;->getConfirmCredentialsWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
