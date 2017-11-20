.class public Lcom/a/a/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/a/a/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/a/a/a/o;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static a(Lcom/a/a/a/m;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 904
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Language item must be used on array"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    move v0, v1

    .line 909
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/a/m;->c()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 911
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v2

    .line 912
    invoke-virtual {v2}, Lcom/a/a/a/m;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "xml:lang"

    invoke-virtual {v2, v1}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 914
    invoke-virtual {v2, v1}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 922
    :goto_1
    return v0

    .line 909
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 922
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 655
    const-string v1, "xml:lang"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    invoke-static {p2}, Lcom/a/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-static {p0, v1}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;)I

    move-result v1

    .line 659
    if-gez v1, :cond_0

    and-int/lit16 v2, p3, 0x1000

    if-lez v2, :cond_0

    .line 661
    new-instance v1, Lcom/a/a/a/m;

    const-string v2, "[]"

    invoke-direct {v1, v2, v5}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 662
    new-instance v2, Lcom/a/a/a/m;

    const-string v3, "xml:lang"

    const-string v4, "x-default"

    invoke-direct {v2, v3, v4, v5}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 663
    invoke-virtual {v1, v2}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    .line 664
    invoke-virtual {p0, v1}, Lcom/a/a/a/m;->b(Lcom/a/a/a/m;)V

    .line 688
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 669
    goto :goto_0

    :cond_1
    move v1, v0

    .line 674
    :goto_1
    invoke-virtual {p0}, Lcom/a/a/a/m;->c()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 676
    invoke-virtual {p0, v1}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/a/a/a/m;->i()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 681
    invoke-virtual {v0}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 684
    goto :goto_0

    .line 674
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 688
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static a(Lcom/a/a/a/m;Lcom/a/a/a/a/b;ZLcom/a/a/b/d;)Lcom/a/a/a/m;
    .locals 9

    .prologue
    const/16 v4, 0x66

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/a/b;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty XMPPath"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 209
    :cond_1
    invoke-virtual {p1, v3}, Lcom/a/a/a/a/b;->a(I)Lcom/a/a/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-static {p0, v0, v2, p2}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v1

    .line 214
    if-nez v1, :cond_3

    .line 286
    :cond_2
    :goto_0
    return-object v2

    .line 218
    :cond_3
    invoke-virtual {v1}, Lcom/a/a/a/m;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 220
    invoke-virtual {v1, v3}, Lcom/a/a/a/m;->a(Z)V

    move-object v0, v1

    :goto_1
    move v4, v5

    move-object v3, v0

    .line 228
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/a/a/b;->a()I

    move-result v0

    if-ge v4, v0, :cond_11

    .line 230
    invoke-virtual {p1, v4}, Lcom/a/a/a/a/b;->a(I)Lcom/a/a/a/a/d;

    move-result-object v0

    iget v6, v0, Lcom/a/a/a/a/d;->b:I

    if-ne v6, v5, :cond_5

    iget-object v0, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v1

    .line 231
    :goto_3
    if-nez v1, :cond_e

    .line 233
    if-eqz p2, :cond_2

    .line 236
    invoke-static {v3}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;)V
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 271
    if-eqz v3, :cond_4

    .line 273
    invoke-static {v3}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;)V

    .line 275
    :cond_4
    throw v0

    .line 230
    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    :try_start_1
    iget-object v0, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v0, Lcom/a/a/a/o;->a:Z

    if-nez v0, :cond_6

    const-string v0, "?"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    invoke-virtual {v1, v6}, Lcom/a/a/a/m;->b(Ljava/lang/String;)Lcom/a/a/a/m;

    move-result-object v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    new-instance v0, Lcom/a/a/a/m;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Lcom/a/a/b/d;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/a/a/a/m;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    :cond_7
    move-object v1, v0

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/a/b/d;->d()Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Indexing applied to non-array"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    iget-object v0, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/a/a/a/o;->c(Lcom/a/a/a/m;Ljava/lang/String;Z)I

    move-result v0

    :goto_4
    if-lez v0, :cond_14

    invoke-virtual {v1}, Lcom/a/a/a/m;->c()I

    move-result v6

    if-gt v0, v6, :cond_14

    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v1

    goto :goto_3

    :cond_a
    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    invoke-virtual {v1}, Lcom/a/a/a/m;->c()I

    move-result v0

    goto :goto_4

    :cond_b
    const/4 v7, 0x6

    if-ne v6, v7, :cond_c

    iget-object v0, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/a/i;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-static {v1, v6, v0}, Lcom/a/a/a/o;->c(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_c
    const/4 v7, 0x5

    if-ne v6, v7, :cond_d

    iget-object v6, v0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/a/a/a/i;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    iget v0, v0, Lcom/a/a/a/a/d;->d:I

    invoke-static {v1, v7, v6, v0}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_4

    :cond_d
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Unknown array indexing step in FollowXPathStep"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 240
    :cond_e
    invoke-virtual {v1}, Lcom/a/a/a/m;->m()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 243
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->a(Z)V

    .line 247
    if-ne v4, v5, :cond_10

    invoke-virtual {p1, v4}, Lcom/a/a/a/a/b;->a(I)Lcom/a/a/a/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/a/a/a/a/d;->c:Z

    if-eqz v0, :cond_10

    invoke-virtual {p1, v4}, Lcom/a/a/a/a/b;->a(I)Lcom/a/a/a/a/d;

    move-result-object v0

    iget v0, v0, Lcom/a/a/a/a/d;->d:I

    if-eqz v0, :cond_10

    .line 251
    invoke-virtual {v1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v4}, Lcom/a/a/a/a/b;->a(I)Lcom/a/a/a/a/d;

    move-result-object v6

    iget v6, v6, Lcom/a/a/a/a/d;->d:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/a/a/b/d;->a(IZ)V

    .line 261
    :cond_f
    :goto_5
    if-nez v3, :cond_13

    move-object v0, v1

    .line 228
    :goto_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v0

    goto/16 :goto_2

    .line 254
    :cond_10
    invoke-virtual {p1}, Lcom/a/a/a/a/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_f

    invoke-virtual {p1, v4}, Lcom/a/a/a/a/b;->a(I)Lcom/a/a/a/a/d;

    move-result-object v0

    iget v0, v0, Lcom/a/a/a/a/d;->b:I

    if-ne v0, v5, :cond_f

    invoke-virtual {v1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->n()Z

    move-result v0

    if-nez v0, :cond_f

    .line 258
    invoke-virtual {v1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/a/a/b/d;->d(Z)Lcom/a/a/b/d;
    :try_end_1
    .catch Lcom/a/a/b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 279
    :cond_11
    if-eqz v3, :cond_12

    .line 282
    invoke-virtual {v1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/a/a/b/d;->a(Lcom/a/a/b/d;)V

    .line 283
    invoke-virtual {v1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->a(Lcom/a/a/b/d;)V

    :cond_12
    move-object v2, v1

    .line 286
    goto/16 :goto_0

    :cond_13
    move-object v0, v3

    goto :goto_6

    :cond_14
    move-object v1, v2

    goto/16 :goto_3

    :cond_15
    move-object v0, v2

    goto/16 :goto_1
.end method

.method static a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;Z)Lcom/a/a/a/m;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    sget-boolean v0, Lcom/a/a/a/o;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/m;->a()Lcom/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/a/m;->a(Ljava/lang/String;)Lcom/a/a/a/m;

    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 104
    new-instance v1, Lcom/a/a/a/m;

    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/b/d;-><init>()V

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, v3}, Lcom/a/a/b/d;->a(IZ)V

    invoke-direct {v1, p1, v0}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 107
    invoke-virtual {v1, v3}, Lcom/a/a/a/m;->a(Z)V

    .line 110
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 113
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_1
    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    move-object v0, v1

    .line 130
    :cond_2
    return-object v0

    .line 120
    :cond_3
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Unregistered schema namespace URI"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static a(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/a/a/b/d;)Lcom/a/a/b/d;
    .locals 1

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 354
    new-instance p0, Lcom/a/a/b/d;

    invoke-direct {p0}, Lcom/a/a/b/d;-><init>()V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/b/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/a/a/b/d;->j()Lcom/a/a/b/d;

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/a/a/b/d;->h()Lcom/a/a/b/d;

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/b/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/a/a/b/d;->f()Lcom/a/a/b/d;

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/a/a/b/d;->n()Z

    .line 374
    iget v0, p0, Lcom/a/a/b/b;->a:I

    invoke-virtual {p0, v0}, Lcom/a/a/b/d;->c(I)V

    .line 380
    return-object p0
.end method

.method static a(Lcom/a/a/a/m;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 747
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    const/4 v3, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 753
    invoke-virtual {v0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 760
    :goto_0
    if-eqz v0, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->l()Lcom/a/a/b/d;

    .line 763
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/a/a/a/m;->c()I

    move-result v3

    if-gt v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/a/m;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "x-default"

    invoke-virtual {v3, v2}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->b(I)V

    invoke-virtual {p0, v3}, Lcom/a/a/a/m;->b(Lcom/a/a/a/m;)V
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v0

    invoke-virtual {v3}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    .line 766
    :cond_2
    return-void

    .line 763
    :catch_0
    move-exception v2

    sget-boolean v2, Lcom/a/a/a/o;->a:Z

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method static a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 780
    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "[]"

    invoke-direct {v0, v1, p2, v3}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 781
    new-instance v1, Lcom/a/a/a/m;

    const-string v2, "xml:lang"

    invoke-direct {v1, v2, p1, v3}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 782
    invoke-virtual {v0, v1}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    .line 784
    const-string v2, "x-default"

    invoke-virtual {v1}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->b(Lcom/a/a/a/m;)V

    goto :goto_0
.end method

.method static b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;
    .locals 4

    .prologue
    const/16 v3, 0x66

    const/4 v2, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/a/a/a/m;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Named children only allowed for schemas and structs"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Named children not allowed for arrays"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 162
    :cond_1
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/a/a/b/d;->d(Z)Lcom/a/a/b/d;

    .line 168
    :cond_2
    invoke-virtual {p0, p1}, Lcom/a/a/a/m;->a(Ljava/lang/String;)Lcom/a/a/a/m;

    move-result-object v0

    .line 170
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 172
    new-instance v1, Lcom/a/a/b/d;

    invoke-direct {v1}, Lcom/a/a/b/d;-><init>()V

    .line 173
    new-instance v0, Lcom/a/a/a/m;

    invoke-direct {v0, p1, v1}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 174
    invoke-virtual {v0, v2}, Lcom/a/a/a/m;->a(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    .line 178
    :cond_3
    sget-boolean v1, Lcom/a/a/a/o;->a:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_4
    return-object v0
.end method

.method private static b(Lcom/a/a/a/m;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/a/a/a/m;->a()Lcom/a/a/a/m;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/b/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0, p0}, Lcom/a/a/a/m;->e(Lcom/a/a/a/m;)V

    .line 311
    :goto_0
    invoke-virtual {v0}, Lcom/a/a/a/m;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/b/d;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/a/a/a/m;->a()Lcom/a/a/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/a/m;->c(Lcom/a/a/a/m;)V

    .line 315
    :cond_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {v0, p0}, Lcom/a/a/a/m;->c(Lcom/a/a/a/m;)V

    goto :goto_0
.end method

.method static b(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x66

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 819
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Localized text array is not alt-text"

    invoke-direct {v0, v1, v10}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/m;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 825
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v4

    aput-object v1, v0, v8

    .line 887
    :goto_0
    return-object v0

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    move v3, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 835
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 838
    invoke-virtual {v0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/b/d;->n()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 840
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Alt-text array item is not simple"

    invoke-direct {v0, v1, v10}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 842
    :cond_2
    invoke-virtual {v0}, Lcom/a/a/a/m;->h()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "xml:lang"

    invoke-virtual {v0, v8}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 845
    :cond_3
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Alt-text array item has no language qualifier"

    invoke-direct {v0, v1, v10}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 849
    :cond_4
    invoke-virtual {v0, v8}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v6

    .line 852
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 854
    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    aput-object v0, v1, v8

    move-object v0, v1

    goto :goto_0

    .line 856
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 858
    if-nez v2, :cond_c

    .line 863
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_1

    .line 865
    :cond_6
    const-string v7, "x-default"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_3
    move-object v1, v0

    .line 869
    goto :goto_1

    .line 872
    :cond_7
    if-ne v3, v8, :cond_8

    .line 874
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    aput-object v2, v0, v8

    goto/16 :goto_0

    .line 876
    :cond_8
    if-le v3, v8, :cond_9

    .line 878
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    aput-object v2, v0, v8

    goto/16 :goto_0

    .line 880
    :cond_9
    if-eqz v1, :cond_a

    .line 882
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v4

    aput-object v1, v0, v8

    goto/16 :goto_0

    .line 887
    :cond_a
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    invoke-virtual {p0, v8}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v1

    aput-object v1, v0, v8

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto :goto_3

    :cond_c
    move-object v0, v2

    goto :goto_2
.end method

.method private static c(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 607
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 609
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/a/m;->c()I

    move-result v3

    if-gt v0, v3, :cond_3

    if-gez v2, :cond_3

    .line 611
    invoke-virtual {p0, v0}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v4

    .line 613
    invoke-virtual {v4}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/b/d;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 615
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Field selector must be used on array of struct"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    move v3, v1

    .line 619
    :goto_1
    invoke-virtual {v4}, Lcom/a/a/a/m;->c()I

    move-result v5

    if-gt v3, v5, :cond_1

    .line 621
    invoke-virtual {v4, v3}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v5

    .line 622
    invoke-virtual {v5}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 624
    invoke-virtual {v5}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v0

    .line 609
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 634
    :cond_3
    return v2
.end method

.method private static c(Lcom/a/a/a/m;Ljava/lang/String;Z)I
    .locals 5

    .prologue
    const/16 v3, 0x66

    const/4 v4, 0x1

    .line 564
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 570
    if-gtz v0, :cond_0

    .line 572
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Array index must be larger than zero"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :catch_0
    move-exception v0

    new-instance v0, Lcom/a/a/b;

    const-string v1, "Array index not digits."

    invoke-direct {v0, v1, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 581
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/m;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 584
    new-instance v1, Lcom/a/a/a/m;

    const-string v2, "[]"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 585
    invoke-virtual {v1, v4}, Lcom/a/a/a/m;->a(Z)V

    .line 586
    invoke-virtual {p0, v1}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    .line 589
    :cond_1
    return v0
.end method
