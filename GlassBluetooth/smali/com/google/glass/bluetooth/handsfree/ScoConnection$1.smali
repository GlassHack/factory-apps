.class Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;
.super Ljava/lang/Object;
.source "ScoConnection.java"

# interfaces
.implements Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSocketAccepted(Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 3
    .param p1, "socket"    # Lcom/google/glass/bluetooth/BluetoothSocket;

    .prologue
    .line 108
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Accepted SCO connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$100(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->shouldHandleAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$200(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v0, p1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$300(Lcom/google/glass/bluetooth/handsfree/ScoConnection;Lcom/google/glass/bluetooth/BluetoothSocket;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0
.end method
