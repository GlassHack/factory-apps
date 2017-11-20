.class public final Lcom/google/android/gms/auth/trustagent/trustlet/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:[B


# instance fields
.field private final b:Landroid/nfc/tech/IsoDep;

.field private final c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        -0x50t
        0x0t
        0x2t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->c:Ljava/util/Random;

    .line 55
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->b:Landroid/nfc/tech/IsoDep;

    .line 56
    return-void
.end method

.method private static a([B[B)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 340
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 341
    :cond_0
    if-ne p0, p1, :cond_1

    move v1, v3

    .line 350
    :cond_1
    :goto_0
    return v1

    .line 343
    :cond_2
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_1

    move v0, v1

    move v2, v1

    .line 347
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 348
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    :cond_3
    if-nez v2, :cond_1

    move v1, v3

    goto :goto_0
.end method

.method private a(BB[B)[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 233
    array-length v0, p3

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 234
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Payload too long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    array-length v0, p3

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    .line 238
    aput-byte v8, v0, v8

    .line 239
    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 240
    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 241
    const/4 v1, 0x4

    array-length v2, p3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 242
    const/4 v1, 0x5

    array-length v2, p3

    invoke-static {p3, v8, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    const-string v1, "Coffee - Precious"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APDU to Precious ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 247
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->b:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v1, v0}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v0

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 249
    const-string v1, "Coffee - Precious"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "APDU from Precious ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RTT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 254
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 257
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 259
    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected APDU response code: 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ae;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/ae;

    const-string v1, "Unsupported instruction"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ae;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/ae;

    const-string v1, "Wrong length"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ae;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :sswitch_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v8, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x6700 -> :sswitch_1
        0x6d00 -> :sswitch_0
        0x9000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Ljava/math/BigInteger;)[B
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 317
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    .line 318
    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 320
    :cond_0
    return-object v0
.end method

.method private static varargs a([[B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 325
    .line 326
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 327
    array-length v4, v4

    add-int/2addr v2, v4

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    new-array v3, v2, [B

    .line 332
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 333
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    array-length v5, v5

    add-int/2addr v2, v5

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    :cond_1
    return-object v3
.end method


# virtual methods
.method public final a(Z)Z
    .locals 7

    .prologue
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->b:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-string v2, "Coffee - Precious"

    const-string v3, "Connecting..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->b:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 64
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->b:Landroid/nfc/tech/IsoDep;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    .line 69
    const/16 v2, -0x5c

    const/4 v3, 0x4

    :try_start_0
    sget-object v4, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a:[B

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(BB[B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 76
    const-string v4, "Coffee - Precious"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connected in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms. I/O timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->b:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->getTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([B)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x10

    .line 197
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key must be 32 bytes long, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 202
    new-array v1, v5, [B

    .line 203
    array-length v2, v1

    invoke-static {p1, v5, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    new-array v2, v5, [B

    .line 206
    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->c:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 208
    const/16 v3, 0x41

    const/4 v4, 0x2

    new-array v4, v4, [[B

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a([[B)[B

    move-result-object v0

    invoke-direct {p0, v3, v6, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(BB[B)[B

    move-result-object v0

    .line 211
    array-length v3, v0

    if-eq v3, v5, :cond_1

    .line 212
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected length of reply: expected: 16, actual: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_1
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 219
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 220
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 221
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 222
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 227
    const-string v2, "Coffee - Precious"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected MAC: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v2, "Coffee - Precious"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Actual MAC:   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a([B[B)Z

    move-result v0

    return v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to compute MAC of reply"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()[B
    .locals 13

    .prologue
    const/4 v7, 0x4

    const/4 v12, 0x2

    const/16 v6, 0x10

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 105
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 107
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :try_start_1
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    const-class v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECPublicKeySpec;

    .line 118
    invoke-virtual {v0}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    .line 119
    invoke-virtual {v0}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 124
    const/16 v3, 0x40

    const/4 v4, 0x3

    new-array v4, v4, [[B

    new-array v5, v10, [B

    aput-byte v7, v5, v11

    aput-object v5, v4, v11

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(Ljava/math/BigInteger;)[B

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(Ljava/math/BigInteger;)[B

    move-result-object v2

    aput-object v2, v4, v12

    invoke-static {v4}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a([[B)[B

    move-result-object v2

    invoke-direct {p0, v3, v11, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(BB[B)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 127
    const/16 v3, 0x41

    new-array v3, v3, [B

    .line 128
    new-array v4, v6, [B

    .line 129
    new-array v5, v6, [B

    .line 130
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Reply too long: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to generate ECDH key pair"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain ECDH public key point"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :cond_0
    :try_start_2
    array-length v2, v3

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoded form is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    :catch_2
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decode peer ECDH public key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    aget-byte v2, v3, v2

    if-eq v2, v7, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported mode: 0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-static {v3, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v9, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v7, v8, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v6, v7}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 141
    const-string v3, "EC"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    new-instance v6, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v6, v2, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 149
    :try_start_4
    const-string v2, "ECDH"

    invoke-static {v2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v2

    .line 150
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 152
    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    .line 159
    :try_start_5
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 161
    array-length v2, v0

    const/16 v3, 0x20

    if-ge v2, v3, :cond_4

    .line 162
    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x20

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 164
    :cond_4
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 165
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 166
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    .line 173
    :try_start_6
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 175
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 176
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 177
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    .line 182
    const-string v2, "Coffee - Precious"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Expected MAC: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v2, "Coffee - Precious"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Actual MAC:   "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {v1, v5}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    .line 186
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAC of pairing reply did not verify"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :catch_3
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to generate shared secret using ECDH"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :catch_4
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to compute secret key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 178
    :catch_5
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to compute MAC of reply"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 189
    :cond_5
    new-array v1, v12, [[B

    aput-object v4, v1, v11

    aput-object v0, v1, v10

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "Coffee - Precious"

    const-string v1, "Closing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->b:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V

    .line 89
    const-string v0, "Coffee - Precious"

    const-string v1, "Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
