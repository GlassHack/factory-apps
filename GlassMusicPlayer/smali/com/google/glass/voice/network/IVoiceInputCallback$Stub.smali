.class public abstract Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/network/IVoiceInputCallback;


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
    const-string v0, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/glass/voice/network/IVoiceInputCallback;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub$Proxy;

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
    const-string v0, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .line 61
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->receiveEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    move v0, v1

    .line 62
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 66
    :sswitch_2
    const-string v0, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 70
    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
