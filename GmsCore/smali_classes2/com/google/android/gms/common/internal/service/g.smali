.class public abstract Lcom/google/android/gms/common/internal/service/g;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/service/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/common/internal/service/g;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/service/g;->a(Lcom/google/android/gms/common/internal/service/c;)V

    move v0, v1

    .line 54
    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.ICommonCallbacks"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/common/internal/service/c;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/service/c;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/service/e;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/service/e;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
