.class public abstract Lcom/google/android/gms/pseudonymous/a/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/pseudonymous/a/a;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/pseudonymous/a/a;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/pseudonymous/a/a;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/google/android/gms/pseudonymous/a/a;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/google/android/gms/pseudonymous/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/pseudonymous/a/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/ad;

    invoke-static {p2}, Lcom/google/android/gms/common/api/ad;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    move-object v1, v0

    .line 56
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    .line 62
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/pseudonymous/a/b;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    move v0, v3

    .line 63
    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 53
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 60
    goto :goto_2

    .line 67
    :sswitch_2
    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/ad;

    invoke-static {p2}, Lcom/google/android/gms/common/api/ad;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 75
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/pseudonymous/a/b;->a(Lcom/google/android/gms/common/api/Status;)V

    move v0, v3

    .line 76
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
