.class final Lcom/google/h/a/b/b/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/ae;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/google/h/a/b/b/ad;

.field final synthetic e:Lcom/google/h/a/b/b/ac;

.field private f:Lcom/google/h/a/b/b/ad;


# direct methods
.method private constructor <init>(Lcom/google/h/a/b/b/ac;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/h/a/b/b/af;->e:Lcom/google/h/a/b/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/h/a/b/b/ac;B)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/google/h/a/b/b/af;-><init>(Lcom/google/h/a/b/b/ac;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/h/a/b/b/af;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 219
    iget v0, p0, Lcom/google/h/a/b/b/af;->b:I

    if-gtz v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements to iterate"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget v1, p0, Lcom/google/h/a/b/b/af;->c:I

    .line 224
    iget-object v0, p0, Lcom/google/h/a/b/b/af;->d:Lcom/google/h/a/b/b/ad;

    iput-object v0, p0, Lcom/google/h/a/b/b/af;->f:Lcom/google/h/a/b/b/ad;

    .line 225
    iget v0, p0, Lcom/google/h/a/b/b/af;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/h/a/b/b/af;->b:I

    .line 226
    iget v0, p0, Lcom/google/h/a/b/b/af;->b:I

    if-lez v0, :cond_2

    .line 227
    iget v0, p0, Lcom/google/h/a/b/b/af;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/h/a/b/b/af;->a:I

    .line 228
    iget v0, p0, Lcom/google/h/a/b/b/af;->a:I

    if-gez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/google/h/a/b/b/af;->e:Lcom/google/h/a/b/b/ac;

    iget v0, v0, Lcom/google/h/a/b/b/ac;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/h/a/b/b/af;->a:I

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/google/h/a/b/b/af;->e:Lcom/google/h/a/b/b/ac;

    iget-object v0, v0, Lcom/google/h/a/b/b/ac;->a:[[B

    aget-object v0, v0, v1

    iget v2, p0, Lcom/google/h/a/b/b/af;->a:I

    aget-byte v0, v0, v2

    iput v0, p0, Lcom/google/h/a/b/b/af;->c:I

    .line 234
    iget-object v0, p0, Lcom/google/h/a/b/b/af;->e:Lcom/google/h/a/b/b/ac;

    iget-object v0, v0, Lcom/google/h/a/b/b/ac;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/h/a/b/b/af;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/ad;

    iput-object v0, p0, Lcom/google/h/a/b/b/af;->d:Lcom/google/h/a/b/b/ad;

    .line 237
    :cond_2
    return v1
.end method
