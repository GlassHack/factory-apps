.class public final Lcom/google/g/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/g/a/e/d;

.field private b:I

.field private c:I

.field private d:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/g/a/e/d;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/g/a/e/e;->a:Lcom/google/g/a/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/g/a/e/e;->b:I

    .line 41
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/g/a/e/e;->c:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/g/a/e/e;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 48
    iget v0, p0, Lcom/google/g/a/e/e;->c:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 70
    :goto_0
    return v0

    .line 51
    :cond_0
    iget v0, p0, Lcom/google/g/a/e/e;->b:I

    iget-object v2, p0, Lcom/google/g/a/e/e;->a:Lcom/google/g/a/e/d;

    iget v2, v2, Lcom/google/g/a/e/d;->c:I

    if-gt v0, v2, :cond_2

    .line 52
    :goto_1
    iget v0, p0, Lcom/google/g/a/e/e;->b:I

    iget-object v2, p0, Lcom/google/g/a/e/e;->a:Lcom/google/g/a/e/d;

    iget v2, v2, Lcom/google/g/a/e/d;->c:I

    if-gt v0, v2, :cond_2

    .line 53
    iget-object v0, p0, Lcom/google/g/a/e/e;->a:Lcom/google/g/a/e/d;

    iget-object v0, v0, Lcom/google/g/a/e/d;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/g/a/e/e;->b:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 55
    iget v0, p0, Lcom/google/g/a/e/e;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/g/a/e/e;->b:I

    iput v0, p0, Lcom/google/g/a/e/e;->c:I

    move v0, v1

    .line 56
    goto :goto_0

    .line 52
    :cond_1
    iget v0, p0, Lcom/google/g/a/e/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/g/a/e/e;->b:I

    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/g/a/e/e;->a:Lcom/google/g/a/e/d;

    iget-object v0, v0, Lcom/google/g/a/e/d;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/google/g/a/e/e;->d:Ljava/util/Iterator;

    if-nez v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/google/g/a/e/e;->a:Lcom/google/g/a/e/d;

    iget-object v0, v0, Lcom/google/g/a/e/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/g/a/e/e;->d:Ljava/util/Iterator;

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/google/g/a/e/e;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/google/g/a/e/e;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/g/a/e/e;->c:I

    move v0, v1

    .line 67
    goto :goto_0

    .line 70
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/g/a/e/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget v0, p0, Lcom/google/g/a/e/e;->c:I

    .line 82
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/g/a/e/e;->c:I

    .line 83
    return v0
.end method
