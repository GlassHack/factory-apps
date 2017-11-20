.class public abstract Landroid/media/IRemoteControlDisplay$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/media/IRemoteControlDisplay;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteControlDisplay"

.field static final TRANSACTION_setAllMetadata:I = 0x6

.field static final TRANSACTION_setArtwork:I = 0x5

.field static final TRANSACTION_setCurrentClientId:I = 0x1

.field static final TRANSACTION_setMetadata:I = 0x4

.field static final TRANSACTION_setPlaybackState:I = 0x2

.field static final TRANSACTION_setTransportControlFlags:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteControlDisplay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;
    .locals 2

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/media/IRemoteControlDisplay;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IRemoteControlDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 48
    :sswitch_0
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 64
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 65
    :goto_2
    invoke-virtual {p0, v3, v0, v1}, Landroid/media/IRemoteControlDisplay$Stub;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 61
    goto :goto_1

    .line 64
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 70
    :sswitch_2
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 77
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/media/IRemoteControlDisplay$Stub;->setPlaybackState(IIJ)V

    goto :goto_0

    .line 82
    :sswitch_3
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/media/IRemoteControlDisplay$Stub;->setTransportControlFlags(II)V

    goto :goto_0

    .line 92
    :sswitch_4
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 102
    :goto_3
    invoke-virtual {p0, v3, v0}, Landroid/media/IRemoteControlDisplay$Stub;->setMetadata(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 100
    goto :goto_3

    .line 107
    :sswitch_5
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 117
    :goto_4
    invoke-virtual {p0, v3, v0}, Landroid/media/IRemoteControlDisplay$Stub;->setArtwork(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 115
    goto :goto_4

    .line 122
    :sswitch_6
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0

    .line 133
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 139
    :goto_6
    invoke-virtual {p0, v4, v3, v0}, Landroid/media/IRemoteControlDisplay$Stub;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_4
    move-object v3, v1

    .line 130
    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 137
    goto :goto_6

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
