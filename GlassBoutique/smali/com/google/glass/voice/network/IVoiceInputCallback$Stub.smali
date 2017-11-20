.class public abstract Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/network/IVoiceInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/IVoiceInputCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/IVoiceInputCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.voice.network.IVoiceInputCallback"

.field static final TRANSACTION_getTag:I = 0x2

.field static final TRANSACTION_receiveEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/network/IVoiceInputCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

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
    const-string v1, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/glass/voice/network/IVoiceInputCallback;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 48
    :sswitch_0
    const-string v3, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v3, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    sget-object v3, Lcom/google/glass/voice/network/OpenEndedInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .line 61
    .local v0, "_arg0":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->receiveEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    goto :goto_1

    .line 66
    .end local v0    # "_arg0":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    :sswitch_2
    const-string v3, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
