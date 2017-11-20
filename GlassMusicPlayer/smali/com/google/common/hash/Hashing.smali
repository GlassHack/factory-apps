.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Lcom/google/common/hash/k;

.field private static final c:Lcom/google/common/hash/k;

.field private static final d:Lcom/google/common/hash/k;

.field private static final e:Lcom/google/common/hash/k;

.field private static final f:Lcom/google/common/hash/k;

.field private static final g:Lcom/google/common/hash/k;

.field private static final h:Lcom/google/common/hash/k;

.field private static final i:Lcom/google/common/hash/k;

.field private static final j:Lcom/google/common/hash/k;

.field private static final k:Lcom/google/common/hash/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->a:I

    .line 50
    sget v0, Lcom/google/common/hash/Hashing;->a:I

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->a(I)Lcom/google/common/hash/k;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing;->b:Lcom/google/common/hash/k;

    .line 53
    sget v0, Lcom/google/common/hash/Hashing;->a:I

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->b(I)Lcom/google/common/hash/k;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing;->c:Lcom/google/common/hash/k;

    .line 115
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Hashing;->d:Lcom/google/common/hash/k;

    .line 141
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, v2}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Hashing;->e:Lcom/google/common/hash/k;

    .line 151
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "MD5"

    const-string v2, "Hashing.md5()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->f:Lcom/google/common/hash/k;

    .line 161
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-1"

    const-string v2, "Hashing.sha1()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->g:Lcom/google/common/hash/k;

    .line 172
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-256"

    const-string v2, "Hashing.sha256()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->h:Lcom/google/common/hash/k;

    .line 183
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-512"

    const-string v2, "Hashing.sha512()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->i:Lcom/google/common/hash/k;

    .line 199
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    const-string v1, "Hashing.crc32()"

    invoke-static {v0, v1}, Lcom/google/common/hash/Hashing;->a(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/k;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing;->j:Lcom/google/common/hash/k;

    .line 215
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    const-string v1, "Hashing.adler32()"

    invoke-static {v0, v1}, Lcom/google/common/hash/Hashing;->a(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/k;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing;->k:Lcom/google/common/hash/k;

    return-void
.end method

.method public static a()Lcom/google/common/hash/k;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/common/hash/Hashing;->e:Lcom/google/common/hash/k;

    return-object v0
.end method

.method private static a(I)Lcom/google/common/hash/k;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method private static a(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/k;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/google/common/hash/ChecksumHashFunction;

    invoke-static {p0}, Lcom/google/common/hash/Hashing$ChecksumType;->access$000(Lcom/google/common/hash/Hashing$ChecksumType;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/hash/ChecksumHashFunction;-><init>(Lcom/google/common/base/aw;ILjava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcom/google/common/hash/k;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/google/common/hash/Hashing;->f:Lcom/google/common/hash/k;

    return-object v0
.end method

.method private static b(I)Lcom/google/common/hash/k;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method
