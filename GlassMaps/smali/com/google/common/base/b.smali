.class public final Lcom/google/common/base/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(C)C
    .locals 1

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/common/base/b;->c(C)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x5f

    int-to-char p0, v0

    :cond_0
    return p0
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 443
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 445
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 446
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/b;->b(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    invoke-static {p0}, Lcom/google/common/base/b;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(C)C
    .locals 1

    .prologue
    .line 456
    invoke-static {p0}, Lcom/google/common/base/b;->d(C)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    :cond_0
    return p0
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 476
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 478
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 479
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/b;->a(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    invoke-static {p0}, Lcom/google/common/base/b;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(C)Z
    .locals 1

    .prologue
    .line 498
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(C)Z
    .locals 1

    .prologue
    .line 507
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
