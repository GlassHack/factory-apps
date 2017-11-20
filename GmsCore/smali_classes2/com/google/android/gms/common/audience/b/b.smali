.class public abstract Lcom/google/android/gms/common/audience/b/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/audience/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/common/audience/b/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/common/audience/b/a;
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/common/audience/b/a;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/gms/common/audience/b/a;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/audience/b/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/audience/b/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v2

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/e/j;->a(Landroid/os/IBinder;)Lcom/google/android/gms/e/i;

    move-result-object v3

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 59
    :goto_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/gms/common/audience/b/b;->a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/e/i;Lcom/google/android/gms/common/audience/b/d;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceViewCallbacks"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v5, v0, Lcom/google/android/gms/common/audience/b/d;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/google/android/gms/common/audience/b/d;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/audience/b/f;

    invoke-direct {v0, v4}, Lcom/google/android/gms/common/audience/b/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 65
    :sswitch_2
    const-string v2, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/b/b;->a()Lcom/google/android/gms/e/i;

    move-result-object v2

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/e/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 73
    :sswitch_3
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/b/b;->a(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_4
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 85
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/b/b;->a(Z)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 84
    goto :goto_2

    .line 91
    :sswitch_5
    const-string v2, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    sget-object v0, Lcom/google/android/gms/common/people/data/Audience;->CREATOR:Lcom/google/android/gms/common/people/data/b;

    invoke-static {p2}, Lcom/google/android/gms/common/people/data/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    .line 99
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/b/b;->a(Lcom/google/android/gms/common/people/data/Audience;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 105
    :sswitch_6
    const-string v0, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/b/b;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 113
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    :sswitch_7
    const-string v2, "com.google.android.gms.common.audience.dynamite.IAudienceView"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 127
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/b/b;->a(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
