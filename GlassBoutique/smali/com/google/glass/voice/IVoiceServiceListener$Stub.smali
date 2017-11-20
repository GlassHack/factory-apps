.class public abstract Lcom/google/glass/voice/IVoiceServiceListener$Stub;
.super Landroid/os/Binder;
.source "IVoiceServiceListener.java"

# interfaces
.implements Lcom/google/glass/voice/IVoiceServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/IVoiceServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/IVoiceServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.voice.IVoiceServiceListener"

.field static final TRANSACTION_getTag:I = 0x5

.field static final TRANSACTION_onReadyToListen:I = 0x4

.field static final TRANSACTION_onResampledAudioData:I = 0x2

.field static final TRANSACTION_onVoiceCommand:I = 0x1

.field static final TRANSACTION_onVoiceConfigChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceServiceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const-string v1, "com.google.glass.voice.IVoiceServiceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/voice/IVoiceServiceListener;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcom/google/glass/voice/IVoiceServiceListener;

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Lcom/google/glass/voice/IVoiceServiceListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x1

    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 53
    :sswitch_0
    const-string v5, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :sswitch_1
    const-string v5, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 66
    .local v0, "_arg0":Lcom/google/glass/voice/VoiceCommand;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    .line 67
    .local v3, "_result":Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v3, p3, v4}, Lcom/google/glass/voice/VoiceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Lcom/google/glass/voice/VoiceCommand;
    .end local v3    # "_result":Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/glass/voice/VoiceCommand;
    goto :goto_1

    .line 73
    .restart local v3    # "_result":Lcom/google/glass/voice/VoiceConfig;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Lcom/google/glass/voice/VoiceCommand;
    .end local v3    # "_result":Lcom/google/glass/voice/VoiceConfig;
    :sswitch_2
    const-string v5, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 83
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onResampledAudioData([BII)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_3
    const-string v5, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    sget-object v5, Lcom/google/glass/voice/VoiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 100
    .local v0, "_arg0":Lcom/google/glass/voice/VoiceConfig;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Lcom/google/glass/voice/VoiceConfig;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/glass/voice/VoiceConfig;
    goto :goto_2

    .line 106
    .end local v0    # "_arg0":Lcom/google/glass/voice/VoiceConfig;
    :sswitch_4
    const-string v5, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    sget-object v5, Lcom/google/glass/voice/VoiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 114
    .restart local v0    # "_arg0":Lcom/google/glass/voice/VoiceConfig;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onReadyToListen(Lcom/google/glass/voice/VoiceConfig;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 112
    .end local v0    # "_arg0":Lcom/google/glass/voice/VoiceConfig;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/google/glass/voice/VoiceConfig;
    goto :goto_3

    .line 120
    .end local v0    # "_arg0":Lcom/google/glass/voice/VoiceConfig;
    :sswitch_5
    const-string v5, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
