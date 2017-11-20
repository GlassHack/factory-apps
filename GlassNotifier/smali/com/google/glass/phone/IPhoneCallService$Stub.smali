.class public abstract Lcom/google/glass/phone/IPhoneCallService$Stub;
.super Landroid/os/Binder;
.source "IPhoneCallService.java"

# interfaces
.implements Lcom/google/glass/phone/IPhoneCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/IPhoneCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/IPhoneCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.phone.IPhoneCallService"

.field static final TRANSACTION_addListener:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.glass.phone.IPhoneCallService"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/phone/IPhoneCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/phone/IPhoneCallService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

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
    const-string v1, "com.google.glass.phone.IPhoneCallService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/phone/IPhoneCallService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/glass/phone/IPhoneCallService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/glass/phone/IPhoneCallService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/phone/IPhoneCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v2, "com.google.glass.phone.IPhoneCallService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.google.glass.phone.IPhoneCallService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/phone/IPhoneCallListener;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Lcom/google/glass/phone/IPhoneCallListener;
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallService$Stub;->addListener(Lcom/google/glass/phone/IPhoneCallListener;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Lcom/google/glass/phone/IPhoneCallListener;
    :sswitch_2
    const-string v2, "com.google.glass.phone.IPhoneCallService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/phone/IPhoneCallListener;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Lcom/google/glass/phone/IPhoneCallListener;
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IPhoneCallService$Stub;->removeListener(Lcom/google/glass/phone/IPhoneCallListener;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
