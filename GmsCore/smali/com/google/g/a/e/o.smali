.class public final Lcom/google/g/a/e/o;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/Iterator;

.field private synthetic d:Lcom/google/g/a/e/n;


# direct methods
.method public constructor <init>(Lcom/google/g/a/e/n;)V
    .locals 1

    iput-object p1, p0, Lcom/google/g/a/e/o;->d:Lcom/google/g/a/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/g/a/e/o;->a:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/g/a/e/o;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/g/a/e/o;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/g/a/e/o;->b:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/g/a/e/o;->a:I

    iget-object v2, p0, Lcom/google/g/a/e/o;->d:Lcom/google/g/a/e/n;

    iget v2, v2, Lcom/google/g/a/e/n;->c:I

    if-gt v0, v2, :cond_2

    :goto_1
    iget v0, p0, Lcom/google/g/a/e/o;->a:I

    iget-object v2, p0, Lcom/google/g/a/e/o;->d:Lcom/google/g/a/e/n;

    iget v2, v2, Lcom/google/g/a/e/n;->c:I

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/g/a/e/o;->d:Lcom/google/g/a/e/n;

    iget-object v0, v0, Lcom/google/g/a/e/n;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/g/a/e/o;->a:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/g/a/e/o;->a:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/g/a/e/o;->a:I

    iput v0, p0, Lcom/google/g/a/e/o;->b:I

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/g/a/e/o;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/g/a/e/o;->a:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/g/a/e/o;->d:Lcom/google/g/a/e/n;

    iget-object v0, v0, Lcom/google/g/a/e/n;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/g/a/e/o;->c:Ljava/util/Iterator;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/g/a/e/o;->d:Lcom/google/g/a/e/n;

    iget-object v0, v0, Lcom/google/g/a/e/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/g/a/e/o;->c:Ljava/util/Iterator;

    :cond_3
    iget-object v0, p0, Lcom/google/g/a/e/o;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/g/a/e/o;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/g/a/e/o;->b:I

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/g/a/e/o;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/g/a/e/o;->b:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/g/a/e/o;->b:I

    return v0
.end method
