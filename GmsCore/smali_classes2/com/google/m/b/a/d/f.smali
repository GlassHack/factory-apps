.class public final Lcom/google/m/b/a/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B[B)Lcom/google/m/b/a/d/g;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/google/m/b/a/d/h;

    invoke-direct {v0, v3}, Lcom/google/m/b/a/d/h;-><init>(B)V

    .line 60
    iget-object v1, v0, Lcom/google/m/b/a/d/h;->a:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    .line 61
    invoke-static {v1, p0}, Lcom/google/m/b/a/d/a;->b(Ljava/security/PrivateKey;[B)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/google/m/b/a/d/g;

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/m/b/a/d/g;-><init>(Lcom/google/m/b/a/d/h;Ljavax/crypto/SecretKey;[BB)V

    return-object v2
.end method
