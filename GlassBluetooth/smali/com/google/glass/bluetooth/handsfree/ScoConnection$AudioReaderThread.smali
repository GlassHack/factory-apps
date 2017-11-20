.class Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;
.super Ljava/lang/Thread;
.source "ScoConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/ScoConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioReaderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;-><init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    const-string v1, "ScoConnection.AudioReaderThread"

    invoke-virtual {p0, v1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;->setName(Ljava/lang/String;)V

    .line 271
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;->setPriority(I)V

    .line 273
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$1000(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;->nativePhoneCallOutStart()I

    move-result v0

    .line 274
    .local v0, "retCode":I
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "bluetoothPcmInterfaceWrapper.nativePhoneCallOutStart() returned: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$1104(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)I

    .line 278
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Audio reader thread terminating."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;->this$0:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->access$1200(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V

    .line 280
    return-void
.end method
