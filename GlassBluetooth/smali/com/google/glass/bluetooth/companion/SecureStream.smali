.class Lcom/google/glass/bluetooth/companion/SecureStream;
.super Ljava/lang/Object;
.source "SecureStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/companion/SecureStream$1;,
        Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;,
        Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;
    }
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private final lock:Ljava/lang/Object;

.field private outputStream:Ljava/io/OutputStream;

.field private final secureInputStream:Ljava/io/InputStream;

.field private final secureOutputStream:Ljava/io/OutputStream;

.field private self:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "secret"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/google/glass/bluetooth/companion/SecureStream;->classInitNative()V

    .line 25
    return-void
.end method

.method public constructor <init>([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/SecureStream;->initNative([B)V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->lock:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->inputStream:Ljava/io/InputStream;

    .line 32
    iput-object p3, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->outputStream:Ljava/io/OutputStream;

    .line 34
    new-instance v0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;-><init>(Lcom/google/glass/bluetooth/companion/SecureStream;Lcom/google/glass/bluetooth/companion/SecureStream$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->secureInputStream:Ljava/io/InputStream;

    .line 35
    new-instance v0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;-><init>(Lcom/google/glass/bluetooth/companion/SecureStream;Lcom/google/glass/bluetooth/companion/SecureStream$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->secureOutputStream:Ljava/io/OutputStream;

    .line 36
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/bluetooth/companion/SecureStream;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->inputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/bluetooth/companion/SecureStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->outputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/companion/SecureStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/SecureStream;->closeNative()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/bluetooth/companion/SecureStream;[BII)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/bluetooth/companion/SecureStream;->readNative([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/bluetooth/companion/SecureStream;[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/bluetooth/companion/SecureStream;->writeNative([BII)V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative()V
.end method

.method private native initNative([B)V
.end method

.method private readInputStream([B)I
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "in":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->inputStream:Ljava/io/InputStream;

    .line 50
    monitor-exit v2

    .line 51
    if-nez v0, :cond_0

    .line 52
    const/4 v1, -0x1

    .line 54
    :goto_0
    return v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method private native readNative([BII)I
.end method

.method private native writeNative([BII)V
.end method

.method private writeOutputStream([B)V
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "out":Ljava/io/OutputStream;
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->outputStream:Ljava/io/OutputStream;

    .line 61
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-nez v0, :cond_0

    .line 63
    new-instance v1, Ljava/io/IOException;

    const-string v2, "output stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->secureInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream;->secureOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method
