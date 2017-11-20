.class public final Lcom/google/android/youtube/core/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:I

.field private final b:Ljava/lang/String;

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "deviceId cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    const-string v0, "deviceKey cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    array-length v0, p2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 43
    :goto_0
    const-string v1, "deviceKey must be 20 bytes"

    .line 42
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lcom/google/android/youtube/core/model/c;->b:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/google/android/youtube/core/model/c;->c:[B

    .line 47
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/model/c;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/model/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/android/youtube/core/model/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/android/youtube/core/model/c;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_key"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 83
    new-instance v0, Lcom/google/android/youtube/core/model/c;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/c;-><init>(Ljava/lang/String;[B)V

    .line 85
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 62
    :try_start_0
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "error signing request"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    const-string v1, "error signing request"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Lcom/google/android/youtube/core/model/c;Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 90
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/google/android/youtube/core/model/c;->a(Lcom/google/android/youtube/core/model/c;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/model/c;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/model/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device_key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/c;->c:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 97
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 99
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/c;->c:[B

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/c;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "device-id=\"%s\", data=\"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/core/model/c;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    instance-of v1, p1, Lcom/google/android/youtube/core/model/c;

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    check-cast p1, Lcom/google/android/youtube/core/model/c;

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/core/model/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/c;->c:[B

    iget-object v2, p1, Lcom/google/android/youtube/core/model/c;->c:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/youtube/core/model/c;->a:I

    .line 113
    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/c;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    iput v0, p0, Lcom/google/android/youtube/core/model/c;->a:I

    .line 119
    :cond_0
    return v0
.end method
