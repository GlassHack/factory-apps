.class public interface abstract Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
.super Ljava/lang/Object;
.source "GlassBluetoothService.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/GlassBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PeriodicTask"
.end annotation


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract execute()V
.end method

.method public abstract onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
.end method

.method public abstract onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
.end method
