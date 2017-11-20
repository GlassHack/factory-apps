.class public Lcom/google/android/s3/ConnectionFactoryImpl;
.super Ljava/lang/Object;
.source "ConnectionFactoryImpl.java"

# interfaces
.implements Lcom/google/android/s3/ConnectionFactory;


# static fields
.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final mUserAgentSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/s3/ConnectionFactoryImpl;-><init>(Lcom/google/common/base/Supplier;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "userAgentSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/s3/ConnectionFactoryImpl;->mUserAgentSupplier:Lcom/google/common/base/Supplier;

    .line 34
    return-void
.end method


# virtual methods
.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "httpServerInfo"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/s3/ConnectionFactoryImpl;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "httpServerInfo"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 54
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getReadTimeoutMsec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getConnectionTimeoutMsec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    iget-object v1, p0, Lcom/google/android/s3/ConnectionFactoryImpl;->mUserAgentSupplier:Lcom/google/common/base/Supplier;

    if-eqz v1, :cond_0

    .line 57
    const-string v2, "User-Agent"

    iget-object v1, p0, Lcom/google/android/s3/ConnectionFactoryImpl;->mUserAgentSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getChunkSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 67
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-gt v1, v2, :cond_1

    .line 68
    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    return-object v0

    .line 63
    :cond_2
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0
.end method

.method public openSocket(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Ljava/net/Socket;
    .locals 2
    .param p1, "serverInfo"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Factory supports only HTTP connections"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
