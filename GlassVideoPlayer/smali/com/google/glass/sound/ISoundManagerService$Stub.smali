.class public abstract Lcom/google/glass/sound/ISoundManagerService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/sound/ISoundManagerService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.sound.ISoundManagerService"

.field static final TRANSACTION_isMuted:I = 0x5

.field static final TRANSACTION_playSound:I = 0x2

.field static final TRANSACTION_playSoundAsync:I = 0x1

.field static final TRANSACTION_setMuted:I = 0x4

.field static final TRANSACTION_stopSound:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.google.glass.sound.ISoundManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/sound/ISoundManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/sound/ISoundManagerService;
    .locals 2

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.google.glass.sound.ISoundManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/sound/ISoundManagerService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/google/glass/sound/ISoundManagerService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/glass/sound/ISoundManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/glass/sound/ISoundManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v0, "com.google.glass.sound.ISoundManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.google.glass.sound.ISoundManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/glass/sound/ISoundManagerService$Stub;->playSoundAsync(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v0, "com.google.glass.sound.ISoundManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/glass/sound/ISoundManagerService$Stub;->playSound(Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    :sswitch_3
    const-string v0, "com.google.glass.sound.ISoundManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/glass/sound/ISoundManagerService$Stub;->stopSound(I)V

    goto :goto_0

    .line 74
    :sswitch_4
    const-string v2, "com.google.glass.sound.ISoundManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 77
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/sound/ISoundManagerService$Stub;->setMuted(Z)V

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v2, "com.google.glass.sound.ISoundManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/sound/ISoundManagerService$Stub;->isMuted()Z

    move-result v2

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 39
    nop

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
