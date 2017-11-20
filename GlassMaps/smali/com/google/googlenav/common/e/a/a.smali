.class public final Lcom/google/googlenav/common/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 89
    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v1

    move v2, v1

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_3

    move v3, v1

    .line 94
    :goto_1
    if-ge v3, v4, :cond_2

    .line 95
    add-int v6, v0, v3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_1

    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    goto :goto_0

    .line 94
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    :cond_2
    add-int v3, v0, v4

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    add-int/2addr v0, v5

    .line 105
    if-nez v4, :cond_0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_3
    return v2
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0xf4240

    .line 347
    div-int v0, p0, v4

    .line 349
    mul-int v1, v0, v4

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    if-gez p0, :cond_0

    if-nez v0, :cond_0

    .line 354
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    if-lez v1, :cond_1

    .line 358
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int v0, v1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "split target should not be null"

    invoke-static {v0, p0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 37
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v2, v1

    .line 38
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-ge v0, v3, :cond_1

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 42
    if-ltz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 39
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 46
    :cond_1
    add-int/lit8 v0, v2, 0x1

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 48
    :goto_1
    if-ge v0, v2, :cond_2

    .line 49
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 50
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 55
    return-object v3
.end method
