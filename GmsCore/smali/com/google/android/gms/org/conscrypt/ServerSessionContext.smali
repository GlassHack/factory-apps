.class public Lcom/google/android/gms/org/conscrypt/ServerSessionContext;
.super Lcom/google/android/gms/org/conscrypt/a;
.source "SourceFile"


# instance fields
.field private persistentCache:Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    const/16 v0, 0x64

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/org/conscrypt/a;-><init>(II)V

    .line 45
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;->sslCtxNativePointer:J

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v3, 0x20

    aput-byte v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(J[B)V

    .line 46
    return-void
.end method


# virtual methods
.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/gms/org/conscrypt/a;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;

    invoke-interface {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-super {p0, v0}, Lcom/google/android/gms/org/conscrypt/a;->putSession(Ljavax/net/ssl/SSLSession;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/google/android/gms/org/conscrypt/a;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 88
    :cond_0
    return-void
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public setPersistentCache(Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLServerSessionCache;

    .line 50
    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/gms/org/conscrypt/a;->setSessionTimeout(I)V

    return-void
.end method
