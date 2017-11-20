.class public Lcom/google/android/speech/utils/HexUtils;
.super Ljava/lang/Object;
.source "HexUtils.java"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/speech/utils/HexUtils;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 71
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 72
    .local v3, "chars":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 73
    aget-byte v0, p0, v4

    .line 74
    .local v0, "b":B
    sget-object v5, Lcom/google/android/speech/utils/HexUtils;->HEX_CHARS:[C

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v1, v5, v6

    .line 75
    .local v1, "c1":C
    sget-object v5, Lcom/google/android/speech/utils/HexUtils;->HEX_CHARS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v2, v5, v6

    .line 76
    .local v2, "c2":C
    mul-int/lit8 v5, v4, 0x2

    aput-char v1, v3, v5

    .line 77
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aput-char v2, v3, v5

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "b":B
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static hexToBytes(Ljava/lang/CharSequence;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 29
    .local v0, "bytes":[B
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 46
    :cond_0
    return-object v0

    .line 32
    :cond_1
    aput-byte v5, v0, v5

    .line 33
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    rem-int/lit8 v3, v4, 0x2

    .line 34
    .local v3, "nibbleIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 35
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 36
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/android/speech/utils/HexUtils;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 37
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "string contains non-hex chars"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_2
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_3

    .line 40
    shr-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/google/android/speech/utils/HexUtils;->hexValue(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 44
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_3
    shr-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v4

    invoke-static {v1}, Lcom/google/android/speech/utils/HexUtils;->hexValue(C)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_1
.end method

.method private static hexValue(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 56
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 57
    add-int/lit8 v0, p0, -0x30

    .line 61
    :goto_0
    return v0

    .line 58
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 59
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method private static isHex(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 50
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
