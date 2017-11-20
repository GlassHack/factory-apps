.class final Ldagger/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ldagger/internal/ArrayQueue;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Ldagger/internal/ArrayQueue;)V
    .locals 1

    .prologue
    .line 353
    iput-object p1, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iget-object v0, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v0}, Ldagger/internal/ArrayQueue;->access$100(Ldagger/internal/ArrayQueue;)I

    move-result v0

    iput v0, p0, Ldagger/internal/b;->b:I

    .line 363
    iget-object v0, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v0}, Ldagger/internal/ArrayQueue;->access$200(Ldagger/internal/ArrayQueue;)I

    move-result v0

    iput v0, p0, Ldagger/internal/b;->c:I

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Ldagger/internal/b;->d:I

    return-void
.end method

.method synthetic constructor <init>(Ldagger/internal/ArrayQueue;Ldagger/internal/a;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0, p1}, Ldagger/internal/b;-><init>(Ldagger/internal/ArrayQueue;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Ldagger/internal/b;->b:I

    iget v1, p0, Ldagger/internal/b;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 378
    iget v0, p0, Ldagger/internal/b;->b:I

    iget v1, p0, Ldagger/internal/b;->c:I

    if-ne v0, v1, :cond_0

    .line 379
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v0}, Ldagger/internal/ArrayQueue;->access$300(Ldagger/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ldagger/internal/b;->b:I

    aget-object v0, v0, v1

    .line 383
    iget-object v1, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v1}, Ldagger/internal/ArrayQueue;->access$200(Ldagger/internal/ArrayQueue;)I

    move-result v1

    iget v2, p0, Ldagger/internal/b;->c:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 384
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 385
    :cond_2
    iget v1, p0, Ldagger/internal/b;->b:I

    iput v1, p0, Ldagger/internal/b;->d:I

    .line 386
    iget v1, p0, Ldagger/internal/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v2}, Ldagger/internal/ArrayQueue;->access$300(Ldagger/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ldagger/internal/b;->b:I

    .line 387
    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Ldagger/internal/b;->d:I

    if-gez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 394
    :cond_0
    iget-object v0, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    iget v1, p0, Ldagger/internal/b;->d:I

    invoke-static {v0, v1}, Ldagger/internal/ArrayQueue;->access$400(Ldagger/internal/ArrayQueue;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget v0, p0, Ldagger/internal/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v1}, Ldagger/internal/ArrayQueue;->access$300(Ldagger/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ldagger/internal/b;->b:I

    .line 396
    iget-object v0, p0, Ldagger/internal/b;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v0}, Ldagger/internal/ArrayQueue;->access$200(Ldagger/internal/ArrayQueue;)I

    move-result v0

    iput v0, p0, Ldagger/internal/b;->c:I

    .line 398
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Ldagger/internal/b;->d:I

    .line 399
    return-void
.end method
