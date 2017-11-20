.class public final Lcom/google/m/b/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    const-string v0, "SecureMessage"

    invoke-static {v0}, Lcom/google/m/b/a/e/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/m/b/a/e/a;->a:[B

    .line 120
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lcom/google/m/b/a/e/a;->b:[B

    return-void
.end method

.method private static a(Lcom/google/m/b/a/e/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ENC:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/m/b/a/e/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/m/b/a/e/c;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SIG:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/m/b/a/e/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/security/Key;)Ljavax/crypto/SecretKey;
    .locals 2

    .prologue
    .line 334
    instance-of v0, p0, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Expected a SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private static a(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3

    .prologue
    .line 378
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/google/m/b/a/e/a;->a:[B

    invoke-static {p1}, Lcom/google/m/b/a/e/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/m/b/a/e/a;->a(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/security/Key;Lcom/google/m/b/a/e/c;[B[B)Z
    .locals 3

    .prologue
    .line 175
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/google/m/b/a/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    instance-of v0, p0, Ljava/security/PublicKey;

    if-nez v0, :cond_2

    .line 180
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Expected a PublicKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    invoke-virtual {p1}, Lcom/google/m/b/a/e/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 183
    check-cast p0, Ljava/security/PublicKey;

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 184
    sget-object v1, Lcom/google/m/b/a/e/a;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 185
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 186
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 188
    :cond_3
    invoke-virtual {p1}, Lcom/google/m/b/a/e/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 189
    invoke-static {p0}, Lcom/google/m/b/a/e/a;->a(Ljava/security/Key;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p1}, Lcom/google/m/b/a/e/a;->a(Lcom/google/m/b/a/e/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/m/b/a/e/a;->a(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 192
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/m/b/a/e/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method static a([B[B)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 310
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 311
    :cond_0
    if-ne p0, p1, :cond_1

    move v1, v3

    .line 320
    :cond_1
    :goto_0
    return v1

    .line 313
    :cond_2
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_1

    move v0, v1

    move v2, v1

    .line 317
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 318
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_3
    if-nez v2, :cond_1

    move v1, v3

    goto :goto_0
.end method

.method static a(Lcom/google/m/b/a/e/b;Ljava/security/SecureRandom;)[B
    .locals 2

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 208
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/m/b/a/e/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 210
    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Lcom/google/m/b/a/e/c;Ljava/security/Key;Ljava/security/SecureRandom;[B)[B
    .locals 3

    .prologue
    .line 133
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/google/m/b/a/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    if-nez p2, :cond_2

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 140
    :cond_2
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Expected a PrivateKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/google/m/b/a/e/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 144
    check-cast p1, Ljava/security/PrivateKey;

    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 149
    :try_start_0
    sget-object v1, Lcom/google/m/b/a/e/a;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 150
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 151
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 156
    :cond_4
    invoke-virtual {p0}, Lcom/google/m/b/a/e/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 158
    invoke-static {p1}, Lcom/google/m/b/a/e/a;->a(Ljava/security/Key;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p0}, Lcom/google/m/b/a/e/a;->a(Lcom/google/m/b/a/e/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/m/b/a/e/a;->a(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 160
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 346
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Ljava/security/Key;Lcom/google/m/b/a/e/b;Ljava/security/SecureRandom;[B[B)[B
    .locals 4

    .prologue
    .line 229
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 232
    :cond_1
    sget-object v0, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    if-ne p1, v0, :cond_2

    .line 233
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot use NONE type here"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/m/b/a/e/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 237
    invoke-static {p0}, Lcom/google/m/b/a/e/a;->a(Ljava/security/Key;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p1}, Lcom/google/m/b/a/e/a;->a(Lcom/google/m/b/a/e/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/m/b/a/e/a;->a(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 239
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 240
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 243
    :catch_1
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 245
    :catch_2
    move-exception v0

    .line 246
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 247
    :catch_3
    move-exception v0

    .line 248
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Ljava/security/Key;Lcom/google/m/b/a/e/b;[B[B)[B
    .locals 4

    .prologue
    .line 267
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 270
    :cond_1
    sget-object v0, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    if-ne p1, v0, :cond_2

    .line 271
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot use NONE type here"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/m/b/a/e/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 275
    invoke-static {p0}, Lcom/google/m/b/a/e/a;->a(Ljava/security/Key;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p1}, Lcom/google/m/b/a/e/a;->a(Lcom/google/m/b/a/e/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/m/b/a/e/a;->a(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 277
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 278
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static a(Ljavax/crypto/SecretKey;[B)[B
    .locals 3

    .prologue
    .line 458
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 460
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 467
    if-nez v1, :cond_0

    .line 468
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Cannot get encoded form of SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 470
    :cond_0
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljavax/crypto/SecretKey;[B[B)[B
    .locals 1

    .prologue
    .line 395
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 398
    :cond_1
    invoke-static {p0, p1}, Lcom/google/m/b/a/e/a;->a(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/m/b/a/e/a;->c([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static a([B)[B
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 289
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 290
    new-array v1, v3, [B

    .line 291
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    return-object v1
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 358
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 359
    invoke-static {p0}, Lcom/google/m/b/a/e/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No security provider initialized yet?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static b([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x14

    .line 428
    if-nez p0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 431
    :cond_0
    array-length v0, p0

    if-lez v0, :cond_1

    array-length v0, p0

    if-le v1, v0, :cond_2

    .line 437
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 439
    :cond_2
    new-array v0, v1, [B

    .line 440
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    return-object v0
.end method

.method static b([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 406
    new-array p1, v3, [B

    .line 417
    :cond_0
    :goto_0
    return-object p1

    .line 408
    :cond_1
    if-eqz p0, :cond_0

    .line 411
    if-nez p1, :cond_2

    move-object p1, p0

    .line 412
    goto :goto_0

    .line 414
    :cond_2
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 415
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 417
    goto :goto_0
.end method

.method private static c([B[B)[B
    .locals 3

    .prologue
    .line 484
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 486
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 494
    sget-object v1, Lcom/google/m/b/a/e/a;->b:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
