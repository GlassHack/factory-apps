.class Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

.field final synthetic val$bufferCopy:[B

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;[BI)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iput-object p2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->val$bufferCopy:[B

    iput p3, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iget-object v0, v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v0}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$200(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;

    .line 113
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iget-object v2, v2, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    iget-object v3, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->val$bufferCopy:[B

    iget v4, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$1;->val$length:I

    invoke-interface {v0, v2, v3, v4}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;->onData(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;[BI)V

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
