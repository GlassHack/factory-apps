.class public Lcom/google/glass/bluetooth/companion/EnvelopeSender;
.super Ljava/lang/Object;
.source "EnvelopeSender.java"


# static fields
.field public static final TYPE_GENERAL:I = 0x1

.field public static final TYPE_SCREENCAST:I

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private volatile isRunning:Z

.field private final outStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->isRunning:Z

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EnvelopeSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v1, Lcom/google/glass/bluetooth/companion/EnvelopeSender$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/bluetooth/companion/EnvelopeSender$1;-><init>(Lcom/google/glass/bluetooth/companion/EnvelopeSender;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->isRunning:Z

    .line 47
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z
    .locals 8
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    iget-boolean v3, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->isRunning:Z

    if-nez v3, :cond_0

    .line 78
    sget-object v2, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Dropping envelope since companion is not running."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :goto_0
    return v1

    .line 83
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->outStream:Ljava/io/OutputStream;

    invoke-static {p1, v4}, Lcom/google/glass/protobuf/DelimitedProtoIo;->writeDelimitedTo(Lcom/google/protobuf/nano/MessageNano;Ljava/io/OutputStream;)V

    .line 85
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    sget-object v3, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Envelope of timestamp %s was sent."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 91
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "error happens when sending envelope to companion."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized sendEnvelopeAsync(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 3
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->isRunning:Z

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Envelope Sender was closed. Drop the envelope."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendOrUpdateEnvelopeAsync(ILcom/google/glass/companion/Proto$Envelope;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->isRunning:Z

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Envelope Sender was closed. Drop the envelope."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    if-nez p1, :cond_1

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Skip!. Type %s is not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
