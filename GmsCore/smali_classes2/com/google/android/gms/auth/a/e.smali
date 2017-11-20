.class public final Lcom/google/android/gms/auth/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/auth/a/e;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static a([BI)I
    .locals 2

    .prologue
    .line 280
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v0, v0, 0x0

    .line 285
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 286
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 287
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 288
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/auth/a/e;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x0

    move v3, v2

    .line 91
    :goto_0
    const/4 v1, 0x2

    if-ge v3, v1, :cond_1

    .line 94
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    if-lez v3, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :cond_1
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 110
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v2

    .line 111
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 112
    sget-object v2, Lcom/google/android/gms/auth/a/e;->a:[C

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x4

    aget-char v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    sget-object v2, Lcom/google/android/gms/auth/a/e;->a:[C

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 214
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 217
    :goto_0
    if-nez v0, :cond_0

    .line 218
    const-string v0, "GoogleLoginService.Pass"

    const-string v1, "no public key available, using default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v0, "AAAAgMom/1a/v0lblO2Ubrt60J2gcuXSljGFQXgcyZWveWLEwo6prwgi3iJIZdodyhKZQrNWp5nKJ3srRXcUW+F1BD3baEVGcmEgqaLZUNBjm057pKRI16kB0YppeGx5qIQ5QjKzsR8ETQbKLNWgRY0QRNVz34kMJR3P/LgHax/6rmf5AAAAAwEAAQ=="

    .line 222
    :cond_0
    const/4 v1, 0x5

    new-array v3, v1, [B

    .line 223
    invoke-static {v0, v3}, Lcom/google/android/gms/auth/a/e;->a(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object v4

    .line 225
    if-nez v4, :cond_2

    const/4 v0, 0x0

    .line 273
    :goto_1
    return-object v0

    .line 214
    :cond_1
    const-string v0, "google_login_public_key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    .line 228
    :goto_2
    const/4 v0, 0x2

    if-ge v2, v0, :cond_6

    .line 231
    :try_start_0
    const-string v0, "RSA/ECB/OAEPWITHSHA1ANDMGF1PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 233
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 234
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x56

    add-int/lit8 v7, v0, 0x1

    .line 239
    mul-int/lit16 v0, v7, 0x85

    new-array v8, v0, [B

    .line 241
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_4

    .line 242
    const/4 v0, 0x1

    invoke-virtual {v5, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 243
    mul-int/lit8 v9, v1, 0x56

    add-int/lit8 v0, v7, -0x1

    if-ne v1, v0, :cond_3

    array-length v0, v6

    mul-int/lit8 v10, v1, 0x56

    sub-int/2addr v0, v10

    :goto_4
    invoke-virtual {v5, v6, v9, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 247
    const/4 v9, 0x0

    mul-int/lit16 v10, v1, 0x85

    array-length v11, v3

    invoke-static {v3, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    const/4 v9, 0x0

    mul-int/lit16 v10, v1, 0x85

    array-length v11, v3

    add-int/2addr v10, v11

    array-length v11, v0

    invoke-static {v0, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 243
    :cond_3
    const/16 v0, 0x56

    goto :goto_4

    .line 252
    :cond_4
    const/16 v0, 0xa

    invoke-static {v8, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    if-lez v2, :cond_5

    .line 256
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 262
    :catch_1
    move-exception v0

    .line 263
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 264
    :catch_2
    move-exception v0

    .line 265
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 266
    :catch_3
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 268
    :catch_4
    move-exception v0

    .line 269
    const-string v1, "GoogleLoginService.Pass"

    const-string v2, "error encrypting password: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    const/4 v0, 0x0

    goto :goto_1

    .line 271
    :catch_5
    move-exception v0

    .line 272
    const-string v1, "GoogleLoginService.Pass"

    const-string v2, "received bad google_login_public_key: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 229
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 276
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Execution should never reach here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const-string v0, "GoogleLoginService.Pass"

    const-string v1, "attempt to hash null username"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "GoogleLoginService.Pass"

    const-string v1, "attempt to hash \"null\" username"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    if-nez p1, :cond_2

    .line 69
    const-string v0, "GoogleLoginService.Pass"

    const-string v1, "attempt to hash null password"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const-string v0, "GoogleLoginService.Pass"

    const-string v1, "attempt to hash \"null\" password"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/google/android/gms/auth/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v2, 0x0

    const-string v3, "AAAAgMom/1a/v0lblO2Ubrt60J2gcuXSljGFQXgcyZWveWLEwo6prwgi3iJIZdodyhKZQrNWp5nKJ3srRXcUW+F1BD3baEVGcmEgqaLZUNBjm057pKRI16kB0YppeGx5qIQ5QjKzsR8ETQbKLNWgRY0QRNVz34kMJR3P/LgHax/6rmf5AAAAAwEAAQ=="

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/auth/a/e;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    if-nez v1, :cond_4

    .line 80
    :goto_0
    return-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 124
    invoke-static {v2, v0}, Lcom/google/android/gms/auth/a/e;->a([BI)I

    move-result v1

    .line 125
    new-array v3, v1, [B

    .line 126
    invoke-static {v2, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v6, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 129
    add-int/lit8 v3, v1, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/auth/a/e;->a([BI)I

    move-result v3

    .line 130
    new-array v5, v3, [B

    .line 131
    add-int/lit8 v1, v1, 0x8

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    move v1, v0

    .line 135
    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    .line 138
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 141
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, p1, v5

    .line 142
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-static {v0, v5, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v4, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 168
    :goto_1
    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    if-lez v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 166
    :catch_1
    move-exception v0

    .line 167
    const-string v1, "GoogleLoginService.Pass"

    const-string v2, "received bad google_login_public_key: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v0, 0x0

    goto :goto_1

    .line 136
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Execution should never reach here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
