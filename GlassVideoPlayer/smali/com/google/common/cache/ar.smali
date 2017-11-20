.class final Lcom/google/common/cache/ar;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/cache/y;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3537
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3538
    new-instance v0, Lcom/google/common/cache/as;

    invoke-direct {v0, p0}, Lcom/google/common/cache/as;-><init>(Lcom/google/common/cache/ar;)V

    iput-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    return-void
.end method

.method private a()Lcom/google/common/cache/y;
    .locals 2

    .prologue
    .line 3587
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    .line 3588
    iget-object v1, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/google/common/cache/y;)Z
    .locals 2

    .prologue
    .line 3577
    invoke-interface {p1}, Lcom/google/common/cache/y;->getPreviousInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 3580
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getPreviousInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 3581
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-static {p1, v0}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 3583
    const/4 v0, 0x1

    return v0
.end method

.method private b()Lcom/google/common/cache/y;
    .locals 2

    .prologue
    .line 3592
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    .line 3593
    iget-object v1, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    if-ne v0, v1, :cond_0

    .line 3594
    const/4 v0, 0x0

    .line 3598
    :goto_0
    return-object v0

    .line 3597
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/ar;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    .line 3638
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    if-eq v0, v1, :cond_0

    .line 3639
    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v1

    .line 3640
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->c(Lcom/google/common/cache/y;)V

    move-object v0, v1

    .line 3642
    goto :goto_0

    .line 3644
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    iget-object v1, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-interface {v0, v1}, Lcom/google/common/cache/y;->setNextInWriteQueue(Lcom/google/common/cache/y;)V

    .line 3645
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    iget-object v1, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-interface {v0, v1}, Lcom/google/common/cache/y;->setPreviousInWriteQueue(Lcom/google/common/cache/y;)V

    .line 3646
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3616
    check-cast p1, Lcom/google/common/cache/y;

    .line 3617
    invoke-interface {p1}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    sget-object v1, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 3650
    new-instance v0, Lcom/google/common/cache/at;

    invoke-direct {p0}, Lcom/google/common/cache/ar;->a()Lcom/google/common/cache/y;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/at;-><init>(Lcom/google/common/cache/ar;Lcom/google/common/cache/y;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3537
    check-cast p1, Lcom/google/common/cache/y;

    invoke-direct {p0, p1}, Lcom/google/common/cache/ar;->a(Lcom/google/common/cache/y;)Z

    move-result v0

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3537
    invoke-direct {p0}, Lcom/google/common/cache/ar;->a()Lcom/google/common/cache/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3537
    invoke-direct {p0}, Lcom/google/common/cache/ar;->b()Lcom/google/common/cache/y;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3604
    check-cast p1, Lcom/google/common/cache/y;

    .line 3605
    invoke-interface {p1}, Lcom/google/common/cache/y;->getPreviousInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    .line 3606
    invoke-interface {p1}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v1

    .line 3607
    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 3608
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->c(Lcom/google/common/cache/y;)V

    .line 3610
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    .prologue
    .line 3627
    const/4 v1, 0x0

    .line 3628
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    if-eq v0, v2, :cond_0

    .line 3630
    add-int/lit8 v1, v1, 0x1

    .line 3628
    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    goto :goto_0

    .line 3632
    :cond_0
    return v1
.end method
