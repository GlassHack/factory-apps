.class public final Lcom/google/android/youtube/core/converter/http/aj;
.super Lcom/google/android/youtube/core/converter/http/be;
.source "SourceFile"


# instance fields
.field private final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/be;-><init>()V

    .line 35
    const-string v0, "developerSecret cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 34
    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/aj;->b:[B

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v2, 0x0

    .line 54
    :try_start_0
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/aj;->b:[B

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 66
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 69
    :try_start_1
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 71
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 72
    array-length v0, v1

    if-le v0, v5, :cond_0

    .line 73
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 74
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_4

    .line 77
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v0, v1

    .line 77
    goto :goto_0

    .line 79
    :catch_2
    move-exception v0

    .line 80
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :catch_3
    move-exception v0

    .line 82
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :catch_4
    move-exception v0

    .line 84
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/c;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 43
    const-string v1, "DeviceId"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "DeviceKey"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/converter/http/aj;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    new-instance v2, Lcom/google/android/youtube/core/model/c;

    invoke-direct {v2, v1, v0}, Lcom/google/android/youtube/core/model/c;-><init>(Ljava/lang/String;[B)V

    return-object v2

    .line 49
    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v1, "invalid device registration response"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/aj;->b(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/c;

    move-result-object v0

    return-object v0
.end method
