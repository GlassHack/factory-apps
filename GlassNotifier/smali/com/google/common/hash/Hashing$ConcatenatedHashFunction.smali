.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method private varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 8
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .prologue
    const/4 v3, 0x0

    .line 661
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "bitSum":I
    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, p1, v4

    .line 664
    .local v1, "function":Lcom/google/common/hash/HashFunction;
    invoke-interface {v1}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v2

    add-int/2addr v0, v2

    .line 666
    invoke-interface {v1}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v6, "the number of bits (%s) in hashFunction (%s) must be divisible by 8"

    .line 668
    invoke-interface {v1}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v7

    .line 665
    invoke-static {v2, v6, v7, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;ILjava/lang/Object;)V

    .line 663
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 666
    goto :goto_1

    .line 671
    .end local v1    # "function":Lcom/google/common/hash/HashFunction;
    :cond_1
    iput v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 672
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V
    .locals 0
    .param p1, "x0"    # [Lcom/google/common/hash/HashFunction;
    .param p2, "x1"    # Lcom/google/common/hash/Hashing$1;

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 692
    instance-of v1, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 693
    check-cast v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 694
    .local v0, "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    iget-object v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    iget-object v2, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 696
    .end local v0    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    add-int/2addr v0, v1

    return v0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 7
    .param p1, "hashers"    # [Lcom/google/common/hash/Hasher;

    .prologue
    .line 676
    iget v4, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v4, v4, 0x8

    new-array v0, v4, [B

    .line 677
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 678
    .local v2, "i":I
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p1, v4

    .line 679
    .local v1, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v3

    .line 680
    .local v3, "newHash":Lcom/google/common/hash/HashCode;
    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v0, v2, v6}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v6

    add-int/2addr v2, v6

    .line 678
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 682
    .end local v1    # "hasher":Lcom/google/common/hash/Hasher;
    .end local v3    # "newHash":Lcom/google/common/hash/HashCode;
    :cond_0
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v4

    return-object v4
.end method
