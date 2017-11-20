.class public final Lcom/google/m/b/a/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/m/b/a/d/j;->a:Z

    return-void
.end method

.method public static a([BZ)Ljava/security/PrivateKey;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/google/m/b/a/d/j;->c()Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/m/b/a/d/j;->b()Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Ljavax/crypto/SecretKey;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/google/m/b/a/e/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/m/b/a/d/j;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/security/PrivateKey;)[B
    .locals 1

    .prologue
    .line 46
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/security/PublicKey;)[B
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/m/b/a/e/d;->a(Ljava/security/PublicKey;)Lcom/google/m/b/a/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/m/b/a/e/m;->g()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljavax/crypto/SecretKey;)[B
    .locals 1

    .prologue
    .line 34
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/security/KeyFactory;
    .locals 2

    .prologue
    .line 129
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b([B)Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/m/b/a/d/j;->d([B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/security/PrivateKey;)Z
    .locals 1

    .prologue
    .line 95
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/security/PublicKey;)[B
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/google/m/b/a/e/d;->a(Ljava/security/PublicKey;)Lcom/google/m/b/a/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/m/b/a/e/m;->g()[B

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/security/KeyFactory;
    .locals 2

    .prologue
    .line 137
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c([B)Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/m/b/a/d/j;->d([B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private static d([B)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/google/m/b/a/e/m;->a([B)Lcom/google/m/b/a/e/m;

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/e/d;->a(Lcom/google/m/b/a/e/m;)Ljava/security/PublicKey;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Unable to parse GenericPublicKey"

    invoke-direct {v1, v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Unable to parse GenericPublicKey"

    invoke-direct {v1, v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
