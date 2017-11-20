.class public final Lcom/a/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/a/a/a/b;)Lcom/a/a/a/b;
    .locals 14

    .prologue
    const/16 v13, 0x80

    const/16 v5, 0xb

    const/16 v12, 0x8

    const/4 v1, 0x0

    .line 68
    const-string v0, "UTF-8"

    invoke-virtual {p0}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    new-array v9, v12, [B

    .line 77
    new-instance v7, Lcom/a/a/a/b;

    iget v0, p0, Lcom/a/a/a/b;->b:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v7, v0}, Lcom/a/a/a/b;-><init>(I)V

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 80
    :goto_0
    iget v6, p0, Lcom/a/a/a/b;->b:I

    if-ge v0, v6, :cond_5

    .line 82
    iget v6, p0, Lcom/a/a/a/b;->b:I

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v6, v6, v0

    and-int/lit16 v8, v6, 0xff

    .line 84
    packed-switch v2, :pswitch_data_0

    .line 88
    const/16 v6, 0x7f

    if-ge v8, v6, :cond_1

    .line 90
    int-to-byte v6, v8

    iget v8, v7, Lcom/a/a/a/b;->b:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/a/a/a/b;->a(I)V

    iget-object v8, v7, Lcom/a/a/a/b;->a:[B

    iget v10, v7, Lcom/a/a/a/b;->b:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v7, Lcom/a/a/a/b;->b:I

    aput-byte v6, v8, v10

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The index exceeds the valid buffer area"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    const/16 v6, 0xc0

    if-lt v8, v6, :cond_3

    .line 95
    const/4 v3, -0x1

    move v2, v8

    .line 97
    :goto_2
    if-ge v3, v12, :cond_2

    and-int/lit16 v6, v2, 0x80

    if-ne v6, v13, :cond_2

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 97
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 101
    :cond_2
    add-int/lit8 v2, v4, 0x1

    int-to-byte v6, v8

    aput-byte v6, v9, v4

    move v4, v2

    move v2, v5

    .line 103
    goto :goto_1

    .line 107
    :cond_3
    int-to-byte v6, v8

    invoke-static {v6}, Lcom/a/a/a/e;->a(B)[B

    move-result-object v6

    .line 108
    array-length v8, v6

    invoke-virtual {v7, v6, v8}, Lcom/a/a/a/b;->a([BI)V

    goto :goto_1

    .line 113
    :pswitch_0
    if-lez v3, :cond_4

    and-int/lit16 v6, v8, 0xc0

    if-ne v6, v13, :cond_4

    .line 116
    add-int/lit8 v6, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v9, v4

    .line 117
    add-int/lit8 v3, v3, -0x1

    .line 119
    if-nez v3, :cond_8

    .line 121
    invoke-virtual {v7, v9, v6}, Lcom/a/a/a/b;->a([BI)V

    move v2, v1

    move v4, v1

    .line 124
    goto :goto_1

    .line 131
    :cond_4
    aget-byte v2, v9, v1

    invoke-static {v2}, Lcom/a/a/a/e;->a(B)[B

    move-result-object v2

    .line 132
    array-length v6, v2

    invoke-virtual {v7, v2, v6}, Lcom/a/a/a/b;->a([BI)V

    .line 135
    sub-int/2addr v0, v4

    move v2, v1

    move v4, v1

    .line 138
    goto :goto_1

    .line 145
    :cond_5
    if-ne v2, v5, :cond_6

    .line 147
    :goto_3
    if-ge v1, v4, :cond_6

    .line 149
    aget-byte v0, v9, v1

    .line 150
    invoke-static {v0}, Lcom/a/a/a/e;->a(B)[B

    move-result-object v0

    .line 151
    array-length v2, v0

    invoke-virtual {v7, v0, v2}, Lcom/a/a/a/b;->a([BI)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move-object p0, v7

    .line 160
    :cond_7
    return-object p0

    :cond_8
    move v4, v6

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method private static a(B)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    and-int/lit16 v0, p0, 0xff

    .line 180
    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    .line 182
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    .line 195
    :goto_0
    return-object v0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    const-string v2, "cp1252"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    :cond_2
    new-array v0, v4, [B

    aput-byte p0, v0, v3

    goto :goto_0
.end method
