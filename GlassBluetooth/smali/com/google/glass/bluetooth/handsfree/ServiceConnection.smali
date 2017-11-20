.class Lcom/google/glass/bluetooth/handsfree/ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;,
        Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;,
        Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;
    }
.end annotation


# static fields
.field private static final AG_FEATURE_ATTACH_VOICE_TAG:I = 0x10

.field private static final AG_FEATURE_ECHO_CANCELLATION:I = 0x2

.field private static final AG_FEATURE_ENHANCED_CALL_CONTROL:I = 0x80

.field private static final AG_FEATURE_ENHANCED_CALL_STATUS:I = 0x40

.field private static final AG_FEATURE_EXTENDED_ERROR_CODES:I = 0x100

.field private static final AG_FEATURE_IN_BAND_RING_TONE:I = 0x8

.field private static final AG_FEATURE_REJECT_CALL:I = 0x20

.field private static final AG_FEATURE_THREE_WAY_CALLING:I = 0x1

.field static final AG_FEATURE_VOICE_RECOGNITION:I = 0x4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final HF_FEATURE_CALL_LINE_IDENTIFICATION:I = 0x4

.field private static final HF_FEATURE_CALL_WAITING:I = 0x2

.field private static final HF_FEATURE_ECHO_CANCELLATION:I = 0x1

.field private static final HF_FEATURE_ENHANCED_CALL_CONTROL:I = 0x40

.field private static final HF_FEATURE_ENHANCED_CALL_STATUS:I = 0x20

.field private static final HF_FEATURE_REMOTE_VOLUME_CONTROL:I = 0x10

.field private static final HF_FEATURE_VOICE_RECOGNITION:I = 0x8

.field static final INDICATOR_CALL:Ljava/lang/String; = "call"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final INDICATOR_CALL_SETUP:Ljava/lang/String; = "callsetup"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private final listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

.field private final readerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

.field private final responseQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/glass/bluetooth/handsfree/AtResult;",
            ">;"
        }
    .end annotation
.end field

.field private shouldRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final socket:Ljava/io/Closeable;

.field private final writerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/Closeable;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "socket"    # Ljava/io/Closeable;
    .param p4, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .param p5, "serviceConnectionListener"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 108
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->responseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->shouldRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 366
    iput-object p3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->socket:Ljava/io/Closeable;

    .line 367
    iput-object p4, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 369
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->writerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;

    .line 370
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->readerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

    .line 372
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    invoke-direct {v0, p5}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    .line 373
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->responseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->threadEnded()V

    return-void
.end method

.method private getHandsFreeFeatures()I
    .locals 1

    .prologue
    .line 452
    const/16 v0, 0x1d

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method private sendCommand(Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;)V
    .locals 1
    .param p1, "command"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$1;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method

.method private sendHandshake()V
    .locals 3

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->getHandsFreeFeatures()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AT+BRSF="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 431
    const-string v0, "AT+CIND=?"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 432
    const-string v0, "AT+CIND?"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 433
    const-string v0, "AT+CMER=3,0,0,1"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->CALL_NOISE_CANCEL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    const-string v0, "AT+NREC=0"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 437
    :cond_0
    const-string v0, "AT+CLIP=1"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 438
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$2;

    const-string v1, "AT+CMEE=1"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$2;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;)V

    .line 444
    return-void
.end method

.method private threadEnded()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->readerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->access$600(Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->writerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->access$700(Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "reader and writer threads have completed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->listener:Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onDisconnected()V

    .line 410
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1

    .prologue
    .line 458
    const-string v0, "ATA"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public dial(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ATD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 119
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->shouldRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " shouldRun: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->writerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->writerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;

    invoke-virtual {v1, p1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->dump(Ljava/io/PrintWriter;)V

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->readerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->readerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

    invoke-virtual {v1, p1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->dump(Ljava/io/PrintWriter;)V

    .line 131
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " commandQueue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->responseQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " responseQueue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return-void

    .line 124
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " writerThread was null."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " readerThread was null."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getShouldRun()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->shouldRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public listCurrentCalls()V
    .locals 1

    .prologue
    .line 521
    const-string v0, "AT+CLCC"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public redial()V
    .locals 1

    .prologue
    .line 486
    const-string v0, "AT+BLDN"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public rejectCall()V
    .locals 2

    .prologue
    .line 463
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$3;

    const-string v1, "AT+CHUP"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$3;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;)V

    .line 473
    return-void
.end method

.method public reportMicrophoneGain(I)V
    .locals 2
    .param p1, "gain"    # I

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AT+VGM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public reportSpeakerGain(I)V
    .locals 2
    .param p1, "gain"    # I

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AT+VGS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->shouldRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 378
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->readerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->start()V

    .line 379
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->writerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->start()V

    .line 381
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendHandshake()V

    .line 382
    return-void
.end method

.method public startVoiceRecognition(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 495
    const-string v1, "AT+BVRA="

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V

    .line 496
    return-void

    .line 495
    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->shouldRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 388
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->socket:Ljava/io/Closeable;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 390
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->readerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$ReaderThread;->interrupt()V

    .line 391
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->writerThread:Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$WriterThread;->interrupt()V

    .line 392
    return-void
.end method
