.class final Lcom/google/android/gms/auth/firstparty/proximity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/proximity/d;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/f;->a:Landroid/os/IBinder;

    .line 78
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 96
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.proximity.IAuthorizationService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/f;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 105
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-object v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/f;->a:Landroid/os/IBinder;

    return-object v0
.end method
