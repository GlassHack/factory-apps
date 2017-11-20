.class public final Lcom/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Z

.field private static b:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 34
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/a/a/a/i;->b:[Z

    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/a/a/a/i;->a:[Z

    move v0, v1

    :goto_0
    sget-object v2, Lcom/a/a/a/i;->b:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_b

    sget-object v4, Lcom/a/a/a/i;->a:[Z

    const/16 v2, 0x61

    if-gt v2, v0, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    if-gt v6, v0, :cond_1

    if-le v0, v7, :cond_3

    :cond_1
    if-eq v0, v5, :cond_3

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc0

    if-gt v2, v0, :cond_2

    const/16 v2, 0xd6

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0xd8

    if-gt v2, v0, :cond_9

    const/16 v2, 0xf6

    if-gt v0, v2, :cond_9

    :cond_3
    move v2, v3

    :goto_1
    aput-boolean v2, v4, v0

    sget-object v4, Lcom/a/a/a/i;->b:[Z

    const/16 v2, 0x61

    if-gt v2, v0, :cond_4

    const/16 v2, 0x7a

    if-le v0, v2, :cond_8

    :cond_4
    if-gt v6, v0, :cond_5

    if-le v0, v7, :cond_8

    :cond_5
    const/16 v2, 0x30

    if-gt v2, v0, :cond_6

    const/16 v2, 0x39

    if-le v0, v2, :cond_8

    :cond_6
    if-eq v0, v5, :cond_8

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_8

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_8

    const/16 v2, 0xc0

    if-gt v2, v0, :cond_7

    const/16 v2, 0xd6

    if-le v0, v2, :cond_8

    :cond_7
    const/16 v2, 0xd8

    if-gt v2, v0, :cond_a

    const/16 v2, 0xf6

    if-gt v0, v2, :cond_a

    :cond_8
    move v2, v3

    :goto_2
    aput-boolean v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_9
    move v2, v1

    goto :goto_1

    :cond_a
    move v2, v1

    goto :goto_2

    .line 35
    :cond_b
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-string v0, "x-default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-object p0

    .line 70
    :cond_0
    const/4 v1, 0x1

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 88
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :sswitch_1
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_2

    .line 94
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method static a(C)Z
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(C)Z
    .locals 1

    .prologue
    .line 459
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/a/a/a/i;->a:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 124
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 130
    :goto_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 133
    add-int/lit8 v0, v3, 0x1

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    .line 137
    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v3, v6, v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    :cond_0
    :goto_1
    if-ge v0, v6, :cond_1

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private static c(C)Z
    .locals 1

    .prologue
    .line 476
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/a/a/a/i;->b:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 274
    .line 276
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    move v3, v4

    .line 283
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    .line 287
    add-int/lit8 v5, v2, 0x1

    .line 288
    if-eqz v3, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2

    const/16 v2, 0x17

    if-ne v0, v2, :cond_4

    :cond_2
    move v2, v4

    :goto_2
    move v3, v2

    move v2, v5

    .line 283
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 288
    goto :goto_2

    .line 293
    :cond_5
    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-ne v3, v2, :cond_0

    const/16 v2, 0x24

    if-ne v2, v0, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/a/a/a/i;->b(C)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 319
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 312
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/a/a/a/i;->c(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 316
    goto :goto_0

    .line 312
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/a/a/a/i;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_0
    move v1, v2

    .line 343
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    .line 336
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/a/a/a/i;->c(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    :cond_3
    move v1, v2

    .line 340
    goto :goto_0

    .line 336
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
