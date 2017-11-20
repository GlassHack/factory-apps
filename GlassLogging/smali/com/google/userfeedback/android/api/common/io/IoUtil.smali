.class public Lcom/google/userfeedback/android/api/common/io/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeUtf8([BIIZ)Ljava/lang/String;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tolerant"    # Z

    .prologue
    .line 114
    new-instance v9, Ljava/lang/StringBuffer;

    sub-int v10, p2, p1

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 115
    .local v9, "sb":Ljava/lang/StringBuffer;
    move v7, p1

    .local v7, "pos":I
    move v8, v7

    .line 117
    .end local v7    # "pos":I
    .local v8, "pos":I
    :goto_0
    if-ge v8, p2, :cond_c

    .line 118
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v10, p0, v8

    and-int/lit16 v0, v10, 0xff

    .line 119
    .local v0, "b":I
    const/16 v10, 0x7f

    if-gt v0, v10, :cond_0

    .line 120
    int-to-char v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move v8, v7

    .line 167
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_0

    .line 121
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :cond_0
    const/16 v10, 0xf5

    if-lt v0, v10, :cond_2

    .line 122
    if-nez p3, :cond_1

    .line 123
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid UTF8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 125
    :cond_1
    int-to-char v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :cond_2
    const/16 v1, 0xe0

    .line 128
    .local v1, "border":I
    const/4 v3, 0x1

    .line 129
    .local v3, "count":I
    const/16 v6, 0x80

    .line 130
    .local v6, "minCode":I
    const/16 v5, 0x1f

    .line 131
    .local v5, "mask":I
    :goto_2
    if-lt v0, v1, :cond_4

    .line 132
    shr-int/lit8 v10, v1, 0x1

    or-int/lit16 v1, v10, 0x80

    .line 133
    const/4 v10, 0x1

    if-ne v3, v10, :cond_3

    const/4 v10, 0x4

    :goto_3
    shl-int/2addr v6, v10

    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    shr-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 133
    :cond_3
    const/4 v10, 0x5

    goto :goto_3

    .line 137
    :cond_4
    and-int v2, v0, v5

    .line 139
    .local v2, "code":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v8, v7

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :goto_4
    if-ge v4, v3, :cond_7

    .line 140
    shl-int/lit8 v2, v2, 0x6

    .line 141
    if-lt v8, p2, :cond_5

    .line 142
    if-nez p3, :cond_d

    .line 143
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid UTF8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 147
    :cond_5
    if-nez p3, :cond_6

    aget-byte v10, p0, v8

    and-int/lit16 v10, v10, 0xc0

    const/16 v11, 0x80

    if-eq v10, v11, :cond_6

    .line 148
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid UTF8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 150
    :cond_6
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget-byte v10, p0, v8

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v2, v10

    .line 139
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_4

    .line 155
    :cond_7
    if-nez p3, :cond_8

    if-lt v2, v6, :cond_9

    :cond_8
    const v10, 0xd800

    if-lt v2, v10, :cond_a

    const v10, 0xdfff

    if-gt v2, v10, :cond_a

    .line 156
    :cond_9
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid UTF8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 159
    :cond_a
    const v10, 0xffff

    if-gt v2, v10, :cond_b

    .line 160
    int-to-char v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v8

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_1

    .line 162
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_b
    const/high16 v10, 0x10000

    sub-int/2addr v2, v10

    .line 163
    const v10, 0xd800

    shr-int/lit8 v11, v2, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    const v10, 0xdc00

    and-int/lit16 v11, v2, 0x3ff

    or-int/2addr v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v8

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto/16 :goto_1

    .line 168
    .end local v0    # "b":I
    .end local v1    # "border":I
    .end local v2    # "code":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "mask":I
    .end local v6    # "minCode":I
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_c
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .restart local v0    # "b":I
    .restart local v1    # "border":I
    .restart local v2    # "code":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "mask":I
    .restart local v6    # "minCode":I
    :cond_d
    move v7, v8

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_5
.end method

.method public static encodeUtf8(Ljava/lang/String;[BI)I
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .prologue
    const v8, 0xd800

    const v7, 0xfc00

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 42
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_9

    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 46
    .local v0, "code":I
    if-lt v0, v8, :cond_0

    const v5, 0xdfff

    if-gt v0, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_0

    .line 47
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 52
    .local v2, "codeLo":I
    and-int v5, v2, v7

    and-int v6, v0, v7

    xor-int/2addr v5, v6

    const/16 v6, 0x400

    if-ne v5, v6, :cond_0

    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 57
    and-int v5, v2, v7

    if-ne v5, v8, :cond_2

    .line 58
    move v1, v2

    .line 59
    .local v1, "codeHi":I
    move v2, v0

    .line 63
    :goto_1
    and-int/lit16 v5, v1, 0x3ff

    shl-int/lit8 v5, v5, 0xa

    and-int/lit16 v6, v2, 0x3ff

    or-int/2addr v5, v6

    const/high16 v6, 0x10000

    add-int v0, v5, v6

    .line 66
    .end local v1    # "codeHi":I
    .end local v2    # "codeLo":I
    :cond_0
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_3

    .line 67
    if-eqz p1, :cond_1

    .line 68
    int-to-byte v5, v0

    aput-byte v5, p1, p2

    .line 70
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 42
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .restart local v2    # "codeLo":I
    :cond_2
    move v1, v0

    .restart local v1    # "codeHi":I
    goto :goto_1

    .line 71
    .end local v1    # "codeHi":I
    .end local v2    # "codeLo":I
    :cond_3
    const/16 v5, 0x7ff

    if-gt v0, v5, :cond_5

    .line 73
    if-eqz p1, :cond_4

    .line 74
    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 75
    add-int/lit8 v5, p2, 0x1

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 77
    :cond_4
    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    .line 78
    :cond_5
    const v5, 0xffff

    if-gt v0, v5, :cond_7

    .line 80
    if-eqz p1, :cond_6

    .line 81
    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 82
    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 83
    add-int/lit8 v5, p2, 0x2

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 85
    :cond_6
    add-int/lit8 p2, p2, 0x3

    goto :goto_2

    .line 87
    :cond_7
    if-eqz p1, :cond_8

    .line 88
    shr-int/lit8 v5, v0, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 89
    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 90
    add-int/lit8 v5, p2, 0x2

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 91
    add-int/lit8 v5, p2, 0x3

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 93
    :cond_8
    add-int/lit8 p2, p2, 0x4

    goto :goto_2

    .line 97
    .end local v0    # "code":I
    :cond_9
    return p2
.end method

.method public static encodeUtf8(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 25
    const/4 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/google/userfeedback/android/api/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .line 26
    .local v0, "len":I
    new-array v1, v0, [B

    .line 27
    .local v1, "result":[B
    invoke-static {p0, v1, v3}, Lcom/google/userfeedback/android/api/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    .line 28
    return-object v1
.end method
