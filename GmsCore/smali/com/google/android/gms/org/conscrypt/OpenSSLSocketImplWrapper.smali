.class public Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;
.source "SourceFile"


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    .line 36
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    .line 40
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public setKeepAlive(Z)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 101
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 122
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 96
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 117
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 86
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 111
    invoke-super {p0, p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 112
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 91
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSL socket over "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
