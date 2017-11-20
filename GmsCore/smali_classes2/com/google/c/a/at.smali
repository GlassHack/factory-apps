.class abstract Lcom/google/c/a/at;
.super Lcom/google/c/a/a;
.source "SourceFile"


# instance fields
.field final c:Ljava/lang/CharSequence;

.field final d:Lcom/google/c/a/e;

.field final e:Z

.field f:I

.field g:I


# direct methods
.method protected constructor <init>(Lcom/google/c/a/am;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/google/c/a/a;-><init>()V

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/a/at;->f:I

    .line 489
    iget-object v0, p1, Lcom/google/c/a/am;->a:Lcom/google/c/a/e;

    iput-object v0, p0, Lcom/google/c/a/at;->d:Lcom/google/c/a/e;

    .line 490
    iget-boolean v0, p1, Lcom/google/c/a/am;->b:Z

    iput-boolean v0, p0, Lcom/google/c/a/at;->e:Z

    .line 491
    iget v0, p1, Lcom/google/c/a/am;->d:I

    iput v0, p0, Lcom/google/c/a/at;->g:I

    .line 492
    iput-object p2, p0, Lcom/google/c/a/at;->c:Ljava/lang/CharSequence;

    .line 493
    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 466
    :cond_0
    iget v0, p0, Lcom/google/c/a/at;->f:I

    if-eq v0, v5, :cond_7

    iget v1, p0, Lcom/google/c/a/at;->f:I

    iget v0, p0, Lcom/google/c/a/at;->f:I

    invoke-virtual {p0, v0}, Lcom/google/c/a/at;->a(I)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/google/c/a/at;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v5, p0, Lcom/google/c/a/at;->f:I

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/c/a/at;->d:Lcom/google/c/a/e;

    iget-object v3, p0, Lcom/google/c/a/at;->c:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/c/a/e;->b(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/c/a/at;->b(I)I

    move-result v2

    iput v2, p0, Lcom/google/c/a/at;->f:I

    goto :goto_0

    :cond_2
    :goto_1
    if-le v0, v1, :cond_3

    iget-object v2, p0, Lcom/google/c/a/at;->d:Lcom/google/c/a/e;

    iget-object v3, p0, Lcom/google/c/a/at;->c:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/c/a/e;->b(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/google/c/a/at;->e:Z

    if-eqz v2, :cond_4

    if-eq v1, v0, :cond_0

    :cond_4
    iget v2, p0, Lcom/google/c/a/at;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-object v0, p0, Lcom/google/c/a/at;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v5, p0, Lcom/google/c/a/at;->f:I

    :goto_2
    if-le v0, v1, :cond_6

    iget-object v2, p0, Lcom/google/c/a/at;->d:Lcom/google/c/a/e;

    iget-object v3, p0, Lcom/google/c/a/at;->c:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/c/a/e;->b(C)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/google/c/a/at;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/c/a/at;->g:I

    :cond_6
    iget-object v2, p0, Lcom/google/c/a/at;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/c/a/c;->c:Lcom/google/c/a/c;

    iput-object v0, p0, Lcom/google/c/a/a;->a:Lcom/google/c/a/c;

    const/4 v0, 0x0

    goto :goto_3
.end method

.method abstract b(I)I
.end method
