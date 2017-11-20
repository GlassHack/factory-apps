.class public interface abstract Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clientCertificateRequested([B[[B)V
.end method

.method public abstract clientPSKKeyRequested(Ljava/lang/String;[B[B)I
.end method

.method public abstract onSSLStateChange(JII)V
.end method

.method public abstract serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method public abstract verifyCertificateChain(J[JLjava/lang/String;)V
.end method
