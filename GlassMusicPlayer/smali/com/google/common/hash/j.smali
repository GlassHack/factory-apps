.class public abstract Lcom/google/common/hash/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/j;->hexDigits:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asBytes()[B
.end method

.method public abstract asInt()I
.end method

.method public abstract asLong()J
.end method

.method public abstract bits()I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 92
    instance-of v0, p1, Lcom/google/common/hash/j;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/google/common/hash/j;

    .line 96
    invoke-virtual {p0}, Lcom/google/common/hash/j;->asBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/hash/j;->asBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/common/hash/j;->asInt()I

    move-result v0

    return v0
.end method

.method public abstract padToLong()J
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/common/hash/j;->asBytes()[B

    move-result-object v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v1, v0

    .line 129
    sget-object v5, Lcom/google/common/hash/j;->hexDigits:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/common/hash/j;->hexDigits:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBytesTo([BII)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/google/common/hash/j;->asBytes()[B

    move-result-object v0

    .line 79
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p3, v1, v4

    const/4 v2, 0x1

    array-length v3, v0

    aput v3, v1, v2

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->a([I)I

    move-result v1

    .line 80
    add-int v2, p2, v1

    array-length v3, p1

    invoke-static {p2, v2, v3}, Lcom/google/common/base/ai;->a(III)V

    .line 81
    invoke-static {v0, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    return v1
.end method
