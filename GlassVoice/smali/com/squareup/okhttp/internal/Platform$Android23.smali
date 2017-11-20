.class Lcom/squareup/okhttp/internal/Platform$Android23;
.super Lcom/squareup/okhttp/internal/Platform$Java6;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Android23"
.end annotation


# instance fields
.field protected final openSslSocketClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final setHostname:Ljava/lang/reflect/Method;

.field private final setUseSessionTickets:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "getMtu"    # Ljava/lang/reflect/Method;
    .param p3, "setUseSessionTickets"    # Ljava/lang/reflect/Method;
    .param p4, "setHostname"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "openSslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/Platform$Java6;-><init>(Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V

    .line 249
    iput-object p2, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->openSslSocketClass:Ljava/lang/Class;

    .line 250
    iput-object p3, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->setUseSessionTickets:Ljava/lang/reflect/Method;

    .line 251
    iput-object p4, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->setHostname:Ljava/lang/reflect/Method;

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Method;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Ljava/lang/reflect/Method;
    .param p4, "x3"    # Ljava/lang/reflect/Method;
    .param p5, "x4"    # Lcom/squareup/okhttp/internal/Platform$1;

    .prologue
    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/Platform$Android23;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-void

    .line 258
    :catch_0
    move-exception v1

    .line 261
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "ioException":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    throw v0
.end method

.method public enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "uriHost"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/Platform$Java6;->enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->openSslSocketClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->setUseSessionTickets:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->setHostname:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    :cond_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 276
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
