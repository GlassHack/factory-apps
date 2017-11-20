.class abstract Lcom/google/common/base/aq;
.super Lcom/google/common/base/AbstractIterator;
.source "SourceFile"


# instance fields
.field final b:Ljava/lang/CharSequence;

.field final c:Lcom/google/common/base/c;

.field final d:Z

.field e:I

.field f:I


# direct methods
.method protected constructor <init>(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/aq;->e:I

    .line 517
    invoke-static {p1}, Lcom/google/common/base/ak;->a(Lcom/google/common/base/ak;)Lcom/google/common/base/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/aq;->c:Lcom/google/common/base/c;

    .line 518
    invoke-static {p1}, Lcom/google/common/base/ak;->b(Lcom/google/common/base/ak;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/aq;->d:Z

    .line 519
    invoke-static {p1}, Lcom/google/common/base/ak;->c(Lcom/google/common/base/ak;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/aq;->f:I

    .line 520
    iput-object p2, p0, Lcom/google/common/base/aq;->b:Ljava/lang/CharSequence;

    .line 521
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 531
    iget v0, p0, Lcom/google/common/base/aq;->e:I

    .line 532
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/aq;->e:I

    if-eq v1, v5, :cond_6

    .line 536
    iget v1, p0, Lcom/google/common/base/aq;->e:I

    invoke-virtual {p0, v1}, Lcom/google/common/base/aq;->a(I)I

    move-result v1

    .line 537
    if-ne v1, v5, :cond_1

    .line 538
    iget-object v1, p0, Lcom/google/common/base/aq;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 539
    iput v5, p0, Lcom/google/common/base/aq;->e:I

    .line 544
    :goto_1
    iget v2, p0, Lcom/google/common/base/aq;->e:I

    if-ne v2, v0, :cond_8

    .line 552
    iget v1, p0, Lcom/google/common/base/aq;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/base/aq;->e:I

    .line 553
    iget v1, p0, Lcom/google/common/base/aq;->e:I

    iget-object v2, p0, Lcom/google/common/base/aq;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 554
    iput v5, p0, Lcom/google/common/base/aq;->e:I

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/aq;->b(I)I

    move-result v2

    iput v2, p0, Lcom/google/common/base/aq;->e:I

    goto :goto_1

    .line 559
    :goto_2
    if-ge v2, v1, :cond_7

    iget-object v0, p0, Lcom/google/common/base/aq;->c:Lcom/google/common/base/c;

    iget-object v3, p0, Lcom/google/common/base/aq;->b:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/c;->b(C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 560
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 562
    :goto_3
    if-le v0, v2, :cond_2

    iget-object v1, p0, Lcom/google/common/base/aq;->c:Lcom/google/common/base/c;

    iget-object v3, p0, Lcom/google/common/base/aq;->b:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/c;->b(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    add-int/lit8 v1, v0, -0x1

    move v0, v1

    goto :goto_3

    .line 566
    :cond_2
    iget-boolean v1, p0, Lcom/google/common/base/aq;->d:Z

    if-eqz v1, :cond_3

    if-ne v2, v0, :cond_3

    .line 568
    iget v0, p0, Lcom/google/common/base/aq;->e:I

    goto :goto_0

    .line 572
    :cond_3
    iget v1, p0, Lcom/google/common/base/aq;->f:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 576
    iget-object v0, p0, Lcom/google/common/base/aq;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 577
    iput v5, p0, Lcom/google/common/base/aq;->e:I

    .line 579
    :goto_4
    if-le v0, v2, :cond_5

    iget-object v1, p0, Lcom/google/common/base/aq;->c:Lcom/google/common/base/c;

    iget-object v3, p0, Lcom/google/common/base/aq;->b:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/c;->b(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 580
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 583
    :cond_4
    iget v1, p0, Lcom/google/common/base/aq;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/base/aq;->f:I

    .line 586
    :cond_5
    iget-object v1, p0, Lcom/google/common/base/aq;->b:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/common/base/aq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_2
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/google/common/base/aq;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract b(I)I
.end method
