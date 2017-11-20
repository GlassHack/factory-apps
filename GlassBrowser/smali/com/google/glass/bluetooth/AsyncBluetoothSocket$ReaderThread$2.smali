.class Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;
.super Ljava/lang/Object;
.source "AsyncBluetoothSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

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
    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iget-object v1, v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-static {v1}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$200(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;

    .line 124
    .local v0, "l":Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread$2;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    iget-object v2, v2, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-interface {v0, v2}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;->onDisconnect(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V

    goto :goto_0

    .line 126
    .end local v0    # "l":Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;
    :cond_0
    return-void
.end method
