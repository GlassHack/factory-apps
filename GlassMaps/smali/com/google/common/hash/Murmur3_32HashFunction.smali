.class final Lcom/google/common/hash/Murmur3_32HashFunction;
.super Lcom/google/common/hash/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 53
    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(II)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method private static fmix(II)Lcom/google/common/hash/j;
    .locals 2

    .prologue
    .line 127
    xor-int v0, p0, p1

    .line 128
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 129
    const v1, -0x7a143595

    mul-int/2addr v0, v1

    .line 130
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 131
    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    .line 132
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 133
    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->a(I)Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method private static mixH1(II)I
    .locals 2

    .prologue
    .line 119
    xor-int v0, p0, p1

    .line 120
    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 121
    mul-int/lit8 v0, v0, 0x5

    const v1, -0x19ab949c

    add-int/2addr v0, v1

    .line 122
    return v0
.end method

.method private static mixK1(I)I
    .locals 2

    .prologue
    .line 112
    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v0, p0

    .line 113
    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 114
    const v1, 0x1b873593

    mul-int/2addr v0, v1

    .line 115
    return v0
.end method


# virtual methods
.method public final bits()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x20

    return v0
.end method

.method public final hashInt(I)Lcom/google/common/hash/j;
    .locals 2

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 70
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 72
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public final hashLong(J)Lcom/google/common/hash/j;
    .locals 3

    .prologue
    .line 77
    long-to-int v0, p1

    .line 78
    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    .line 80
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 81
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v2, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 83
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v1

    .line 84
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 86
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public final hashString(Ljava/lang/CharSequence;)Lcom/google/common/hash/j;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 92
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    move v2, v0

    move v0, v1

    .line 95
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 96
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 97
    invoke-static {v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v3

    .line 98
    invoke-static {v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v2

    .line 95
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    .line 103
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 104
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 105
    xor-int/2addr v2, v0

    .line 108
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public final newHasher()Lcom/google/common/hash/l;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/google/common/hash/q;

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/q;-><init>(I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_32("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
