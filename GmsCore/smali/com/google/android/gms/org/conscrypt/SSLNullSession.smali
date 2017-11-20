.class public final Lcom/google/android/gms/org/conscrypt/SSLNullSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field creationTime:J

.field lastAccessedTime:J

.field private final values:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->creationTime:J

    .line 53
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->creationTime:J

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->lastAccessedTime:J

    .line 54
    return-void
.end method

.method public static getNullSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gms/org/conscrypt/z;->a:Lcom/google/android/gms/org/conscrypt/SSLNullSession;

    return-object v0
.end method


# virtual methods
.method public final getApplicationBufferSize()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x4000

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "SSL_NULL_WITH_NULL_NULL"

    return-object v0
.end method

.method public final getCreationTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->creationTime:J

    return-wide v0
.end method

.method public final getId()[B
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method public final getLastAccessedTime()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->lastAccessedTime:J

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPacketBufferSize()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x4805

    return v0
.end method

.method public final getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPeerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPeerPort()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    return v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "NONE"

    return-object v0
.end method

.method public final getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValueNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final invalidate()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public final putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_2

    .line 161
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 163
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_3

    .line 164
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 167
    :cond_3
    return-void
.end method

.method public final removeValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_1

    .line 176
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .line 177
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 179
    :cond_1
    return-void
.end method
