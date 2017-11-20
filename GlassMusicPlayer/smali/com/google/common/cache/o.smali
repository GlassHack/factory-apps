.class final Lcom/google/common/cache/o;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/cache/y;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3672
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3673
    new-instance v0, Lcom/google/common/cache/p;

    invoke-direct {v0, p0}, Lcom/google/common/cache/p;-><init>(Lcom/google/common/cache/o;)V

    iput-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    return-void
.end method

.method private a()Lcom/google/common/cache/y;
    .locals 2

    .prologue
    .line 3722
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    .line 3723
    iget-object v1, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/google/common/cache/y;)Z
    .locals 2

    .prologue
    .line 3712
    invoke-interface {p1}, Lcom/google/common/cache/y;->getPreviousInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 3715
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getPreviousInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 3716
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-static {p1, v0}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 3718
    const/4 v0, 0x1

    return v0
.end method

.method private b()Lcom/google/common/cache/y;
    .locals 2

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    .line 3728
    iget-object v1, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    if-ne v0, v1, :cond_0

    .line 3729
    const/4 v0, 0x0

    .line 3733
    :goto_0
    return-object v0

    .line 3732
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/o;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    .line 3773
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    if-eq v0, v1, :cond_0

    .line 3774
    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v1

    .line 3775
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;)V

    move-object v0, v1

    .line 3777
    goto :goto_0

    .line 3779
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    iget-object v1, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-interface {v0, v1}, Lcom/google/common/cache/y;->setNextInAccessQueue(Lcom/google/common/cache/y;)V

    .line 3780
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    iget-object v1, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-interface {v0, v1}, Lcom/google/common/cache/y;->setPreviousInAccessQueue(Lcom/google/common/cache/y;)V

    .line 3781
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3751
    check-cast p1, Lcom/google/common/cache/y;

    .line 3752
    invoke-interface {p1}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

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
    .line 3757
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

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
    .line 3785
    new-instance v0, Lcom/google/common/cache/q;

    invoke-direct {p0}, Lcom/google/common/cache/o;->a()Lcom/google/common/cache/y;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/q;-><init>(Lcom/google/common/cache/o;Lcom/google/common/cache/y;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3672
    check-cast p1, Lcom/google/common/cache/y;

    invoke-direct {p0, p1}, Lcom/google/common/cache/o;->a(Lcom/google/common/cache/y;)Z

    move-result v0

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3672
    invoke-direct {p0}, Lcom/google/common/cache/o;->a()Lcom/google/common/cache/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3672
    invoke-direct {p0}, Lcom/google/common/cache/o;->b()Lcom/google/common/cache/y;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3739
    check-cast p1, Lcom/google/common/cache/y;

    .line 3740
    invoke-interface {p1}, Lcom/google/common/cache/y;->getPreviousInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    .line 3741
    invoke-interface {p1}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v1

    .line 3742
    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/y;Lcom/google/common/cache/y;)V

    .line 3743
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/y;)V

    .line 3745
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
    .line 3762
    const/4 v1, 0x0

    .line 3763
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    if-eq v0, v2, :cond_0

    .line 3765
    add-int/lit8 v1, v1, 0x1

    .line 3763
    invoke-interface {v0}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    goto :goto_0

    .line 3767
    :cond_0
    return v1
.end method
