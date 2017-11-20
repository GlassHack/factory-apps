.class Lcom/google/glass/bluetooth/companion/PresharedKey;
.super Ljava/lang/Object;
.source "PresharedKey.java"


# static fields
.field private static final KEY_FILENAME:Ljava/lang/String; = "GlassPresharedKey"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final responseParser:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bytes:[B

.field private final context:Landroid/content/Context;

.field private final responseHandler:Lcom/google/glass/net/ProtoResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/bluetooth/companion/PresharedKey$1;

    invoke-direct {v1}, Lcom/google/glass/bluetooth/companion/PresharedKey$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/PresharedKey;->responseParser:Lcom/google/glass/protobuf/ProtoParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/glass/bluetooth/companion/PresharedKey$2;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/companion/PresharedKey$2;-><init>(Lcom/google/glass/bluetooth/companion/PresharedKey;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    .line 29
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/bluetooth/companion/PresharedKey;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/PresharedKey;
    .param p1, "x1"    # [B

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->bytes:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/companion/PresharedKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/PresharedKey;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/PresharedKey;->saveKey()V

    return-void
.end method

.method private readKey()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 75
    const/16 v4, 0x20

    new-array v1, v4, [B

    .line 76
    .local v1, "key":[B
    const/4 v2, 0x0

    .line 78
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->context:Landroid/content/Context;

    const-string v5, "GlassPresharedKey"

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 79
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 80
    sget-object v4, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Read key from file"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->bytes:[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v3, 0x1

    .line 89
    const-string v4, "preshared key file input stream"

    sget-object v5, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v2, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 91
    :goto_0
    return v3

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    sget-object v4, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Could not find preshared key in file."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    const-string v4, "preshared key file input stream"

    sget-object v5, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v2, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to read from preshared key file."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    const-string v4, "preshared key file input stream"

    sget-object v5, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v2, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    const-string v4, "preshared key file input stream"

    sget-object v5, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v2, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v3
.end method

.method private saveKey()V
    .locals 5

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->context:Landroid/content/Context;

    const-string v3, "GlassPresharedKey"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->bytes:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->bytes:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 99
    sget-object v2, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Wrote key to file"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const-string v2, "preshared key file output stream"

    sget-object v3, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to save preshared key file."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const-string v2, "preshared key file output stream"

    sget-object v3, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    const-string v3, "preshared key file output stream"

    sget-object v4, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v1, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v2
.end method


# virtual methods
.method public fetchKey()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/PresharedKey;->readKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    sget-object v1, Lcom/google/glass/bluetooth/companion/PresharedKey;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Making network request for key."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v2, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;-><init>()V

    .line 40
    .local v2, "request":Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;->setRequestSource(I)Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;

    .line 41
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 42
    .local v0, "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->SHARED_SECRET_KEY:Lcom/google/glass/net/ServerConstants$Action;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/glass/bluetooth/companion/PresharedKey;->responseParser:Lcom/google/glass/protobuf/ProtoParser;

    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 44
    .end local v0    # "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v2    # "request":Lcom/google/googlex/glass/common/proto/SetupNano$SetupSharedKeyRequest;
    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->bytes:[B

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/PresharedKey;->bytes:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
