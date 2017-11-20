.class Lcom/squareup/okhttp/Dispatcher$RealResponseBody;
.super Lcom/squareup/okhttp/Response$Body;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RealResponseBody"
.end annotation


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/squareup/okhttp/Response$Body;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/squareup/okhttp/Dispatcher$RealResponseBody;->connection:Ljava/net/HttpURLConnection;

    .line 66
    iput-object p2, p0, Lcom/squareup/okhttp/Dispatcher$RealResponseBody;->in:Ljava/io/InputStream;

    .line 67
    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher$RealResponseBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher$RealResponseBody;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher$RealResponseBody;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
