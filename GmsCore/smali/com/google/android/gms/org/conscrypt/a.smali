.class abstract Lcom/google/android/gms/org/conscrypt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# static fields
.field static final OPEN_SSL:I = 0x1


# instance fields
.field volatile maximumSize:I

.field private final sessions:Ljava/util/Map;

.field final sslCtxNativePointer:J

.field volatile timeout:I


# direct methods
.method constructor <init>(II)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_CTX_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/a;->sslCtxNativePointer:J

    .line 49
    new-instance v0, Lcom/google/android/gms/org/conscrypt/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/b;-><init>(Lcom/google/android/gms/org/conscrypt/a;)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    .line 70
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/a;->maximumSize:I

    .line 71
    iput p2, p0, Lcom/google/android/gms/org/conscrypt/a;->timeout:I

    .line 72
    return-void
.end method

.method static log(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error converting session"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    return-void
.end method

.method private sessionIterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/net/ssl/SSLSession;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLSession;

    .line 81
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 304
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/a;->sslCtxNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_CTX_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/a;->sessionIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/google/android/gms/org/conscrypt/c;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/org/conscrypt/c;-><init>(Lcom/google/android/gms/org/conscrypt/a;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 3

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sessionId == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/d;

    invoke-direct {v0, p1}, Lcom/google/android/gms/org/conscrypt/d;-><init>([B)V

    .line 277
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    .line 279
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :goto_0
    return-object v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSessionCacheSize()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/a;->maximumSize:I

    return v0
.end method

.method public final getSessionTimeout()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/a;->timeout:I

    return v0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 3

    .prologue
    .line 287
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 288
    array-length v1, v0

    if-nez v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v1, Lcom/google/android/gms/org/conscrypt/d;

    invoke-direct {v1, v0}, Lcom/google/android/gms/org/conscrypt/d;-><init>([B)V

    .line 292
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected abstract sessionRemoved(Ljavax/net/ssl/SSLSession;)V
.end method

.method public final setSessionCacheSize(I)V
    .locals 2

    .prologue
    .line 178
    if-gez p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/a;->maximumSize:I

    .line 183
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/a;->maximumSize:I

    .line 186
    if-ge p1, v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/a;->trimToSize()V

    .line 189
    :cond_1
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 4

    .prologue
    .line 150
    if-gez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "seconds < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/a;->timeout:I

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 157
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    .line 161
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/a;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method toBytes(Ljavax/net/ssl/SSLSession;)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 198
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 231
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    .line 202
    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    .line 204
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 207
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->getEncoded()[B

    move-result-object v0

    .line 211
    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 212
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 215
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 216
    array-length v0, v4

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 218
    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 219
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    .line 220
    array-length v7, v6

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 221
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/a;->log(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 228
    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/a;->log(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 231
    goto :goto_0
.end method

.method toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 241
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 242
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 244
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 245
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/a;->log(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 266
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 251
    new-array v1, v0, [B

    .line 252
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 254
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 255
    new-array v4, v3, [Ljava/security/cert/X509Certificate;

    .line 256
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 257
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 258
    new-array v5, v5, [B

    .line 259
    invoke-virtual {v2, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 260
    invoke-static {v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v4, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_1
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    move-object v2, p2

    move v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;-><init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lcom/google/android/gms/org/conscrypt/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/a;->log(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 266
    goto :goto_0
.end method

.method protected trimToSize()V
    .locals 4

    .prologue
    .line 133
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 135
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/a;->maximumSize:I

    if-le v0, v1, :cond_0

    .line 136
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/a;->maximumSize:I

    sub-int/2addr v0, v1

    .line 137
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/a;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 139
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 141
    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/a;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    .line 142
    add-int/lit8 v0, v1, -0x1

    if-gtz v0, :cond_1

    .line 144
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method
