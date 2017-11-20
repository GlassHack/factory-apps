.class public final Lcom/google/android/location/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field private final b:Lcom/google/android/location/p/a/c;

.field private final c:Ljavax/crypto/spec/SecretKeySpec;

.field private final d:Ljavax/crypto/Mac;

.field private final e:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>([B[BLcom/google/android/location/p/a/c;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/f/a;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 104
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/google/android/location/f/a;->b:Lcom/google/android/location/p/a/c;

    .line 108
    if-eqz p2, :cond_1

    .line 109
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 110
    invoke-direct {p0, p2}, Lcom/google/android/location/f/a;->a([B)Ljavax/crypto/Mac;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/location/f/a;->d:Ljavax/crypto/Mac;

    .line 111
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/location/f/a;->a:Z

    .line 119
    :goto_1
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_2
    iput-object v0, p0, Lcom/google/android/location/f/a;->e:Ljavax/crypto/Cipher;

    .line 124
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/android/location/p/a/a;->a()Lcom/google/android/location/p/a/c;

    move-result-object p3

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "AES"

    .line 114
    iput-object v1, p0, Lcom/google/android/location/f/a;->d:Ljavax/crypto/Mac;

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/f/a;->a:Z

    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/f/a;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Unable to create Cipher."

    iget-object v3, v0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    iget-object v0, v0, Lcom/google/android/location/p/a/c;->a:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/google/android/location/p/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x10

    const/4 v1, 0x0

    .line 89
    if-eqz p0, :cond_0

    array-length v0, p0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Key must be 32 bytes."

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lcom/google/android/location/f/a;

    invoke-static {p0, v1, v3}, Lcom/google/android/location/p/h;->a([BII)[B

    move-result-object v1

    invoke-static {p0, v3, v4}, Lcom/google/android/location/p/h;->a([BII)[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/location/f/a;-><init>([B[BLcom/google/android/location/p/a/c;)V

    return-object v0
.end method

.method private a([B)Ljavax/crypto/Mac;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 134
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_2

    .line 136
    :try_start_0
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 137
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HmacSHA1"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :goto_1
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/f/a;->b:Lcom/google/android/location/p/a/c;

    const-string v3, "Unable to find HmacSHA1"

    invoke-virtual {v0, v3}, Lcom/google/android/location/p/a/c;->c(Ljava/lang/String;)V

    .line 134
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/f/a;->b:Lcom/google/android/location/p/a/c;

    const-string v2, "Invalid signing key."

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->c(Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 147
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 150
    goto :goto_1
.end method

.method private a(Ljava/io/InputStream;I)[B
    .locals 4

    .prologue
    .line 264
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    new-array v1, p2, [B

    .line 270
    :goto_0
    if-lez p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 271
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 272
    sub-int/2addr p2, v2

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_1
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/f/a;->b:Lcom/google/android/location/p/a/c;

    const-string v1, "Unable to read from input stream."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a([BLjavax/crypto/spec/IvParameterSpec;I)[B
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/location/f/a;->e:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create cipher."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/f/a;->e:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/google/android/location/f/a;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p3, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/location/f/a;->e:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 298
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to encrypt or decrypt."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x10

    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/f/a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/f/a;->d:Ljavax/crypto/Mac;

    if-nez v1, :cond_0

    .line 208
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create HMAC generator."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 214
    const/4 v1, 0x4

    .line 216
    const/high16 v2, 0x200000

    if-gt v3, v2, :cond_1

    if-gez v3, :cond_2

    .line 217
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid data length or too long: %d bytes."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/location/f/a;->a:Z

    if-eqz v2, :cond_a

    .line 222
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/f/a;->a(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 223
    array-length v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 224
    if-eqz v1, :cond_3

    array-length v2, v1

    if-eq v2, v4, :cond_4

    .line 225
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to read HMAC."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_4
    const/16 v2, 0x10

    invoke-direct {p0, p1, v2}, Lcom/google/android/location/f/a;->a(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 230
    array-length v2, v4

    add-int/2addr v2, v0

    .line 231
    if-eqz v4, :cond_5

    array-length v0, v4

    if-eq v0, v5, :cond_6

    .line 232
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to read IV."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_6
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 238
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/google/android/location/f/a;->a(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 239
    add-int/2addr v2, v3

    .line 240
    if-eqz v4, :cond_7

    array-length v5, v4

    if-eq v5, v3, :cond_8

    .line 241
    :cond_7
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/location/f/a;->b:Lcom/google/android/location/p/a/c;

    const-string v5, "Unable to read cipher text."

    invoke-virtual {v3, v5}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 245
    :cond_8
    iget-boolean v3, p0, Lcom/google/android/location/f/a;->a:Z

    if-eqz v3, :cond_9

    .line 246
    iget-object v3, p0, Lcom/google/android/location/f/a;->d:Ljavax/crypto/Mac;

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 247
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    .line 248
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HMAC does not match."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_9
    const/4 v1, 0x2

    invoke-direct {p0, v4, v0, v1}, Lcom/google/android/location/f/a;->a([BLjavax/crypto/spec/IvParameterSpec;I)[B

    move-result-object v0

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_a
    move v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/io/DataOutputStream;[B)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 161
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/f/a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/f/a;->d:Ljavax/crypto/Mac;

    if-nez v1, :cond_0

    .line 162
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create HMAC, data can not be signed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    array-length v1, p2

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_2

    .line 166
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid data: data is empty or too long."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/location/f/a;->a:Z

    if-eqz v1, :cond_5

    .line 172
    const/16 v1, 0x10

    new-array v2, v1, [B

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 174
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, p2, v1, v2}, Lcom/google/android/location/f/a;->a([BLjavax/crypto/spec/IvParameterSpec;I)[B

    move-result-object v2

    .line 176
    iget-boolean v3, p0, Lcom/google/android/location/f/a;->a:Z

    if-eqz v3, :cond_3

    .line 177
    iget-object v0, p0, Lcom/google/android/location/f/a;->d:Ljavax/crypto/Mac;

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 182
    :cond_3
    array-length v3, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 183
    iget-boolean v3, p0, Lcom/google/android/location/f/a;->a:Z

    if-eqz v3, :cond_4

    .line 184
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 185
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 187
    :cond_4
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method
