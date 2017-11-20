.class public Lcom/google/m/b/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/m/b/a/c/b;

.field private b:Lcom/google/m/b/a/d/g;

.field private c:Ljavax/crypto/SecretKey;

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/google/m/b/a/c/b;->a:Lcom/google/m/b/a/c/b;

    iput-object v0, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    .line 78
    return-void
.end method

.method private static a(Lcom/google/m/b/a/e/p;Ljava/util/List;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 259
    move v6, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 260
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 262
    :try_start_0
    sget-object v2, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 259
    :catch_0
    move-exception v0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 262
    :cond_1
    sget-object v3, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Lcom/google/m/b/a/e/b;[BZ)Lcom/google/m/b/a/e/o;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_1
    return v6

    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a([BLjava/util/List;[B)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 100
    :try_start_0
    invoke-static {p1}, Lcom/google/m/b/a/e/p;->a([B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    .line 101
    invoke-static {v0, p2}, Lcom/google/m/b/a/c/a;->a(Lcom/google/m/b/a/e/p;Ljava/util/List;)I

    move-result v6

    .line 102
    if-gez v6, :cond_1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 103
    :goto_1
    iget-object v3, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    sget-object v4, Lcom/google/m/b/a/c/b;->a:Lcom/google/m/b/a/c/b;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    sget-object v1, Lcom/google/m/b/a/c/b;->d:Lcom/google/m/b/a/c/b;

    iput-object v1, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iput-object v0, p0, Lcom/google/m/b/a/c/a;->c:Ljavax/crypto/SecretKey;

    invoke-static {p1}, Lcom/google/m/b/a/e/p;->a([B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;)Lcom/google/m/b/a/e/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/m/b/a/e/n;->j:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v7

    new-instance v0, Lcom/google/m/b/a/e/h;

    invoke-direct {v0}, Lcom/google/m/b/a/e/h;-><init>()V

    iput-object p1, v0, Lcom/google/m/b/a/e/h;->b:[B

    iget-object v1, p0, Lcom/google/m/b/a/c/a;->c:Ljavax/crypto/SecretKey;

    sget-object v2, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    iget-object v3, p0, Lcom/google/m/b/a/c/a;->c:Ljavax/crypto/SecretKey;

    sget-object v4, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/m/b/a/e/h;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/m/b/a/e/p;->g()[B

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/m/b/a/d/f;->a([B[B)Lcom/google/m/b/a/d/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/c/a;->b:Lcom/google/m/b/a/d/g;

    iget-object v0, p0, Lcom/google/m/b/a/c/a;->b:Lcom/google/m/b/a/d/g;

    invoke-virtual {v0}, Lcom/google/m/b/a/d/g;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/c/a;->d:[B

    sget-object v0, Lcom/google/m/b/a/c/b;->b:Lcom/google/m/b/a/c/b;

    iput-object v0, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    .line 104
    return v6

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    .line 102
    :cond_1
    :try_start_2
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 103
    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lcom/google/protobuf/a/e; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3

    .line 105
    :catch_1
    move-exception v0

    .line 106
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :catch_2
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lcom/google/protobuf/a/e; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3

    .line 107
    :catch_3
    move-exception v0

    .line 108
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()Lcom/google/m/b/a/c/b;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    return-object v0
.end method

.method public a([B)[B
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    sget-object v3, Lcom/google/m/b/a/c/b;->b:Lcom/google/m/b/a/c/b;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    sget-object v0, Lcom/google/m/b/a/c/b;->d:Lcom/google/m/b/a/c/b;

    iput-object v0, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->b:Lcom/google/m/b/a/d/g;

    invoke-virtual {v0, p1}, Lcom/google/m/b/a/d/g;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/e/p;->a([B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/google/m/b/a/c/a;->c:Ljavax/crypto/SecretKey;

    sget-object v2, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    iget-object v3, p0, Lcom/google/m/b/a/c/a;->c:Ljavax/crypto/SecretKey;

    sget-object v4, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    iget-object v5, p0, Lcom/google/m/b/a/c/a;->d:[B

    invoke-static/range {v0 .. v5}, Lcom/google/m/b/a/e/i;->a(Lcom/google/m/b/a/e/p;Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/o;

    move-result-object v0

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/m/b/a/c/a;->d:[B

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/m/b/a/c/a;->c:Ljavax/crypto/SecretKey;

    .line 228
    sget-object v1, Lcom/google/m/b/a/c/b;->c:Lcom/google/m/b/a/c/b;

    iput-object v1, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    .line 229
    iget-object v0, v0, Lcom/google/m/b/a/e/o;->d:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :catch_1
    move-exception v0

    .line 233
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 234
    :catch_2
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()[B
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    sget-object v3, Lcom/google/m/b/a/c/b;->b:Lcom/google/m/b/a/c/b;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->d:[B

    return-object v0

    :cond_0
    move v0, v2

    .line 189
    goto :goto_0
.end method

.method public b([B)[B
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    sget-object v3, Lcom/google/m/b/a/c/b;->c:Lcom/google/m/b/a/c/b;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->b:Lcom/google/m/b/a/d/g;

    invoke-virtual {v0, p1}, Lcom/google/m/b/a/d/g;->b([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 242
    goto :goto_0
.end method

.method public c([B)[B
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    sget-object v3, Lcom/google/m/b/a/c/b;->c:Lcom/google/m/b/a/c/b;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/m/b/a/c/a;->a:Lcom/google/m/b/a/c/b;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/google/m/b/a/c/a;->b:Lcom/google/m/b/a/d/g;

    invoke-virtual {v0, p1}, Lcom/google/m/b/a/d/g;->a([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 248
    goto :goto_0
.end method
