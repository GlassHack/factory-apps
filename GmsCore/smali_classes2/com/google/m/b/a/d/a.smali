.class public final Lcom/google/m/b/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljavax/crypto/SecretKey;[B)Lcom/google/m/b/a/d/c;
    .locals 3

    .prologue
    .line 170
    :try_start_0
    invoke-static {p1, p0}, Lcom/google/m/b/a/d/a;->a([BLjavax/crypto/SecretKey;)Lcom/google/m/b/a/d/t;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/google/m/b/a/d/u;->k:Lcom/google/m/b/a/d/u;

    iget-object v2, v0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/d/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "wrong message type in responder hello"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 175
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/google/m/b/a/d/t;->b:[B

    invoke-static {v0}, Lcom/google/m/b/a/d/c;->a([B)Lcom/google/m/b/a/d/c;
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    return-object v0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 180
    :catch_2
    move-exception v0

    .line 181
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a([BLjavax/crypto/SecretKey;)Lcom/google/m/b/a/d/t;
    .locals 4

    .prologue
    .line 115
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 119
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/m/b/a/e/p;->a([B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    sget-object v2, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    invoke-static {v0, p1, v1, p1, v2}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;)Lcom/google/m/b/a/e/o;

    move-result-object v0

    .line 126
    iget-object v1, v0, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    iget-object v1, v1, Lcom/google/m/b/a/e/n;->j:Lcom/google/protobuf/a/a;

    invoke-virtual {v1}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/m/b/a/d/o;->a([B)Lcom/google/m/b/a/d/o;

    move-result-object v1

    .line 128
    iget v2, v1, Lcom/google/m/b/a/d/o;->b:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 129
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Unsupported protocol version"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 131
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

    .line 134
    :catch_1
    move-exception v0

    .line 135
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/security/PrivateKey;[B)Ljavax/crypto/SecretKey;
    .locals 3

    .prologue
    .line 147
    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/m/b/a/e/p;->a([B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;)Lcom/google/m/b/a/e/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/m/b/a/e/n;->h:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    new-instance v1, Lcom/google/m/b/a/d/e;

    invoke-direct {v1}, Lcom/google/m/b/a/d/e;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/e;

    .line 148
    iget-object v0, v0, Lcom/google/m/b/a/d/e;->a:Lcom/google/m/b/a/e/m;

    invoke-static {v0}, Lcom/google/m/b/a/e/d;->a(Lcom/google/m/b/a/e/m;)Ljava/security/PublicKey;

    move-result-object v0

    .line 150
    invoke-static {p0, v0}, Lcom/google/m/b/a/d/i;->a(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    return-object v0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :catch_2
    move-exception v0

    .line 156
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Lcom/google/m/b/a/d/t;Ljavax/crypto/SecretKey;[B)[B
    .locals 6

    .prologue
    .line 71
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Lcom/google/m/b/a/e/h;

    invoke-direct {v0}, Lcom/google/m/b/a/e/h;-><init>()V

    new-instance v1, Lcom/google/m/b/a/d/o;

    invoke-direct {v1}, Lcom/google/m/b/a/d/o;-><init>()V

    iget-object v2, p0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    invoke-virtual {v2}, Lcom/google/m/b/a/d/u;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/d/o;->a(I)Lcom/google/m/b/a/d/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/d/o;->b(I)Lcom/google/m/b/a/d/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/m/b/a/d/o;->g()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/h;->a([B)Lcom/google/m/b/a/e/h;

    move-result-object v0

    .line 81
    if-eqz p2, :cond_2

    .line 82
    invoke-static {p2}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/m/b/a/e/h;->a:Lcom/google/protobuf/a/a;

    .line 85
    :cond_2
    sget-object v2, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    sget-object v4, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    iget-object v5, p0, Lcom/google/m/b/a/d/t;->b:[B

    move-object v1, p1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/m/b/a/e/h;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/m/b/a/e/p;->g()[B

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/security/PrivateKey;[B)Ljavax/crypto/SecretKey;
    .locals 2

    .prologue
    .line 193
    :try_start_0
    new-instance v0, Lcom/google/m/b/a/d/d;

    invoke-direct {v0}, Lcom/google/m/b/a/d/d;-><init>()V

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/d;

    .line 194
    iget-object v0, v0, Lcom/google/m/b/a/d/d;->a:Lcom/google/m/b/a/e/m;

    invoke-static {v0}, Lcom/google/m/b/a/e/d;->a(Lcom/google/m/b/a/e/m;)Ljava/security/PublicKey;

    move-result-object v0

    .line 196
    invoke-static {p0, v0}, Lcom/google/m/b/a/d/i;->a(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 199
    :catch_1
    move-exception v0

    .line 200
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :catch_2
    move-exception v0

    .line 202
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
