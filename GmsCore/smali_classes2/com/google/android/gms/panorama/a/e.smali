.class public abstract Lcom/google/android/gms/panorama/a/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/panorama/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/panorama/a/e;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 56
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v3, v0

    .line 63
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 70
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    .line 71
    :goto_4
    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/google/android/gms/panorama/a/e;->a(Lcom/google/android/gms/panorama/a/a;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaCallbacks"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/panorama/a/a;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/gms/panorama/a/a;

    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/panorama/a/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/panorama/a/c;-><init>(Landroid/os/IBinder;)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 60
    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 67
    goto :goto_3

    .line 70
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
