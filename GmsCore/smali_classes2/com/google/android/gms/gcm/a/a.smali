.class public final Lcom/google/android/gms/gcm/a/a;
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

    .line 29
    const-string v0, "SecureMessage"

    invoke-static {v0}, Lcom/google/android/gms/gcm/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/a/a;->a:[B

    .line 30
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lcom/google/android/gms/gcm/a/a;->b:[B

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 175
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 176
    invoke-static {p0}, Lcom/google/android/gms/gcm/a/a;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No security provider initialized yet?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljavax/crypto/SecretKey;[B)[B
    .locals 3

    .prologue
    .line 130
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 132
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 139
    if-nez v1, :cond_0

    .line 140
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Cannot get encoded form of SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 142
    :cond_0
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljavax/crypto/SecretKey;[B[B)[B
    .locals 3

    .prologue
    .line 38
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 39
    const/4 v1, 0x2

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 40
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static a([B[B)[B
    .locals 3

    .prologue
    .line 156
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 158
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 166
    sget-object v1, Lcom/google/android/gms/gcm/a/a;->b:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static b(Ljavax/crypto/SecretKey;[B[B)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 60
    array-length v0, p2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    const-string v0, "hmac-sha-signature"

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/google/android/gms/gcm/a/a;->a:[B

    invoke-static {v0}, Lcom/google/android/gms/gcm/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz p0, :cond_2

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    invoke-static {p0, v3}, Lcom/google/android/gms/gcm/a/a;->a(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/gcm/a/a;->a([B[B)[B

    move-result-object v0

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 64
    array-length v0, p2

    array-length v2, v3

    if-gt v0, v2, :cond_0

    move v0, v1

    move v2, v1

    .line 68
    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_4

    .line 69
    aget-byte v4, v3, v0

    aget-byte v5, p2, v0

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_4
    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 184
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
