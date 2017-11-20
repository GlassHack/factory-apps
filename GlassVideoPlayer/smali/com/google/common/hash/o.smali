.class final Lcom/google/common/hash/o;
.super Lcom/google/common/hash/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    .line 123
    iput p2, p0, Lcom/google/common/hash/o;->b:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/n;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/o;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/common/hash/o;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot use Hasher after calling #hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/ah;->b(ZLjava/lang/Object;)V

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/common/hash/j;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/o;->c:Z

    .line 150
    iget v0, p0, Lcom/google/common/hash/o;->b:I

    iget-object v1, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->a([B)Lcom/google/common/hash/j;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget v0, p0, Lcom/google/common/hash/o;->b:I

    new-array v0, v0, [B

    .line 154
    iget-object v1, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/o;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->a([B)Lcom/google/common/hash/j;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(B)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/common/hash/o;->b()V

    .line 129
    iget-object v0, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 130
    return-void
.end method

.method protected final a([B)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/common/hash/o;->b()V

    .line 135
    iget-object v0, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    return-void
.end method

.method protected final a([BII)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/common/hash/o;->b()V

    .line 141
    iget-object v0, p0, Lcom/google/common/hash/o;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 142
    return-void
.end method
