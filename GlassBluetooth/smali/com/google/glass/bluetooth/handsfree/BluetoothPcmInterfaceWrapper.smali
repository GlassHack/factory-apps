.class public Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;
.super Ljava/lang/Object;
.source "BluetoothPcmInterfaceWrapper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "btscopcm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native nativePhoneCallAllStop()I
.end method

.method public native nativePhoneCallInStart()I
.end method

.method public native nativePhoneCallOutStart()I
.end method
