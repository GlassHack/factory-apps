.class public interface abstract Lcom/google/glass/bluetooth/GlassBluetoothInterface;
.super Ljava/lang/Object;
.source "GlassBluetoothInterface.java"


# virtual methods
.method public abstract addMyGlassConnectionType(I)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
.end method

.method public abstract registerTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V
.end method

.method public abstract setPairedDevice(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
.end method

.method public abstract unregisterTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V
.end method
