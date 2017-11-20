.class Lcom/google/glass/bluetooth/handsfree/HandsFree$4;
.super Ljava/lang/Object;
.source "HandsFree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/HandsFree;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 235
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "connect() device = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v6}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$200(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$200(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_HANDSFREE_AUDIO_GATEWAY_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->createRfcommSocketToServiceRecord(Landroid/os/ParcelUuid;)Lcom/google/glass/bluetooth/BluetoothSocket;

    move-result-object v1

    .line 240
    .local v1, "socket":Lcom/google/glass/bluetooth/BluetoothSocket;
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1100(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/glass/bluetooth/handsfree/HandsFree$4$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree$4$1;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree$4;Lcom/google/glass/bluetooth/BluetoothSocket;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    .end local v1    # "socket":Lcom/google/glass/bluetooth/BluetoothSocket;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2, v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1000(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/Exception;)V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2, v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1000(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/Exception;)V

    goto :goto_0
.end method
