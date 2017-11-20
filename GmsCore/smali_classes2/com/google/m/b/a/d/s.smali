.class public final Lcom/google/m/b/a/d/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BLjavax/crypto/SecretKey;)Lcom/google/m/b/a/d/t;
    .locals 4

    .prologue
    .line 141
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 145
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/m/b/a/e/p;->a([B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    sget-object v2, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    invoke-static {v0, p1, v1, p1, v2}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;)Lcom/google/m/b/a/e/o;

    move-result-object v0

    .line 152
    iget-object v1, v0, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    iget-object v1, v1, Lcom/google/m/b/a/e/n;->j:Lcom/google/protobuf/a/a;

    invoke-virtual {v1}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/m/b/a/d/o;->a([B)Lcom/google/m/b/a/d/o;

    move-result-object v1

    .line 154
    iget v2, v1, Lcom/google/m/b/a/d/o;->b:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 155
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Unsupported protocol version"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 157
    :cond_2
    :try_start_1
    new-instance v2, Lcom/google/m/b/a/d/t;

    iget v1, v1, Lcom/google/m/b/a/d/o;->a:I

    invoke-static {v1}, Lcom/google/m/b/a/d/u;->a(I)Lcom/google/m/b/a/d/u;

    move-result-object v1

    iget-object v0, v0, Lcom/google/m/b/a/e/o;->d:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/m/b/a/d/t;-><init>(Lcom/google/m/b/a/d/u;[B)V
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 160
    :catch_1
    move-exception v0

    .line 161
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/google/m/b/a/d/t;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)[B
    .locals 6

    .prologue
    .line 175
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    .line 180
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    .line 182
    new-instance v0, Lcom/google/m/b/a/e/h;

    invoke-direct {v0}, Lcom/google/m/b/a/e/h;-><init>()V

    invoke-static {v2}, Lcom/google/m/b/a/d/j;->a(Ljava/security/PublicKey;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/m/b/a/e/h;->b([B)Lcom/google/m/b/a/e/h;

    move-result-object v0

    new-instance v3, Lcom/google/m/b/a/d/o;

    invoke-direct {v3}, Lcom/google/m/b/a/d/o;-><init>()V

    iget-object v4, p0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    invoke-virtual {v4}, Lcom/google/m/b/a/d/u;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/m/b/a/d/o;->a(I)Lcom/google/m/b/a/d/o;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/m/b/a/d/o;->b(I)Lcom/google/m/b/a/d/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/m/b/a/d/o;->g()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/m/b/a/e/h;->a([B)Lcom/google/m/b/a/e/h;

    move-result-object v0

    instance-of v3, v2, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_2

    sget-object v2, Lcom/google/m/b/a/e/c;->b:Lcom/google/m/b/a/e/c;

    :goto_0
    sget-object v4, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    iget-object v5, p0, Lcom/google/m/b/a/d/t;->b:[B

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/m/b/a/e/h;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/m/b/a/e/p;->g()[B

    move-result-object v0

    return-object v0

    :cond_2
    instance-of v2, v2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/m/b/a/e/c;->c:Lcom/google/m/b/a/e/c;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
