.class public final Lcom/google/m/b/a/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field private final b:Ljava/security/PublicKey;

.field private final c:Ljavax/crypto/SecretKey;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/m/b/a/d/h;Ljavax/crypto/SecretKey;[B)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iget-object v0, p1, Lcom/google/m/b/a/d/h;->a:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/d/g;->b:Ljava/security/PublicKey;

    .line 181
    iput-object p2, p0, Lcom/google/m/b/a/d/g;->c:Ljavax/crypto/SecretKey;

    .line 182
    iput-object p3, p0, Lcom/google/m/b/a/d/g;->a:[B

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/m/b/a/d/g;->d:I

    .line 184
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/m/b/a/d/h;Ljavax/crypto/SecretKey;[BB)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/google/m/b/a/d/g;-><init>(Lcom/google/m/b/a/d/h;Ljavax/crypto/SecretKey;[B)V

    return-void
.end method

.method private c([B)Lcom/google/m/b/a/d/c;
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/google/m/b/a/d/c;

    invoke-direct {v0}, Lcom/google/m/b/a/d/c;-><init>()V

    .line 304
    iget v1, p0, Lcom/google/m/b/a/d/g;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/m/b/a/d/g;->d:I

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/d/c;->a(I)Lcom/google/m/b/a/d/c;

    .line 305
    invoke-static {p1}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/d/c;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/c;

    .line 306
    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/google/m/b/a/d/g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/m/b/a/d/g;->d:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[B
    .locals 4

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/google/m/b/a/d/g;->a:[B

    invoke-direct {p0, v0}, Lcom/google/m/b/a/d/g;->c([B)Lcom/google/m/b/a/d/c;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/google/m/b/a/d/t;

    sget-object v2, Lcom/google/m/b/a/d/u;->k:Lcom/google/m/b/a/d/u;

    invoke-virtual {v0}, Lcom/google/m/b/a/d/c;->g()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/m/b/a/d/t;-><init>(Lcom/google/m/b/a/d/u;[B)V

    iget-object v0, p0, Lcom/google/m/b/a/d/g;->c:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lcom/google/m/b/a/d/g;->b:Ljava/security/PublicKey;

    new-instance v3, Lcom/google/m/b/a/d/e;

    invoke-direct {v3}, Lcom/google/m/b/a/d/e;-><init>()V

    invoke-static {v2}, Lcom/google/m/b/a/e/d;->a(Ljava/security/PublicKey;)Lcom/google/m/b/a/e/m;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/m/b/a/d/e;->a(Lcom/google/m/b/a/e/m;)Lcom/google/m/b/a/d/e;

    invoke-virtual {v3}, Lcom/google/m/b/a/d/e;->g()[B

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/m/b/a/d/a;->a(Lcom/google/m/b/a/d/t;Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 200
    :catch_1
    move-exception v0

    .line 201
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a([B)[B
    .locals 3

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/google/m/b/a/d/g;->c([B)Lcom/google/m/b/a/d/c;

    move-result-object v0

    .line 230
    :try_start_0
    new-instance v1, Lcom/google/m/b/a/d/t;

    sget-object v2, Lcom/google/m/b/a/d/u;->l:Lcom/google/m/b/a/d/u;

    invoke-virtual {v0}, Lcom/google/m/b/a/d/c;->g()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/m/b/a/d/t;-><init>(Lcom/google/m/b/a/d/u;[B)V

    iget-object v0, p0, Lcom/google/m/b/a/d/g;->c:Ljavax/crypto/SecretKey;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/m/b/a/d/a;->a(Lcom/google/m/b/a/d/t;Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 237
    :catch_1
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b([B)[B
    .locals 3

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/google/m/b/a/d/g;->c:Ljavax/crypto/SecretKey;

    invoke-static {p1, v0}, Lcom/google/m/b/a/d/a;->a([BLjavax/crypto/SecretKey;)Lcom/google/m/b/a/d/t;

    move-result-object v0

    .line 270
    sget-object v1, Lcom/google/m/b/a/d/u;->l:Lcom/google/m/b/a/d/u;

    iget-object v2, v0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/d/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "wrong message type in device-to-device message"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 274
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/google/m/b/a/d/t;->b:[B

    invoke-static {v0}, Lcom/google/m/b/a/d/c;->a([B)Lcom/google/m/b/a/d/c;

    move-result-object v0

    .line 275
    iget v1, v0, Lcom/google/m/b/a/d/c;->b:I

    invoke-virtual {p0, v1}, Lcom/google/m/b/a/d/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Incorrect sequence number"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_2

    .line 282
    :catch_1
    move-exception v0

    .line 284
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 279
    :cond_1
    :try_start_2
    iget-object v0, v0, Lcom/google/m/b/a/d/c;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/protobuf/a/e; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    return-object v0

    .line 285
    :catch_2
    move-exception v0

    .line 286
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
