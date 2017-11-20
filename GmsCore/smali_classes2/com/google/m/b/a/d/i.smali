.class public final Lcom/google/m/b/a/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/m/b/a/e/c;

.field private static final b:Lcom/google/m/b/a/e/b;

.field private static final c:Lcom/google/m/b/a/e/c;

.field private static final d:Lcom/google/m/b/a/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    sput-object v0, Lcom/google/m/b/a/d/i;->a:Lcom/google/m/b/a/e/c;

    .line 43
    sget-object v0, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    sput-object v0, Lcom/google/m/b/a/d/i;->b:Lcom/google/m/b/a/e/b;

    .line 48
    sget-object v0, Lcom/google/m/b/a/e/c;->b:Lcom/google/m/b/a/e/c;

    sput-object v0, Lcom/google/m/b/a/d/i;->c:Lcom/google/m/b/a/e/c;

    .line 54
    sget-object v0, Lcom/google/m/b/a/e/c;->c:Lcom/google/m/b/a/e/c;

    sput-object v0, Lcom/google/m/b/a/d/i;->d:Lcom/google/m/b/a/e/c;

    return-void
.end method

.method public static a(Z)Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 93
    if-eqz p0, :cond_0

    .line 94
    invoke-static {}, Lcom/google/m/b/a/e/d;->c()Ljava/security/KeyPair;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/m/b/a/e/d;->a()Ljava/security/KeyPair;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    .locals 2

    .prologue
    .line 73
    const-string v0, "ECDH"

    .line 74
    invoke-static {p0}, Lcom/google/m/b/a/d/j;->b(Ljava/security/PrivateKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v0, "DH"

    .line 79
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 86
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/google/m/b/a/d/i;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/d/j;->a([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/google/m/b/a/d/n;Ljavax/crypto/SecretKey;Ljava/security/PrivateKey;)[B
    .locals 6

    .prologue
    .line 124
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/m/b/a/d/n;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/m/b/a/d/i;->a(Ljavax/crypto/SecretKey;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DeviceMasterKeyHash not set correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    invoke-static {p2}, Lcom/google/m/b/a/d/j;->b(Ljava/security/PrivateKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/m/b/a/d/i;->d:Lcom/google/m/b/a/e/c;

    .line 136
    :goto_0
    new-instance v1, Lcom/google/m/b/a/e/h;

    invoke-direct {v1}, Lcom/google/m/b/a/e/h;-><init>()V

    iget-object v2, p0, Lcom/google/m/b/a/d/n;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {v2}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/e/h;->b([B)Lcom/google/m/b/a/e/h;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/m/b/a/d/n;->g()[B

    move-result-object v2

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    if-nez v2, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_4
    sget-object v0, Lcom/google/m/b/a/d/i;->c:Lcom/google/m/b/a/e/c;

    goto :goto_0

    .line 136
    :cond_5
    iget-object v3, v1, Lcom/google/m/b/a/e/h;->a:Lcom/google/protobuf/a/a;

    if-eqz v3, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set decryptionKeyId for a cleartext message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v3, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/m/b/a/e/h;->a(Lcom/google/m/b/a/e/c;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/n;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/m/b/a/e/h;->a(Lcom/google/m/b/a/e/n;[B)[B

    move-result-object v2

    iget-object v3, v1, Lcom/google/m/b/a/e/h;->b:[B

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/m/b/a/e/h;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;[B[B)Lcom/google/m/b/a/e/p;

    move-result-object v1

    .line 141
    new-instance v0, Lcom/google/m/b/a/e/h;

    invoke-direct {v0}, Lcom/google/m/b/a/e/h;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/google/m/b/a/e/h;->b([B)Lcom/google/m/b/a/e/h;

    move-result-object v0

    new-instance v2, Lcom/google/m/b/a/d/o;

    invoke-direct {v2}, Lcom/google/m/b/a/d/o;-><init>()V

    sget-object v3, Lcom/google/m/b/a/d/u;->a:Lcom/google/m/b/a/d/u;

    invoke-virtual {v3}, Lcom/google/m/b/a/d/u;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/m/b/a/d/o;->a(I)Lcom/google/m/b/a/d/o;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/m/b/a/d/o;->b(I)Lcom/google/m/b/a/d/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/m/b/a/d/o;->g()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/m/b/a/e/h;->a([B)Lcom/google/m/b/a/e/h;

    move-result-object v0

    sget-object v2, Lcom/google/m/b/a/d/i;->a:Lcom/google/m/b/a/e/c;

    sget-object v4, Lcom/google/m/b/a/d/i;->b:Lcom/google/m/b/a/e/b;

    invoke-virtual {v1}, Lcom/google/m/b/a/e/p;->g()[B

    move-result-object v5

    move-object v1, p1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/m/b/a/e/h;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/google/m/b/a/e/p;->g()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljavax/crypto/SecretKey;)[B
    .locals 1

    .prologue
    .line 103
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/d/i;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([B)[B
    .locals 2

    .prologue
    .line 212
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
