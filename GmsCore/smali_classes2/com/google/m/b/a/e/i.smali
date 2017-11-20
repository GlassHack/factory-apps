.class public final Lcom/google/m/b/a/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/m/b/a/e/p;)Lcom/google/m/b/a/e/n;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/m/b/a/e/p;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/e/o;->a([B)Lcom/google/m/b/a/e/o;

    move-result-object v0

    iget-object v0, v0, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/protobuf/a/e;

    const-string v1, "Missing header"

    invoke-direct {v0, v1}, Lcom/google/protobuf/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-boolean v1, v0, Lcom/google/m/b/a/e/n;->a:Z

    if-nez v1, :cond_1

    .line 48
    new-instance v0, Lcom/google/protobuf/a/e;

    const-string v1, "Missing header field(s)"

    invoke-direct {v0, v1}, Lcom/google/protobuf/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    :try_start_0
    iget v1, v0, Lcom/google/m/b/a/e/n;->b:I

    invoke-static {v1}, Lcom/google/m/b/a/e/c;->a(I)Lcom/google/m/b/a/e/c;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-boolean v1, v0, Lcom/google/m/b/a/e/n;->c:Z

    if-eqz v1, :cond_2

    .line 59
    :try_start_1
    iget v1, v0, Lcom/google/m/b/a/e/n;->d:I

    invoke-static {v1}, Lcom/google/m/b/a/e/b;->a(I)Lcom/google/m/b/a/e/b;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :cond_2
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/protobuf/a/e;

    const-string v1, "Corrupt/unsupported SignatureScheme"

    invoke-direct {v0, v1}, Lcom/google/protobuf/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/protobuf/a/e;

    const-string v1, "Corrupt/unsupported EncryptionScheme"

    invoke-direct {v0, v1}, Lcom/google/protobuf/a/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Lcom/google/m/b/a/e/b;[BZ)Lcom/google/m/b/a/e/o;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/google/m/b/a/e/p;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v3

    .line 208
    iget-object v0, p0, Lcom/google/m/b/a/e/p;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    .line 209
    if-eqz p5, :cond_1

    .line 212
    :goto_0
    invoke-static {p1, p2, v3, v0}, Lcom/google/m/b/a/e/a;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;[B[B)Z

    move-result v4

    .line 213
    const/4 v0, 0x0

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/google/m/b/a/e/p;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v3}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/m/b/a/e/o;->a([B)Lcom/google/m/b/a/e/o;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 217
    :try_start_1
    iget-boolean v0, v3, Lcom/google/m/b/a/e/o;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v3, Lcom/google/m/b/a/e/o;->c:Z

    if-nez v0, :cond_2

    .line 218
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature failed verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_1
    move-object v3, v0

    .line 234
    :goto_2
    if-eqz v2, :cond_b

    .line 235
    return-object v3

    .line 209
    :cond_1
    invoke-static {v0, p4}, Lcom/google/m/b/a/e/a;->b([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_2
    :try_start_2
    iget-object v0, v3, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    iget v0, v0, Lcom/google/m/b/a/e/n;->b:I

    invoke-virtual {p2}, Lcom/google/m/b/a/e/c;->a()I

    move-result v5

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_3
    and-int/2addr v4, v0

    .line 221
    iget-object v0, v3, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    iget v0, v0, Lcom/google/m/b/a/e/n;->d:I

    invoke-virtual {p3}, Lcom/google/m/b/a/e/b;->a()I

    move-result v5

    if-ne v0, v5, :cond_6

    move v0, v1

    :goto_4
    and-int/2addr v4, v0

    .line 223
    sget-object v0, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    if-ne p3, v0, :cond_3

    iget-object v0, v3, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    iget-boolean v0, v0, Lcom/google/m/b/a/e/n;->g:Z

    if-nez v0, :cond_7

    :cond_3
    move v0, v1

    :goto_5
    and-int/2addr v4, v0

    .line 226
    sget-object v0, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    if-eq p3, v0, :cond_4

    invoke-virtual {p2}, Lcom/google/m/b/a/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    iget-boolean v0, v0, Lcom/google/m/b/a/e/n;->e:Z

    if-eqz v0, :cond_8

    :cond_4
    move v0, v1

    :goto_6
    and-int/2addr v4, v0

    .line 228
    if-nez p4, :cond_9

    move v0, v2

    .line 229
    :goto_7
    iget-object v5, v3, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    iget v5, v5, Lcom/google/m/b/a/e/n;->k:I

    if-ne v5, v0, :cond_a

    move v0, v1

    :goto_8
    and-int v2, v4, v0

    goto :goto_2

    :cond_5
    move v0, v2

    .line 220
    goto :goto_3

    :cond_6
    move v0, v2

    .line 221
    goto :goto_4

    :cond_7
    move v0, v2

    .line 223
    goto :goto_5

    :cond_8
    move v0, v2

    .line 226
    goto :goto_6

    .line 228
    :cond_9
    array-length v0, p4
    :try_end_2
    .catch Lcom/google/protobuf/a/e; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :cond_a
    move v0, v2

    .line 229
    goto :goto_8

    .line 237
    :cond_b
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Signature failed verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;)Lcom/google/m/b/a/e/o;
    .locals 6

    .prologue
    .line 118
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/o;
    .locals 7

    .prologue
    const/16 v6, 0x14

    .line 138
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 145
    :cond_1
    sget-object v0, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    if-ne p4, v0, :cond_2

    .line 146
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Not a signcrypted message"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/m/b/a/e/h;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 152
    invoke-static/range {v0 .. v5}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Lcom/google/m/b/a/e/b;[BZ)Lcom/google/m/b/a/e/o;

    move-result-object v1

    .line 162
    :try_start_0
    iget-object v0, v1, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    iget-object v0, v0, Lcom/google/m/b/a/e/n;->i:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    iget-object v2, v1, Lcom/google/m/b/a/e/o;->d:Lcom/google/protobuf/a/a;

    invoke-virtual {v2}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v2

    invoke-static {p3, p4, v0, v2}, Lcom/google/m/b/a/e/a;->a(Ljava/security/Key;Lcom/google/m/b/a/e/b;[B[B)[B
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 173
    if-nez v5, :cond_3

    .line 175
    invoke-static {v2}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/e/o;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/o;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0}, Ljava/security/SignatureException;-><init>()V

    throw v0

    .line 168
    :catch_1
    move-exception v0

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0}, Ljava/security/SignatureException;-><init>()V

    throw v0

    .line 170
    :catch_2
    move-exception v0

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0}, Ljava/security/SignatureException;-><init>()V

    throw v0

    .line 180
    :cond_3
    const/4 v0, 0x0

    .line 181
    iget-object v3, v1, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    invoke-virtual {v3}, Lcom/google/m/b/a/e/n;->g()[B

    move-result-object v3

    invoke-static {v3, p5}, Lcom/google/m/b/a/e/a;->b([B[B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/m/b/a/e/a;->a([B)[B

    move-result-object v3

    .line 183
    array-length v4, v2

    if-lt v4, v6, :cond_4

    .line 184
    invoke-static {v2}, Lcom/google/m/b/a/e/a;->b([B)[B

    move-result-object v4

    .line 185
    invoke-static {v4, v3}, Lcom/google/m/b/a/e/a;->a([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    const/4 v0, 0x1

    .line 189
    :cond_4
    if-nez v0, :cond_5

    .line 190
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0}, Ljava/security/SignatureException;-><init>()V

    throw v0

    .line 193
    :cond_5
    array-length v0, v2

    add-int/lit8 v0, v0, -0x14

    .line 194
    invoke-static {v2, v6, v0}, Lcom/google/protobuf/a/a;->a([BII)Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/e/o;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/o;

    move-result-object v0

    goto :goto_0
.end method
