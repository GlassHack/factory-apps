.class Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;
.super Lcom/google/glass/bluetooth/BluetoothSocket;
.source "NetworkSocketThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->runServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final secureStream:Lcom/google/glass/bluetooth/companion/SecureStream;

.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;Landroid/bluetooth/BluetoothSocket;Landroid/content/Context;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 4
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/NetworkSocketThread;
    .param p2, "x0"    # Landroid/bluetooth/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    iput-object p3, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->val$deviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {p0, p2}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 218
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/util/SetupHelper;->isDeviceSetup(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$100(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Lcom/google/glass/bluetooth/companion/PresharedKey;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    .line 219
    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$100(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Lcom/google/glass/bluetooth/companion/PresharedKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/PresharedKey;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$100(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Lcom/google/glass/bluetooth/companion/PresharedKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/PresharedKey;->getBytes()[B

    move-result-object v0

    .line 224
    .local v0, "key":[B
    :goto_0
    new-instance v1, Lcom/google/glass/bluetooth/companion/SecureStream;

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-static {v2}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$200(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    .line 225
    invoke-static {v3}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$200(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/bluetooth/companion/SecureStream;-><init>([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->secureStream:Lcom/google/glass/bluetooth/companion/SecureStream;

    .line 226
    return-void

    .line 222
    .end local v0    # "key":[B
    :cond_0
    const-string v1, "bbcd"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$200(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 231
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->secureStream:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->secureStream:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;->val$deviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method
