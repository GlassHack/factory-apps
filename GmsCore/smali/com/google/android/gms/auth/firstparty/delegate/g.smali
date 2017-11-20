.class public abstract Lcom/google/android/gms/auth/firstparty/delegate/g;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/delegate/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/g;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/delegate/f;
    .locals 2

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/auth/firstparty/delegate/f;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/google/android/gms/auth/firstparty/delegate/f;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/firstparty/delegate/h;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 57
    :sswitch_0
    const-string v0, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 58
    goto :goto_0

    .line 62
    :sswitch_1
    const-string v2, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget-object v0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/i;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/delegate/i;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v0

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/g;->a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v0, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v1

    .line 79
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 83
    :sswitch_2
    const-string v2, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    sget-object v0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/j;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/delegate/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;

    move-result-object v0

    .line 91
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/g;->a(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v0, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v1

    .line 100
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 104
    :sswitch_3
    const-string v2, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    sget-object v0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/k;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/delegate/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;

    move-result-object v0

    .line 112
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/g;->a(Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v0, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v0, v1

    .line 121
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 125
    :sswitch_4
    const-string v2, "com.google.android.gms.auth.firstparty.delegate.IAuthDelegateService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    sget-object v0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/a;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/delegate/a;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;

    move-result-object v0

    .line 133
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/g;->a(Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {v0, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v1

    .line 142
    goto/16 :goto_0

    .line 140
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 53
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
