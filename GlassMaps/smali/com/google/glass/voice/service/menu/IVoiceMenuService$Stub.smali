.class public abstract Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/service/menu/IVoiceMenuService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.voice.service.menu.IVoiceMenuService"

.field static final TRANSACTION_closeVoiceMenu:I = 0x1

.field static final TRANSACTION_isVoiceMenuOpen:I = 0x3

.field static final TRANSACTION_openVoiceMenu:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.glass.voice.service.menu.IVoiceMenuService"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/service/menu/IVoiceMenuService;
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
    const-string v0, "com.google.glass.voice.service.menu.IVoiceMenuService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v0, "com.google.glass.voice.service.menu.IVoiceMenuService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.google.glass.voice.service.menu.IVoiceMenuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;->closeVoiceMenu()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v0, "com.google.glass.voice.service.menu.IVoiceMenuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 67
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    move-result-object v3

    .line 68
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;->openVoiceMenu([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)V

    goto :goto_0

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 73
    :sswitch_3
    const-string v0, "com.google.glass.voice.service.menu.IVoiceMenuService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;->isVoiceMenuOpen()Z

    move-result v0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
