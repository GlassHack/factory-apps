.class public final Lcom/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 268
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 273
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 273
    goto :goto_0

    .line 277
    :catch_0
    move-exception v3

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 315
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :catch_0
    move-exception v0

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid integer string"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 319
    :cond_1
    :try_start_1
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 325
    :goto_0
    return v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 362
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :catch_0
    move-exception v0

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid long string"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 366
    :cond_1
    :try_start_1
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 372
    :goto_0
    return-wide v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)D
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 409
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :catch_0
    move-exception v0

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid double string"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 415
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Ljava/lang/String;)Lcom/a/a/a;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/16 v10, 0x3a

    const/4 v2, 0x0

    const/16 v9, 0x2d

    const/4 v8, 0x5

    .line 450
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 452
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty convert-string"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 456
    :cond_1
    new-instance v4, Lcom/a/a/a/j;

    invoke-direct {v4}, Lcom/a/a/a/j;-><init>()V

    invoke-static {p0}, Lcom/a/a/a/f;->a(Ljava/lang/Object;)V

    new-instance v5, Lcom/a/a/a/h;

    invoke-direct {v5, p0}, Lcom/a/a/a/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/a/a/a/h;->a(I)C

    move-result v0

    const/16 v3, 0x54

    if-eq v0, v3, :cond_3

    iget-object v0, v5, Lcom/a/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    invoke-virtual {v5, v1}, Lcom/a/a/a/h;->a(I)C

    move-result v0

    if-eq v0, v10, :cond_3

    :cond_2
    iget-object v0, v5, Lcom/a/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_5

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/a/a/a/h;->a(I)C

    move-result v0

    if-ne v0, v10, :cond_5

    :cond_3
    move v3, v1

    :goto_0
    if-nez v3, :cond_b

    invoke-virtual {v5, v2}, Lcom/a/a/a/h;->a(I)C

    move-result v0

    if-ne v0, v9, :cond_4

    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    :cond_4
    const-string v0, "Invalid year in date string"

    const/16 v6, 0x270f

    invoke-virtual {v5, v0, v6}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v6

    if-eq v6, v9, :cond_6

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, after year"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    invoke-virtual {v5, v2}, Lcom/a/a/a/h;->a(I)C

    move-result v6

    if-ne v6, v9, :cond_7

    neg-int v0, v0

    :cond_7
    invoke-interface {v4, v0}, Lcom/a/a/a;->a(I)V

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    const-string v0, "Invalid month in date string"

    const/16 v6, 0xc

    invoke-virtual {v5, v0, v6}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v6

    if-eq v6, v9, :cond_8

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, after month"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_8
    invoke-interface {v4, v0}, Lcom/a/a/a;->b(I)V

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    const-string v0, "Invalid day in date string"

    const/16 v6, 0x1f

    invoke-virtual {v5, v0, v6}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v6

    const/16 v7, 0x54

    if-eq v6, v7, :cond_9

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, after day"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    invoke-interface {v4, v0}, Lcom/a/a/a;->c(I)V

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    return-object v4

    :cond_b
    invoke-interface {v4, v1}, Lcom/a/a/a;->b(I)V

    invoke-interface {v4, v1}, Lcom/a/a/a;->c(I)V

    :cond_c
    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v0

    const/16 v6, 0x54

    if-ne v0, v6, :cond_e

    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    :cond_d
    const-string v0, "Invalid hour in date string"

    const/16 v3, 0x17

    invoke-virtual {v5, v0, v3}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    if-eq v3, v10, :cond_f

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, after hour"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_e
    if-nez v3, :cond_d

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, missing \'T\' after date"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    invoke-interface {v4, v0}, Lcom/a/a/a;->d(I)V

    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    const-string v0, "Invalid minute in date string"

    const/16 v3, 0x3b

    invoke-virtual {v5, v0, v3}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    if-eq v3, v10, :cond_10

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_10

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_10

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    if-eq v3, v9, :cond_10

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, after minute"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_10
    invoke-interface {v4, v0}, Lcom/a/a/a;->e(I)V

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v0

    if-ne v0, v10, :cond_15

    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    const-string v0, "Invalid whole seconds in date string"

    const/16 v3, 0x3b

    invoke-virtual {v5, v0, v3}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    const/16 v6, 0x2e

    if-eq v3, v6, :cond_11

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_11

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_11

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v3

    if-eq v3, v9, :cond_11

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, after whole seconds"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_11
    invoke-interface {v4, v0}, Lcom/a/a/a;->f(I)V

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_15

    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    iget v0, v5, Lcom/a/a/a/h;->b:I

    const-string v3, "Invalid fractional seconds in date string"

    const v6, 0x3b9ac9ff

    invoke-virtual {v5, v3, v6}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_12

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v6

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_12

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v6

    if-eq v6, v9, :cond_12

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, after fractional second"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    iget v6, v5, Lcom/a/a/a/h;->b:I

    sub-int v0, v6, v0

    :goto_1
    const/16 v6, 0x9

    if-le v0, v6, :cond_13

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_13
    :goto_2
    const/16 v6, 0x9

    if-ge v0, v6, :cond_14

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    invoke-interface {v4, v3}, Lcom/a/a/a;->g(I)V

    :cond_15
    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v0

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_16

    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    move v0, v2

    move v1, v2

    :goto_3
    mul-int/lit16 v2, v2, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v1}, Lcom/a/a/a;->a(Ljava/util/TimeZone;)V

    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, extra chars at end"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_16
    invoke-virtual {v5}, Lcom/a/a/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_17

    move v0, v1

    :goto_4
    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    const-string v1, "Invalid time zone hour in date string"

    const/16 v2, 0x17

    invoke-virtual {v5, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v1

    if-eq v1, v10, :cond_19

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid date string, after time zone hour"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_17
    invoke-virtual {v5}, Lcom/a/a/a/h;->b()C

    move-result v0

    if-ne v0, v9, :cond_18

    const/4 v0, -0x1

    goto :goto_4

    :cond_18
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    invoke-direct {v0, v1, v8}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_19
    invoke-virtual {v5}, Lcom/a/a/a/h;->c()V

    const-string v1, "Invalid time zone minute in date string"

    const/16 v3, 0x3b

    invoke-virtual {v5, v1, v3}, Lcom/a/a/a/h;->a(Ljava/lang/String;I)I

    move-result v1

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_3

    :cond_1a
    move v0, v2

    move v1, v2

    goto :goto_3
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 499
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 501
    :catch_0
    move-exception v0

    .line 503
    new-instance v1, Lcom/a/a/b;

    const-string v2, "Invalid base64 string"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v0}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method
