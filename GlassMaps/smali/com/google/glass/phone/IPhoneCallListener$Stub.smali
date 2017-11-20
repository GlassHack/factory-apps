.class public abstract Lcom/google/glass/phone/IPhoneCallListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/phone/IPhoneCallListener;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.phone.IPhoneCallListener"

.field static final TRANSACTION_onCallConnected:I = 0x4

.field static final TRANSACTION_onCallConnecting:I = 0x3

.field static final TRANSACTION_onCallDisconnected:I = 0x6

.field static final TRANSACTION_onCallDisconnecting:I = 0x5

.field static final TRANSACTION_onCallError:I = 0x7

.field static final TRANSACTION_onCallerIdentified:I = 0x9

.field static final TRANSACTION_onIncomingCallInitiated:I = 0x1

.field static final TRANSACTION_onOutgoingCallInitiated:I = 0x2

.field static final TRANSACTION_onPhoneNumberSet:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/phone/IPhoneCallListener;
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
    const-string v0, "com.google.glass.phone.IPhoneCallListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/google/glass/phone/IPhoneCallListener;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/google/glass/phone/IPhoneCallListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/IPhoneCallListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 59
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 61
    goto :goto_0

    .line 65
    :sswitch_2
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 73
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 75
    goto :goto_0

    .line 79
    :sswitch_3
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 87
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 89
    goto :goto_0

    .line 93
    :sswitch_4
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 101
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onCallConnected(Lcom/google/glass/phone/PhoneCall;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 103
    goto :goto_0

    .line 107
    :sswitch_5
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 115
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 117
    goto/16 :goto_0

    .line 121
    :sswitch_6
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 129
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 131
    goto/16 :goto_0

    .line 135
    :sswitch_7
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 138
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 143
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onCallError(Lcom/google/glass/phone/PhoneCall;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 145
    goto/16 :goto_0

    .line 149
    :sswitch_8
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 152
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 158
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {p0, v0, v2}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onPhoneNumberSet(Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 161
    goto/16 :goto_0

    .line 165
    :sswitch_9
    const-string v2, "com.google.glass.phone.IPhoneCallListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 168
    sget-object v0, Lcom/google/glass/phone/PhoneCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 174
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 175
    invoke-virtual {p0, v0, v2}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->onCallerIdentified(Lcom/google/glass/phone/PhoneCall;[B)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 177
    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
