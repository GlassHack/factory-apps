.class public Lcom/android/providers/contacts/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[B

.field private static final FIRST_CHAR:[C

.field private static final HEX_DIGITS:[C

.field private static final SECOND_CHAR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    .line 25
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/providers/contacts/util/Hex;->HEX_DIGITS:[C

    .line 30
    new-array v1, v4, [C

    sput-object v1, Lcom/android/providers/contacts/util/Hex;->FIRST_CHAR:[C

    .line 31
    new-array v1, v4, [C

    sput-object v1, Lcom/android/providers/contacts/util/Hex;->SECOND_CHAR:[C

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 34
    sget-object v1, Lcom/android/providers/contacts/util/Hex;->FIRST_CHAR:[C

    sget-object v2, Lcom/android/providers/contacts/util/Hex;->HEX_DIGITS:[C

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 35
    sget-object v1, Lcom/android/providers/contacts/util/Hex;->SECOND_CHAR:[C

    sget-object v2, Lcom/android/providers/contacts/util/Hex;->HEX_DIGITS:[C

    and-int/lit8 v3, v0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/16 v1, 0x67

    new-array v1, v1, [B

    sput-object v1, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    .line 41
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x46

    if-gt v0, v1, :cond_1

    .line 42
    sget-object v1, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_2
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 45
    sget-object v1, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    add-int/lit8 v2, v0, 0x30

    aput-byte v0, v1, v2

    .line 44
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_2

    .line 47
    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 48
    sget-object v1, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 49
    sget-object v1, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 47
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_3

    .line 51
    :cond_3
    return-void

    .line 25
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 13
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x66

    const/4 v11, -0x1

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 85
    .local v8, "length":I
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_0

    .line 86
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Odd number of characters: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, "badHex":Z
    shr-int/lit8 v10, v8, 0x1

    new-array v9, v10, [B

    .line 91
    .local v9, "out":[B
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 92
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 93
    .local v1, "c1":I
    if-le v1, v12, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 119
    .end local v1    # "c1":I
    :goto_1
    if-eqz v0, :cond_5

    .line 120
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid hexadecimal digit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 98
    .restart local v1    # "c1":I
    :cond_1
    sget-object v10, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    aget-byte v3, v10, v1

    .line 99
    .local v3, "d1":B
    if-ne v3, v11, :cond_2

    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_1

    .line 104
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 105
    .local v2, "c2":I
    if-le v2, v12, :cond_3

    .line 106
    const/4 v0, 0x1

    move v6, v7

    .line 107
    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_1

    .line 110
    .end local v6    # "j":I
    .restart local v7    # "j":I
    :cond_3
    sget-object v10, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    aget-byte v4, v10, v2

    .line 111
    .local v4, "d2":B
    if-ne v4, v11, :cond_4

    .line 112
    const/4 v0, 0x1

    move v6, v7

    .line 113
    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_1

    .line 116
    .end local v6    # "j":I
    .restart local v7    # "j":I
    :cond_4
    shl-int/lit8 v10, v3, 0x4

    or-int/2addr v10, v4

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "c1":I
    .end local v2    # "c2":I
    .end local v3    # "d1":B
    .end local v4    # "d2":B
    .end local v7    # "j":I
    .restart local v6    # "j":I
    :cond_5
    return-object v9

    .end local v6    # "j":I
    .restart local v7    # "j":I
    :cond_6
    move v6, v7

    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_1
.end method

.method public static encodeHex([BZ)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "zeroTerminated"    # Z

    .prologue
    .line 59
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 61
    .local v0, "cArray":[C
    const/4 v3, 0x0

    .line 62
    .local v3, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 63
    aget-byte v5, p0, v1

    and-int/lit16 v2, v5, 0xff

    .line 64
    .local v2, "index":I
    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_1

    .line 72
    .end local v2    # "index":I
    :cond_0
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 68
    .restart local v2    # "index":I
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    sget-object v5, Lcom/android/providers/contacts/util/Hex;->FIRST_CHAR:[C

    aget-char v5, v5, v2

    aput-char v5, v0, v3

    .line 69
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    sget-object v5, Lcom/android/providers/contacts/util/Hex;->SECOND_CHAR:[C

    aget-char v5, v5, v2

    aput-char v5, v0, v4

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
