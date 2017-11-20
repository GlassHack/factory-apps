.class public final Lcom/google/m/b/a/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/a/a;

.field public b:[B

.field private c:Lcom/google/protobuf/a/a;

.field private d:Lcom/google/protobuf/a/a;

.field private e:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/google/m/b/a/e/h;->c:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/h;->d:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/h;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/h;->b:[B

    .line 39
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/m/b/a/e/h;->e:Ljava/security/SecureRandom;

    .line 40
    return-void
.end method

.method static a(Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;)Z
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/google/m/b/a/e/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/m/b/a/e/n;[B)[B
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lcom/google/m/b/a/e/o;

    invoke-direct {v0}, Lcom/google/m/b/a/e/o;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/m/b/a/e/o;->a(Lcom/google/m/b/a/e/n;)Lcom/google/m/b/a/e/o;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/o;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/m/b/a/e/o;->g()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([B)Lcom/google/m/b/a/e/h;
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/e/h;->c:Lcom/google/protobuf/a/a;

    .line 63
    return-object p0
.end method

.method public final a(Lcom/google/m/b/a/e/c;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/n;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/google/m/b/a/e/n;

    invoke-direct {v0}, Lcom/google/m/b/a/e/n;-><init>()V

    invoke-virtual {p1}, Lcom/google/m/b/a/e/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/n;->a(I)Lcom/google/m/b/a/e/n;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/m/b/a/e/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/n;->b(I)Lcom/google/m/b/a/e/n;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/google/m/b/a/e/h;->d:Lcom/google/protobuf/a/a;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/google/m/b/a/e/h;->d:Lcom/google/protobuf/a/a;

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/n;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/google/m/b/a/e/h;->a:Lcom/google/protobuf/a/a;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/google/m/b/a/e/h;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/n;->b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/google/m/b/a/e/h;->c:Lcom/google/protobuf/a/a;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/google/m/b/a/e/h;->c:Lcom/google/protobuf/a/a;

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/n;->d(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/google/m/b/a/e/h;->b:[B

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/google/m/b/a/e/h;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/n;->c(I)Lcom/google/m/b/a/e/n;

    .line 237
    :cond_3
    if-eqz p3, :cond_4

    .line 238
    invoke-static {p3}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/n;->c(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;

    .line 240
    :cond_4
    return-object v0
.end method

.method public final a(Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/p;
    .locals 4

    .prologue
    .line 167
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 174
    :cond_1
    sget-object v0, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    if-ne p4, v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported for encrypted messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    invoke-virtual {p2}, Lcom/google/m/b/a/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/m/b/a/e/h;->d:Lcom/google/protobuf/a/a;

    if-nez v0, :cond_3

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set a verificationKeyId when using public key signature with encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/google/m/b/a/e/h;->e:Ljava/security/SecureRandom;

    invoke-static {p4, v0}, Lcom/google/m/b/a/e/a;->a(Lcom/google/m/b/a/e/b;Ljava/security/SecureRandom;)[B

    move-result-object v1

    .line 183
    invoke-virtual {p0, p2, p4, v1}, Lcom/google/m/b/a/e/h;->a(Lcom/google/m/b/a/e/c;Lcom/google/m/b/a/e/b;[B)Lcom/google/m/b/a/e/n;

    move-result-object v2

    .line 189
    invoke-static {p1, p2, p3}, Lcom/google/m/b/a/e/h;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {v2}, Lcom/google/m/b/a/e/n;->g()[B

    move-result-object v0

    iget-object v3, p0, Lcom/google/m/b/a/e/h;->b:[B

    invoke-static {v0, v3}, Lcom/google/m/b/a/e/a;->b([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/e/a;->a([B)[B

    move-result-object v0

    invoke-static {v0, p5}, Lcom/google/m/b/a/e/a;->b([B[B)[B

    move-result-object p5

    .line 195
    const/4 v0, 0x0

    .line 202
    :goto_0
    iget-object v3, p0, Lcom/google/m/b/a/e/h;->e:Ljava/security/SecureRandom;

    invoke-static {p3, p4, v3, v1, p5}, Lcom/google/m/b/a/e/a;->a(Ljava/security/Key;Lcom/google/m/b/a/e/b;Ljava/security/SecureRandom;[B[B)[B

    move-result-object v1

    .line 204
    invoke-static {v2, v1}, Lcom/google/m/b/a/e/h;->a(Lcom/google/m/b/a/e/n;[B)[B

    move-result-object v1

    .line 205
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/m/b/a/e/h;->a(Ljava/security/Key;Lcom/google/m/b/a/e/c;[B[B)Lcom/google/m/b/a/e/p;

    move-result-object v0

    return-object v0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/google/m/b/a/e/h;->b:[B

    goto :goto_0
.end method

.method public final a(Ljava/security/Key;Lcom/google/m/b/a/e/c;[B[B)Lcom/google/m/b/a/e/p;
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/m/b/a/e/h;->e:Ljava/security/SecureRandom;

    invoke-static {p3, p4}, Lcom/google/m/b/a/e/a;->b([B[B)[B

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/google/m/b/a/e/a;->a(Lcom/google/m/b/a/e/c;Ljava/security/Key;Ljava/security/SecureRandom;[B)[B

    move-result-object v0

    .line 255
    new-instance v1, Lcom/google/m/b/a/e/p;

    invoke-direct {v1}, Lcom/google/m/b/a/e/p;-><init>()V

    invoke-static {p3}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/e/p;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/p;

    move-result-object v1

    invoke-static {v0}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/e/p;->b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/p;

    move-result-object v0

    return-object v0
.end method

.method public final b([B)Lcom/google/m/b/a/e/h;
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/e/h;->d:Lcom/google/protobuf/a/a;

    .line 78
    return-object p0
.end method
