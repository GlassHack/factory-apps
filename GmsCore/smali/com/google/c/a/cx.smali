.class abstract Lcom/google/c/a/cx;
.super Lcom/google/c/a/be;


# instance fields
.field final b:Ljava/lang/CharSequence;

.field private c:Lcom/google/c/a/bi;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method protected constructor <init>(Lcom/google/c/a/ct;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/a/be;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/a/cx;->e:I

    iget-object v0, p1, Lcom/google/c/a/ct;->a:Lcom/google/c/a/bi;

    iput-object v0, p0, Lcom/google/c/a/cx;->c:Lcom/google/c/a/bi;

    iget-boolean v0, p1, Lcom/google/c/a/ct;->b:Z

    iput-boolean v0, p0, Lcom/google/c/a/cx;->d:Z

    iget v0, p1, Lcom/google/c/a/ct;->d:I

    iput v0, p0, Lcom/google/c/a/cx;->f:I

    iput-object p2, p0, Lcom/google/c/a/cx;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected final synthetic a()Ljava/lang/Object;
    .locals 6

    const/4 v5, -0x1

    iget v0, p0, Lcom/google/c/a/cx;->e:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/c/a/cx;->e:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/google/c/a/cx;->e:I

    invoke-virtual {p0, v1}, Lcom/google/c/a/cx;->a(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/google/c/a/cx;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v5, p0, Lcom/google/c/a/cx;->e:I

    :goto_1
    iget v2, p0, Lcom/google/c/a/cx;->e:I

    if-ne v2, v0, :cond_8

    iget v1, p0, Lcom/google/c/a/cx;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/c/a/cx;->e:I

    iget v1, p0, Lcom/google/c/a/cx;->e:I

    iget-object v2, p0, Lcom/google/c/a/cx;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    iput v5, p0, Lcom/google/c/a/cx;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/c/a/cx;->b(I)I

    move-result v2

    iput v2, p0, Lcom/google/c/a/cx;->e:I

    goto :goto_1

    :goto_2
    if-ge v2, v1, :cond_7

    iget-object v0, p0, Lcom/google/c/a/cx;->c:Lcom/google/c/a/bi;

    iget-object v3, p0, Lcom/google/c/a/cx;->b:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/c/a/bi;->a(C)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :goto_3
    if-le v0, v2, :cond_2

    iget-object v1, p0, Lcom/google/c/a/cx;->c:Lcom/google/c/a/bi;

    iget-object v3, p0, Lcom/google/c/a/cx;->b:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/c/a/bi;->a(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    move v0, v1

    goto :goto_3

    :cond_2
    iget-boolean v1, p0, Lcom/google/c/a/cx;->d:Z

    if-eqz v1, :cond_3

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/google/c/a/cx;->e:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/c/a/cx;->f:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    iget-object v0, p0, Lcom/google/c/a/cx;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v5, p0, Lcom/google/c/a/cx;->e:I

    :goto_4
    if-le v0, v2, :cond_5

    iget-object v1, p0, Lcom/google/c/a/cx;->c:Lcom/google/c/a/bi;

    iget-object v3, p0, Lcom/google/c/a/cx;->b:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/c/a/bi;->a(C)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    iget v1, p0, Lcom/google/c/a/cx;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/c/a/cx;->f:I

    :cond_5
    iget-object v1, p0, Lcom/google/c/a/cx;->b:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/google/c/a/bg;->c:Lcom/google/c/a/bg;

    iput-object v0, p0, Lcom/google/c/a/be;->a:Lcom/google/c/a/bg;

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_2
.end method

.method abstract b(I)I
.end method
