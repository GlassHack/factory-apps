.class public Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# static fields
.field private static final DBG_STATE:Z = false

.field private static final STATE_CLOSED:I = 0x5

.field private static final STATE_HANDSHAKE_COMPLETED:I = 0x2

.field private static final STATE_HANDSHAKE_STARTED:I = 0x1

.field private static final STATE_NEW:I = 0x0

.field private static final STATE_READY:I = 0x4

.field private static final STATE_READY_HANDSHAKE_CUT_THROUGH:I = 0x3


# instance fields
.field private final autoClose:Z

.field channelIdPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private final guard:La/a/d;

.field private handshakeSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

.field private handshakeTimeoutMilliseconds:I

.field private is:Lcom/google/android/gms/org/conscrypt/r;

.field private listeners:Ljava/util/ArrayList;

.field private os:Lcom/google/android/gms/org/conscrypt/s;

.field private readTimeoutMilliseconds:I

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:J

.field private final sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

.field private sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private wrappedHost:Ljava/lang/String;

.field private final wrappedPort:I

.field private writeTimeoutMilliseconds:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 105
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 133
    invoke-static {}, La/a/d;->a()La/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    .line 155
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 156
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 158
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 161
    iput-object p0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 163
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedPort:I

    .line 164
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 165
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 166
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 105
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 133
    invoke-static {}, La/a/d;->a()La/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    .line 155
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 156
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 158
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 171
    iput-object p0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 173
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedPort:I

    .line 174
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 175
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 176
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 105
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 133
    invoke-static {}, La/a/d;->a()La/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    .line 155
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 156
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 158
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 193
    iput-object p0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 195
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedPort:I

    .line 196
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 197
    iput-object p5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 198
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 105
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 133
    invoke-static {}, La/a/d;->a()La/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    .line 155
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 156
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 158
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 181
    iput-object p0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 183
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedPort:I

    .line 184
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 185
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 186
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 105
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 133
    invoke-static {}, La/a/d;->a()La/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    .line 155
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 156
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 158
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 204
    iput-object p0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 206
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedPort:I

    .line 207
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 208
    iput-object p5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 209
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    .line 105
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 133
    invoke-static {}, La/a/d;->a()La/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    .line 155
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 156
    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 217
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 218
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 219
    iput p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedPort:I

    .line 220
    iput-boolean p4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    .line 221
    iput-object p5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    return v0
.end method

.method private assertReadableOrWriteableState()V
    .locals 3

    .prologue
    .line 589
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 590
    :cond_0
    return-void

    .line 593
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private checkOpen()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    return-void
.end method

.method private closeUnderlyingSocket()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_1

    .line 1108
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_0
.end method

.method private free()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1119
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_free(J)V

    .line 1123
    iput-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    .line 1124
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    invoke-virtual {v0}, La/a/d;->b()V

    goto :goto_0
.end method

.method private notifyHandshakeCompletedListeners()V
    .locals 5

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    invoke-direct {v1, p0, v0}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 486
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 488
    :try_start_0
    invoke-interface {v0, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 495
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 496
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 500
    :cond_0
    return-void
.end method

.method private shutdownAndFreeSslNative()V
    .locals 3

    .prologue
    .line 1090
    :try_start_0
    invoke-static {}, La/a/a;->a()La/a/b;

    move-result-object v0

    invoke-interface {v0}, La/a/b;->a()V

    .line 1091
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_shutdown(JLjava/io/FileDescriptor;Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->free()V

    .line 1102
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    .line 1103
    :goto_0
    return-void

    .line 1101
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->free()V

    .line 1102
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->free()V

    .line 1102
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    throw v0
.end method

.method private waitForHandshake()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 598
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->startHandshake()V

    .line 600
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_0

    .line 605
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 608
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 611
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 615
    :cond_0
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-ne v0, v3, :cond_1

    .line 616
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    .prologue
    .line 775
    if-nez p1, :cond_0

    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    return-void
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseClientPSKIdentity(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerPSKIdentityHint(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1226
    invoke-interface {p1, p0}, Lcom/google/android/gms/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 7

    .prologue
    .line 417
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    .line 419
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v2, 0x5

    .line 1030
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1034
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-ne v0, v2, :cond_0

    .line 1036
    monitor-exit v1

    .line 1086
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 1040
    const/4 v2, 0x5

    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 1042
    if-nez v0, :cond_1

    .line 1046
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->closeUnderlyingSocket()V

    .line 1048
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1049
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1052
    :cond_1
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 1057
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    .line 1059
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1060
    monitor-exit v1

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1066
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/google/android/gms/org/conscrypt/r;

    .line 1067
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/google/android/gms/org/conscrypt/s;

    .line 1068
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    .line 1072
    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    .line 1078
    :cond_4
    if-eqz v0, :cond_5

    .line 1079
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/r;->a()V

    .line 1081
    :cond_5
    if-eqz v2, :cond_6

    .line 1082
    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/s;->a()V

    .line 1085
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 1146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    invoke-virtual {v0}, La/a/d;->c()V

    .line 1149
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1152
    return-void

    .line 1151
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlpnSelectedProtocol()[B
    .locals 2

    .prologue
    .line 1177
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_get0_alpn_selected(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()[B
    .locals 3

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 899
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 900
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 1158
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    .line 545
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 547
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 550
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/google/android/gms/org/conscrypt/r;

    if-nez v0, :cond_1

    .line 551
    new-instance v0, Lcom/google/android/gms/org/conscrypt/r;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/r;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/google/android/gms/org/conscrypt/r;

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->is:Lcom/google/android/gms/org/conscrypt/r;

    .line 555
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    .line 561
    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getNpnSelectedProtocol()[B
    .locals 2

    .prologue
    .line 1169
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_get_npn_negotiated_protocol(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    .line 569
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 571
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 574
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/google/android/gms/org/conscrypt/s;

    if-nez v0, :cond_1

    .line 575
    new-instance v0, Lcom/google/android/gms/org/conscrypt/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/s;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/google/android/gms/org/conscrypt/s;

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->os:Lcom/google/android/gms/org/conscrypt/s;

    .line 579
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V

    .line 585
    return-object v0
.end method

.method public getPSKKey(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 1236
    invoke-interface {p1, p2, p3, p0}, Lcom/google/android/gms/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method getPeerHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 406
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPeerPort()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedPort:I

    goto :goto_0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-nez v0, :cond_0

    .line 762
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->waitForHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    :goto_0
    return-object v0

    .line 766
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoTimeout()I
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    return v0
.end method

.method public getSoWriteTimeout()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public onSSLStateChange(JII)V
    .locals 3

    .prologue
    .line 436
    const/16 v0, 0x20

    if-eq p3, v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 449
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 450
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 451
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 454
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 456
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :cond_2
    monitor-exit v1

    .line 462
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->resetId()V

    .line 463
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    move-result-object v0

    .line 467
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/a;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 470
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    .line 472
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    const/4 v0, 0x4

    :try_start_2
    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 477
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getServerSessionContext()Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    move-result-object v0

    goto :goto_1
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    .prologue
    .line 787
    if-nez p1, :cond_0

    .line 788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_2
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2

    .prologue
    .line 983
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public setAlpnProtocols([B)V
    .locals 2

    .prologue
    .line 1207
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpnProtocols.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iput-object p1, v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    .line 1211
    return-void
.end method

.method public setChannelIdEnabled(Z)V
    .locals 3

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 874
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v0, :cond_1

    .line 875
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 881
    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 3

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Server mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 925
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v0, :cond_1

    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    if-nez p1, :cond_2

    .line 933
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 943
    :goto_0
    return-void

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 938
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 808
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0

    .prologue
    .line 1023
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 1024
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 855
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 856
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 857
    return-void

    .line 855
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 974
    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 2

    .prologue
    .line 1190
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "npnProtocols.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iput-object p1, v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    .line 1194
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 2

    .prologue
    .line 988
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 0

    .prologue
    .line 993
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 994
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->readTimeoutMilliseconds:I

    .line 995
    return-void
.end method

.method public setSoWriteTimeout(I)V
    .locals 2

    .prologue
    .line 1006
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I

    .line 1008
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/org/conscrypt/Platform;->setSocketTimeout(Ljava/net/Socket;J)V

    .line 1009
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 3

    .prologue
    .line 952
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 953
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-eqz v0, :cond_0

    .line 954
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 959
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 847
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 979
    return-void
.end method

.method public startHandshake()V
    .locals 14

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V

    .line 244
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    if-nez v0, :cond_3

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit v1

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v0

    .line 257
    if-nez v0, :cond_4

    .line 258
    const-string v0, "/dev/urandom"

    const-wide/16 v2, 0x400

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v9

    .line 265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    .line 266
    const/4 v10, 0x1

    .line 268
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/google/android/gms/org/conscrypt/a;

    move-result-object v0

    .line 269
    iget-wide v2, v0, Lcom/google/android/gms/org/conscrypt/a;->sslCtxNativePointer:J

    .line 270
    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_new(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->guard:La/a/d;

    const-string v1, "close"

    invoke-virtual {v0, v1}, La/a/d;->a(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getEnableSessionCreation()Z

    move-result v0

    .line 274
    if-nez v0, :cond_0

    .line 275
    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-static {v4, v5, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerPort()I

    move-result v6

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getSessionToReuse(JLjava/lang/String;I)Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v11

    .line 281
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setSSLParameters(JJLcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->channelIdPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 287
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v12

    .line 288
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getSoWriteTimeout()I

    move-result v13

    .line 289
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v0, :cond_1

    .line 290
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 291
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 295
    :try_start_2
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 296
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 378
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    const/4 v0, 0x5

    :try_start_3
    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 386
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 390
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 396
    :cond_2
    :goto_1
    return-void

    .line 250
    :cond_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 260
    :cond_4
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RAND_seed([B)V

    goto/16 :goto_0

    .line 387
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 298
    :cond_5
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 302
    :try_start_7
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v4

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-object v6, v3, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    if-eqz v9, :cond_c

    const/4 v7, 0x0

    :goto_2
    move-object v3, p0

    move v5, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;IZ[B[B)J
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-wide v2

    .line 335
    const/4 v9, 0x0

    .line 336
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 337
    :try_start_9
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const/4 v4, 0x2

    if-ne v0, v4, :cond_f

    .line 338
    const/4 v9, 0x1

    .line 342
    :cond_6
    :try_start_a
    monitor-exit v1

    .line 344
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerPort()I

    move-result v8

    move-object v6, v11

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    .line 348
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v0, :cond_7

    .line 349
    invoke-virtual {p0, v12}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 350
    invoke-virtual {p0, v13}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 354
    :cond_7
    if-eqz v9, :cond_8

    .line 355
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    .line 358
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 359
    :try_start_b
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    .line 361
    :goto_3
    :try_start_c
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_11

    .line 362
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 367
    :cond_9
    :goto_4
    if-nez v1, :cond_a

    .line 370
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 372
    :cond_a
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 378
    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    const/4 v0, 0x5

    :try_start_d
    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 386
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 390
    :try_start_e
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1

    .line 393
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 298
    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v1

    throw v0
    :try_end_f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 373
    :catch_1
    move-exception v0

    .line 374
    :goto_5
    :try_start_10
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Handshake failed"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 378
    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v10, :cond_b

    .line 379
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    const/4 v2, 0x5

    :try_start_11
    iput v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 386
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 390
    :try_start_12
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 393
    :cond_b
    :goto_7
    throw v0

    .line 302
    :cond_c
    :try_start_13
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-object v7, v3, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_2

    .line 305
    :catch_2
    move-exception v0

    .line 306
    :try_start_14
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 308
    throw v1

    .line 309
    :catch_3
    move-exception v0

    .line 317
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 318
    :try_start_15
    iget v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 319
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 378
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    const/4 v0, 0x5

    :try_start_16
    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 386
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 390
    :try_start_17
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4

    goto/16 :goto_1

    .line 393
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 387
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 321
    :cond_d
    :try_start_18
    monitor-exit v1

    .line 324
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 326
    const-string v2, "unexpected CCS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 327
    const-string v1, "ssl_unexpected_ccs: host=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 332
    :cond_e
    throw v0

    .line 321
    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_18
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 339
    :cond_f
    :try_start_19
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    .line 340
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 378
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    const/4 v0, 0x5

    :try_start_1a
    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    .line 386
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 390
    :try_start_1b
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->shutdownAndFreeSslNative()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5

    goto/16 :goto_1

    .line 393
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 387
    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0

    .line 342
    :catchall_7
    move-exception v0

    :try_start_1c
    monitor-exit v1

    throw v0
    :try_end_1c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 359
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 363
    :cond_11
    :try_start_1d
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 364
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->state:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    goto/16 :goto_4

    .line 372
    :catchall_8
    move-exception v0

    :goto_8
    :try_start_1e
    monitor-exit v2

    throw v0
    :try_end_1e
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 373
    :catch_6
    move-exception v0

    move v10, v1

    goto/16 :goto_5

    .line 387
    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 393
    :catch_7
    move-exception v0

    goto/16 :goto_1

    :catch_8
    move-exception v1

    goto/16 :goto_7

    .line 378
    :catchall_b
    move-exception v0

    move v10, v1

    goto/16 :goto_6

    .line 372
    :catchall_c
    move-exception v0

    move v1, v10

    goto :goto_8
.end method

.method public verifyCertificateChain(J[JLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v9

    .line 508
    if-nez v9, :cond_0

    .line 509
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "No X.509 TrustManager"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :catchall_0
    move-exception v0

    iput-object v10, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    throw v0

    .line 511
    :cond_0
    if-eqz p3, :cond_1

    :try_start_2
    array-length v1, p3

    if-nez v1, :cond_2

    .line 512
    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Peer sent no certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    :catch_1
    move-exception v0

    .line 533
    :try_start_3
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    :cond_2
    :try_start_4
    array-length v1, p3

    new-array v5, v1, [Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    .line 515
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 516
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v2, p3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    aput-object v1, v5, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_3
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerPort()I

    move-result v7

    const/4 v8, 0x0

    move-wide v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/a;)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    .line 523
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    .line 524
    if-eqz v0, :cond_4

    .line 525
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v5, p4, v0}, Lcom/google/android/gms/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 536
    :goto_1
    iput-object v10, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->handshakeSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    .line 537
    return-void

    .line 527
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    aget-object v0, v5, v0

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-interface {v9, v5, v0}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
