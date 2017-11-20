.class public abstract Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.voice.service.menu.IRemoteVoiceMenuListener"

.field static final TRANSACTION_onVoiceMenuItemSelected:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.google.glass.voice.service.menu.IRemoteVoiceMenuListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;
    .locals 2

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v0, "com.google.glass.voice.service.menu.IRemoteVoiceMenuListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.google.glass.voice.service.menu.IRemoteVoiceMenuListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.google.glass.voice.service.menu.IRemoteVoiceMenuListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .line 59
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;->onVoiceMenuItemSelected(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V

    move v0, v1

    .line 60
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
