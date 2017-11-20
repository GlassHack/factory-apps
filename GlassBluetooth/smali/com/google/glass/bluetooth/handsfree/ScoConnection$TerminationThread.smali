.class Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;
.super Ljava/lang/Thread;
.source "ScoConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/ScoConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TerminationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;-><init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    const-string v0, "ScoConnection.TerminationThread"

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;->setName(Ljava/lang/String;)V

    .line 252
    :try_start_0
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Waiting in termination thread..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$700(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Lcom/google/glass/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Termination thread completed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$900(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread$1;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread$1;-><init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method
