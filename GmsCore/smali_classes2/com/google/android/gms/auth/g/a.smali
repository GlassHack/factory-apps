.class public final Lcom/google/android/gms/auth/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()[B
    .locals 3

    .prologue
    .line 33
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 34
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 35
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to generate AES key."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([B[B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 48
    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 49
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 55
    array-length v4, p0

    if-lt v4, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/d/a/x;->a(Z)V

    .line 57
    const/4 v0, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v1, v0, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    array-length v0, p0

    sub-int/2addr v0, v3

    invoke-virtual {v1, p0, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to decrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to decrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :catch_2
    move-exception v0

    .line 65
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to decrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    :catch_3
    move-exception v0

    .line 67
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to decrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :catch_4
    move-exception v0

    .line 69
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to decrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :catch_5
    move-exception v0

    .line 71
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to decrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b([B[B)[B
    .locals 6

    .prologue
    .line 81
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 82
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 83
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 86
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 90
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 91
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 95
    return-object v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to encrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to encrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to encrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 102
    :catch_3
    move-exception v0

    .line 103
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to encrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :catch_4
    move-exception v0

    .line 105
    new-instance v1, Lcom/google/android/gms/auth/q;

    const-string v2, "Failed to encrypt the data."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
