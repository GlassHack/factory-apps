.class public abstract Lcom/google/android/c/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.google.android.auth.IRecoveryService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/c/e;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v0, "com.google.android.auth.IRecoveryService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "com.google.android.auth.IRecoveryService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 59
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 65
    :cond_0
    invoke-virtual {p0, v4, v5, v1, v0}, Lcom/google/android/c/e;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Lcom/google/android/gms/auth/RecoveryDecision;

    move-result-object v0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/auth/RecoveryDecision;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 57
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    :sswitch_2
    const-string v0, "com.google.android.auth.IRecoveryService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/google/android/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/RecoveryReadResponse;

    move-result-object v0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/auth/RecoveryReadResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    :sswitch_3
    const-string v1, "com.google.android.auth.IRecoveryService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    sget-object v0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->CREATOR:Lcom/google/android/gms/auth/ab;

    invoke-static {p2}, Lcom/google/android/gms/auth/ab;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/RecoveryWriteRequest;

    move-result-object v0

    .line 105
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/google/android/c/e;->a(Lcom/google/android/gms/auth/RecoveryWriteRequest;Ljava/lang/String;)Lcom/google/android/gms/auth/RecoveryWriteResponse;

    move-result-object v0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/auth/RecoveryWriteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 113
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
