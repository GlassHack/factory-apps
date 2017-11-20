.class Lcom/google/glass/bluetooth/handsfree/ScoConnection;
.super Ljava/lang/Object;
.source "ScoConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioWriterThread;,
        Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;,
        Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final audioManager:Landroid/media/AudioManager;

.field private final bluetoothPcmInterfaceWrapper:Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private listenSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

.field private final phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

.field private readerThread:Ljava/lang/Thread;

.field private readerThreadExitCount:I

.field private socket:Lcom/google/glass/bluetooth/BluetoothSocket;

.field private socketClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private terminationThread:Ljava/lang/Thread;

.field private final wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

.field private writerThread:Ljava/lang/Thread;

.field private writerThreadExitCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCallManager"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->socketClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;

    invoke-direct {v1}, Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;-><init>()V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->bluetoothPcmInterfaceWrapper:Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;

    .line 299
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection$2;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$2;-><init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 72
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .line 74
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->handler:Landroid/os/Handler;

    .line 75
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    .line 76
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    const-string v3, "hf_pump="

    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->shouldUsePump()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    const-string v2, "bt_sink_volume=1.0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    .line 80
    .local v0, "powerManager":Lcom/google/glass/android/os/PowerManager;
    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 81
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/glass/android/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 82
    return-void

    .line 76
    .end local v0    # "powerManager":Lcom/google/glass/android/os/PowerManager;
    :cond_0
    const-string v1, "off"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->bluetoothPcmInterfaceWrapper:Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;

    return-object v0
.end method

.method static synthetic access$1104(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThreadExitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThreadExitCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->closeSocket()V

    return-void
.end method

.method static synthetic access$1304(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThreadExitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThreadExitCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listenSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/handsfree/ScoConnection;Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothSocket;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->handleNewConnection(Lcom/google/glass/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Lcom/google/glass/bluetooth/BluetoothSocket;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->socket:Lcom/google/glass/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->terminate()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeSocket()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->socketClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Closing SCO socket."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->socket:Lcom/google/glass/bluetooth/BluetoothSocket;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->socket:Lcom/google/glass/bluetooth/BluetoothSocket;

    .line 217
    :cond_0
    return-void
.end method

.method private handleNewConnection(Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 7
    .param p1, "socket"    # Lcom/google/glass/bluetooth/BluetoothSocket;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 143
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "handling new SCO connection"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "New connection request after close()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 191
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->socket:Lcom/google/glass/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_1

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "socket is already assigned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 153
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "audio reader/writer threads still active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v1}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 158
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listenSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 161
    iput-object v5, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listenSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 163
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->socket:Lcom/google/glass/bluetooth/BluetoothSocket;

    .line 164
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->socketClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Updating routing..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 168
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    const-string v2, "hf_bt=on"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2, v4, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 173
    .local v0, "result":I
    if-ne v0, v6, :cond_4

    .line 174
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "We have gained audio focus."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :goto_1
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;

    invoke-direct {v1, p0, v5}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$TerminationThread;-><init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->terminationThread:Ljava/lang/Thread;

    .line 180
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->terminationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 182
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->shouldUsePump()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    const-string v2, "hf_pump=on"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 184
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;

    invoke-direct {v1, p0, v5}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioReaderThread;-><init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThread:Ljava/lang/Thread;

    .line 185
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioWriterThread;

    invoke-direct {v1, p0, v5}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$AudioWriterThread;-><init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThread:Ljava/lang/Thread;

    .line 186
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 187
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 158
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 176
    .restart local v0    # "result":I
    :cond_4
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "We did not get audio focus, oh well, still playing phone call audio."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 189
    :cond_5
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    const-string v2, "hf_pump=off"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static shouldUsePump()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->EBAP:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private terminate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 220
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 225
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->bluetoothPcmInterfaceWrapper:Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/BluetoothPcmInterfaceWrapper;->nativePhoneCallAllStop()I

    .line 227
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->closeSocket()V

    .line 229
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Waiting for reader/writer threads to join."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "readerThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/ThreadUtil;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "writerThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/ThreadUtil;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->terminationThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "terminationThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/ThreadUtil;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-object v4, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThread:Ljava/lang/Thread;

    .line 234
    iput-object v4, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThread:Ljava/lang/Thread;

    .line 235
    iput-object v4, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->terminationThread:Ljava/lang/Thread;

    .line 237
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Switching routing back to normal."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    const-string v1, "hf_bt=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listen()V

    .line 242
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 244
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->terminate()V

    .line 197
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listenSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listenSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 200
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    return-void
.end method

.method public connect(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 7
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 123
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "connecting SCO to %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->shouldHandleAudio()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Not connecting SCO to %s because glass is doffed."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->createScoSocket(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 131
    .local v1, "socket":Lcom/google/glass/bluetooth/BluetoothSocket;
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->handleNewConnection(Lcom/google/glass/bluetooth/BluetoothSocket;)V

    goto :goto_0

    .line 132
    .end local v1    # "socket":Lcom/google/glass/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "NullPointerException when attempting to connect SCO socket: %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Exception connecting a SCO socket to %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->shouldHandleAudio()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ScoConnection shouldHandleAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string v0, "ScoConnection thread exit count: reader %d, writer %d\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThreadExitCount:I

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThreadExitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 205
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 207
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThread:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ScoConnection.AudioReaderThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThread:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ScoConnection.AudioWriterThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public listen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Listen called"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listenSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    if-eqz v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->readerThread:Ljava/lang/Thread;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->writerThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    .line 92
    :cond_1
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Invalid state: reader and/or writer thread are not null. Closing them and starting a new listening thread."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "listen called while reader or writer thread is active."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenBluetoothAdapter;->listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    .local v1, "ss":Landroid/bluetooth/BluetoothServerSocket;
    new-instance v2, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    new-instance v3, Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;

    invoke-direct {v3, p0}, Lcom/google/glass/bluetooth/handsfree/ScoConnection$1;-><init>(Lcom/google/glass/bluetooth/handsfree/ScoConnection;)V

    invoke-direct {v2, v1, v3}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;-><init>(Landroid/bluetooth/BluetoothServerSocket;Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;)V

    iput-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listenSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    goto :goto_0

    .line 100
    .end local v1    # "ss":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e1":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to listen during hidden api called."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to listen during hidden api called."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
