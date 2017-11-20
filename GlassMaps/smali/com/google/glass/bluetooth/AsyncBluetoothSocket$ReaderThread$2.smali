.class Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

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

    .line 124
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iget-object v2, v2, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-interface {v0, v2}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;->onDisconnect(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method
