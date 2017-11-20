.class public final Lcom/google/android/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/a/g;

.field private final b:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/google/android/a/g;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/a/i;->a:Lcom/google/android/a/g;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/i;->b:Ljava/security/SecureRandom;

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/i;->a:Lcom/google/android/a/g;

    invoke-interface {v0, p1}, Lcom/google/android/a/g;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 137
    array-length v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 138
    new-instance v0, Lcom/google/android/a/j;

    invoke-direct {v0, p0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lcom/google/android/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :cond_0
    const/4 v1, 0x4

    const/16 v2, 0x10

    .line 143
    :try_start_1
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 144
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 145
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 148
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-byte v2, v1, v0

    xor-int/lit8 v2, v2, 0x44

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-object v1
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 6

    .prologue
    const/16 v2, 0x10

    .line 212
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 213
    new-instance v0, Lcom/google/android/a/j;

    invoke-direct {v0, p0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;)V

    throw v0

    .line 218
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/i;->a:Lcom/google/android/a/g;

    invoke-interface {v0, p2}, Lcom/google/android/a/g;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 219
    array-length v1, v0

    if-gt v1, v2, :cond_1

    .line 220
    new-instance v0, Lcom/google/android/a/j;

    invoke-direct {v0, p0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .line 238
    :catch_0
    move-exception v0

    .line 239
    new-instance v1, Lcom/google/android/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;Ljava/lang/Throwable;)V

    throw v1

    .line 222
    :cond_1
    :try_start_1
    array-length v1, v0

    .line 223
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 226
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 227
    array-length v0, v0

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    .line 228
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 231
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 232
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 233
    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 237
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    return-object v0

    .line 240
    :catch_1
    move-exception v0

    .line 241
    new-instance v1, Lcom/google/android/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;Ljava/lang/Throwable;)V

    throw v1

    .line 242
    :catch_2
    move-exception v0

    .line 243
    new-instance v1, Lcom/google/android/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;Ljava/lang/Throwable;)V

    throw v1

    .line 244
    :catch_3
    move-exception v0

    .line 245
    new-instance v1, Lcom/google/android/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;Ljava/lang/Throwable;)V

    throw v1

    .line 246
    :catch_4
    move-exception v0

    .line 247
    new-instance v1, Lcom/google/android/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;Ljava/lang/Throwable;)V

    throw v1

    .line 248
    :catch_5
    move-exception v0

    .line 249
    new-instance v1, Lcom/google/android/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :catch_6
    move-exception v0

    .line 252
    new-instance v1, Lcom/google/android/a/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/j;-><init>(Lcom/google/android/a/i;Ljava/lang/Throwable;)V

    throw v1
.end method
