.class public final Lcom/a/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/b;
    .locals 10

    .prologue
    const/high16 v5, -0x80000000

    const/4 v9, 0x0

    const/16 v8, 0x5d

    const/4 v7, 0x1

    const/16 v6, 0x66

    .line 86
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 88
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Parameter must not be null"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 91
    :cond_1
    new-instance v1, Lcom/a/a/a/a/b;

    invoke-direct {v1}, Lcom/a/a/a/a/b;-><init>()V

    .line 92
    new-instance v2, Lcom/a/a/a/a/a;

    invoke-direct {v2}, Lcom/a/a/a/a/a;-><init>()V

    .line 93
    iput-object p1, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    .line 97
    :goto_0
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    const-string v0, "/[*"

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->e:I

    goto :goto_0

    :cond_2
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iget v3, v2, Lcom/a/a/a/a/a;->d:I

    if-ne v0, v3, :cond_3

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty initial XMPPath step"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    iget-object v0, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v3, v2, Lcom/a/a/a/a/a;->d:I

    iget v4, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/a/a/e;->c(Ljava/lang/String;)Lcom/a/a/c/a;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v3, Lcom/a/a/a/a/d;

    invoke-direct {v3, p0, v5}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/a/d;)V

    new-instance v3, Lcom/a/a/a/a/d;

    invoke-direct {v3, v0, v7}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/a/d;)V

    .line 100
    :cond_4
    :goto_1
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1e

    .line 102
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iput v0, v2, Lcom/a/a/a/a/a;->d:I

    .line 104
    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_7

    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->d:I

    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_7

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty XMPPath segment"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 97
    :cond_5
    new-instance v0, Lcom/a/a/a/a/d;

    invoke-interface {v3}, Lcom/a/a/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/a/d;)V

    new-instance v0, Lcom/a/a/a/a/d;

    invoke-interface {v3}, Lcom/a/a/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/a/a/c/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    iput-boolean v7, v0, Lcom/a/a/a/a/d;->c:Z

    invoke-interface {v3}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v4

    iget v4, v4, Lcom/a/a/b/b;->a:I

    iput v4, v0, Lcom/a/a/a/a/d;->d:I

    invoke-virtual {v1, v0}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/a/d;)V

    invoke-interface {v3}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/a/a/a/a/d;

    const-string v4, "[?xml:lang=\'x-default\']"

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    iput-boolean v7, v0, Lcom/a/a/a/a/d;->c:Z

    invoke-interface {v3}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v3

    iget v3, v3, Lcom/a/a/b/b;->a:I

    iput v3, v0, Lcom/a/a/a/a/d;->d:I

    invoke-virtual {v1, v0}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/a/d;)V

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/a/a/a/a/d;

    const-string v4, "[1]"

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    iput-boolean v7, v0, Lcom/a/a/a/a/d;->c:Z

    invoke-interface {v3}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v3

    iget v3, v3, Lcom/a/a/b/b;->a:I

    iput v3, v0, Lcom/a/a/a/a/d;->d:I

    invoke-virtual {v1, v0}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/a/d;)V

    goto/16 :goto_1

    .line 104
    :cond_7
    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_9

    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->d:I

    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_9

    :cond_8
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Missing \'[\' after \'*\'"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 106
    :cond_9
    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    iput v0, v2, Lcom/a/a/a/a/a;->e:I

    .line 110
    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_c

    .line 113
    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    iput v0, v2, Lcom/a/a/a/a/a;->b:I

    :goto_2
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_a

    const-string v0, "/[*"

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->e:I

    goto :goto_2

    :cond_a
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iput v0, v2, Lcom/a/a/a/a/a;->c:I

    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iget v3, v2, Lcom/a/a/a/a/a;->d:I

    if-ne v0, v3, :cond_b

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty XMPPath segment"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_b
    new-instance v0, Lcom/a/a/a/a/d;

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->d:I

    iget v5, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v7}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    .line 122
    :goto_3
    iget v3, v0, Lcom/a/a/a/a/d;->b:I

    if-ne v3, v7, :cond_1c

    .line 124
    iget-object v3, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_19

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    .line 127
    const-string v3, "?xml:lang"

    iget-object v4, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 129
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Only xml:lang allowed with \'@\'"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 118
    :cond_c
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->e:I

    const/16 v0, 0x30

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v0, v3, :cond_f

    iget-object v0, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_f

    :goto_4
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_d

    const/16 v0, 0x30

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v0, v3, :cond_d

    iget-object v0, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_d

    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->e:I

    goto :goto_4

    :cond_d
    new-instance v0, Lcom/a/a/a/a/d;

    const/4 v3, 0x3

    invoke-direct {v0, v9, v3}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    :goto_5
    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v4, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_e

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_18

    :cond_e
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Missing \']\' for array index"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    :goto_6
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_10

    iget-object v0, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_10

    iget-object v0, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_10

    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->e:I

    goto :goto_6

    :cond_10
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_11

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Missing \']\' or \'=\' for array index"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_11
    iget-object v0, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_13

    const-string v0, "[last()"

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->d:I

    iget v5, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid non-numeric array index"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    new-instance v0, Lcom/a/a/a/a/d;

    const/4 v3, 0x4

    invoke-direct {v0, v9, v3}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    goto :goto_5

    :cond_13
    iget v0, v2, Lcom/a/a/a/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->b:I

    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iput v0, v2, Lcom/a/a/a/a/a;->c:I

    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v0, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x27

    if-eq v0, v3, :cond_14

    const/16 v3, 0x22

    if-eq v0, v3, :cond_14

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Invalid quote in array selector"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_14
    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/a/a/a;->e:I

    :goto_7
    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v4, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_16

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_15

    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_16

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_16

    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/a/a/a;->e:I

    :cond_15
    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/a/a/a;->e:I

    goto :goto_7

    :cond_16
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_17

    new-instance v0, Lcom/a/a/b;

    const-string v1, "No terminating quote for array selector"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_17
    iget v0, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/a/a/a/a/a;->e:I

    new-instance v0, Lcom/a/a/a/a/d;

    const/4 v3, 0x6

    invoke-direct {v0, v9, v3}, Lcom/a/a/a/a/d;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_18
    iget v3, v2, Lcom/a/a/a/a/a;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/a/a/a;->e:I

    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->d:I

    iget v5, v2, Lcom/a/a/a/a/a;->e:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    goto/16 :goto_3

    .line 133
    :cond_19
    iget-object v3, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_1a

    .line 135
    iget v3, v2, Lcom/a/a/a/a/a;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/a/a/a;->b:I

    .line 136
    const/4 v3, 0x2

    iput v3, v0, Lcom/a/a/a/a/d;->b:I

    .line 139
    :cond_1a
    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->b:I

    iget v5, v2, Lcom/a/a/a/a/a;->c:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;)V

    .line 161
    :cond_1b
    :goto_8
    invoke-virtual {v1, v0}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/a/d;)V

    goto/16 :goto_1

    .line 141
    :cond_1c
    iget v3, v0, Lcom/a/a/a/a/d;->b:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1b

    .line 143
    iget-object v3, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1d

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    .line 146
    iget-object v3, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    const-string v4, "[?xml:lang="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 148
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Only xml:lang allowed with \'@\'"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 153
    :cond_1d
    iget-object v3, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_1b

    .line 155
    iget v3, v2, Lcom/a/a/a/a/a;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/a/a/a/a/a;->b:I

    .line 156
    const/4 v3, 0x5

    iput v3, v0, Lcom/a/a/a/a/d;->b:I

    .line 157
    iget-object v3, v2, Lcom/a/a/a/a/a;->a:Ljava/lang/String;

    iget v4, v2, Lcom/a/a/a/a/a;->b:I

    iget v5, v2, Lcom/a/a/a/a/a;->c:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 163
    :cond_1e
    return-object v1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 399
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 400
    if-lez v0, :cond_1

    .line 402
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/a/a/a/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Unknown namespace prefix for qualified name"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 417
    :cond_1
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Ill-formed qualified name"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x66

    const/16 v3, 0x65

    const/4 v2, 0x0

    .line 458
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 460
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Schema namespace URI is required"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 464
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3

    .line 466
    :cond_2
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Top level name must not be a qualifier"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 469
    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 471
    :cond_4
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Top level name must be simple"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 474
    :cond_5
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    if-nez v0, :cond_6

    .line 477
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Unregistered schema namespace URI"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 482
    :cond_6
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 483
    if-gez v1, :cond_8

    .line 487
    invoke-static {p1}, Lcom/a/a/a/a/c;->b(Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 512
    :cond_7
    return-object p1

    .line 496
    :cond_8
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/c;->b(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/c;->b(Ljava/lang/String;)V

    .line 499
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    if-nez v1, :cond_9

    .line 504
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Unknown schema namespace prefix"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 506
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 508
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Schema namespace URI and prefix mismatch"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 431
    invoke-static {p0}, Lcom/a/a/a/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Bad XML name"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 435
    :cond_0
    return-void
.end method
