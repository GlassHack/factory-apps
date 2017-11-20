.class public abstract Lcom/google/android/gms/common/audience/b/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/audience/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceViewCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/common/audience/b/e;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceViewCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceViewCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/google/android/gms/common/people/data/AudienceMember;->CREATOR:Lcom/google/android/gms/common/people/data/d;

    invoke-static {p2}, Lcom/google/android/gms/common/people/data/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    .line 61
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/b/e;->a(Lcom/google/android/gms/common/people/data/AudienceMember;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 63
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :sswitch_2
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceViewCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/b/e;->a()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 70
    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
