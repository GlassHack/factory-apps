.class public abstract Lcom/google/android/gms/auth/firstparty/proximity/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/proximity/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.gms.auth.firstparty.proximity.IAuthorizationService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/auth/firstparty/proximity/e;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/proximity/d;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.google.android.gms.auth.firstparty.proximity.IAuthorizationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/auth/firstparty/proximity/d;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/d;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/firstparty/proximity/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.google.android.gms.auth.firstparty.proximity.IAuthorizationService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.google.android.gms.auth.firstparty.proximity.IAuthorizationService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/b;

    invoke-static {p2}, Lcom/google/android/gms/auth/firstparty/proximity/data/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    move-result-object v0

    .line 58
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/proximity/e;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Landroid/os/Bundle;

    move-result-object v0

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v1

    .line 67
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
