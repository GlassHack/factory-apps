.class public abstract Lcom/google/android/gms/pseudonymous/a/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/pseudonymous/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/pseudonymous/a/e;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/pseudonymous/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/pseudonymous/a/a;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/pseudonymous/a/e;->a(Lcom/google/android/gms/pseudonymous/a/a;)V

    move v0, v1

    .line 51
    goto :goto_0

    .line 55
    :sswitch_2
    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/pseudonymous/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/pseudonymous/a/a;

    move-result-object v2

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    .line 65
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/pseudonymous/a/e;->a(Lcom/google/android/gms/pseudonymous/a/a;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    move v0, v1

    .line 66
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
