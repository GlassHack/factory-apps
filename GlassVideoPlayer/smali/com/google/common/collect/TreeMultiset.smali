.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/aj;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient header:Lcom/google/common/collect/oj;

.field private final transient range:Lcom/google/common/collect/GeneralRange;

.field private final transient rootReference:Lcom/google/common/collect/ok;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ok;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/oj;)V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p2}, Lcom/google/common/collect/GeneralRange;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/aj;-><init>(Ljava/util/Comparator;)V

    .line 114
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    .line 115
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 116
    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0, p1}, Lcom/google/common/collect/aj;-><init>(Ljava/util/Comparator;)V

    .line 121
    invoke-static {p1}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 122
    new-instance v0, Lcom/google/common/collect/oj;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/oj;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    .line 123
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    .line 124
    new-instance v0, Lcom/google/common/collect/ok;

    invoke-direct {v0, v2}, Lcom/google/common/collect/ok;-><init>(Lcom/google/common/collect/of;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    .line 125
    return-void
.end method

.method static synthetic access$1200(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->firstNode()Lcom/google/common/collect/oj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/oj;)Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeMultiset;->wrapEntry(Lcom/google/common/collect/oj;)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->lastNode()Lcom/google/common/collect/oj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    return-void
.end method

.method private aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/oj;)J
    .locals 4
    .param p2    # Lcom/google/common/collect/oj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    if-nez p2, :cond_0

    .line 196
    const-wide/16 v0, 0x0

    .line 211
    :goto_0
    return-wide v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/oj;->d(Lcom/google/common/collect/oj;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 199
    if-lez v0, :cond_1

    .line 200
    invoke-static {p2}, Lcom/google/common/collect/oj;->f(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/oj;)J

    move-result-wide v0

    goto :goto_0

    .line 201
    :cond_1
    if-nez v0, :cond_2

    .line 202
    sget-object v0, Lcom/google/common/collect/oi;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 208
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/oj;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/oj;->f(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/oj;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 206
    :pswitch_1
    invoke-static {p2}, Lcom/google/common/collect/oj;->f(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/oj;)J

    move-result-wide v0

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {p2}, Lcom/google/common/collect/oj;->f(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/oj;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/oj;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p2}, Lcom/google/common/collect/oj;->e(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/oj;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/oj;)J
    .locals 4
    .param p2    # Lcom/google/common/collect/oj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 173
    if-nez p2, :cond_0

    .line 174
    const-wide/16 v0, 0x0

    .line 189
    :goto_0
    return-wide v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/oj;->d(Lcom/google/common/collect/oj;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 177
    if-gez v0, :cond_1

    .line 178
    invoke-static {p2}, Lcom/google/common/collect/oj;->e(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/oj;)J

    move-result-wide v0

    goto :goto_0

    .line 179
    :cond_1
    if-nez v0, :cond_2

    .line 180
    sget-object v0, Lcom/google/common/collect/oi;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 182
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/oj;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/oj;->e(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/oj;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-static {p2}, Lcom/google/common/collect/oj;->e(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/oj;)J

    move-result-wide v0

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {p2}, Lcom/google/common/collect/oj;->e(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/oj;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$Aggregate;->nodeAggregate(Lcom/google/common/collect/oj;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p2}, Lcom/google/common/collect/oj;->f(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/oj;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    .line 162
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;->treeAggregate(Lcom/google/common/collect/oj;)J

    move-result-wide v1

    .line 163
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateBelowRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/oj;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateAboveRange(Lcom/google/common/collect/TreeMultiset$Aggregate;Lcom/google/common/collect/oj;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 169
    :cond_1
    return-wide v1
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 104
    invoke-static {v0, p0}, Lcom/google/common/collect/eg;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 105
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    if-nez p0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static distinctElements(Lcom/google/common/collect/oj;)I
    .locals 1
    .param p0    # Lcom/google/common/collect/oj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 489
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/oj;->c(Lcom/google/common/collect/oj;)I

    move-result v0

    goto :goto_0
.end method

.method private firstNode()Lcom/google/common/collect/oj;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    .line 357
    if-nez v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-object v1

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getLowerEndpoint()Ljava/lang/Object;

    move-result-object v2

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/common/collect/oj;->a(Lcom/google/common/collect/oj;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    .line 367
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->getLowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/oj;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    .line 369
    invoke-static {v0}, Lcom/google/common/collect/oj;->g(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    .line 374
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0}, Lcom/google/common/collect/oj;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    move-object v1, v0

    goto :goto_0

    .line 372
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    invoke-static {v0}, Lcom/google/common/collect/oj;->g(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    goto :goto_1
.end method

.method private lastNode()Lcom/google/common/collect/oj;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    .line 380
    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-object v1

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0}, Lcom/google/common/collect/GeneralRange;->getUpperEndpoint()Ljava/lang/Object;

    move-result-object v2

    .line 386
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/common/collect/oj;->b(Lcom/google/common/collect/oj;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 390
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3}, Lcom/google/common/collect/GeneralRange;->getUpperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/oj;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    .line 392
    invoke-static {v0}, Lcom/google/common/collect/oj;->h(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    .line 397
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0}, Lcom/google/common/collect/oj;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    move-object v1, v0

    goto :goto_0

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    invoke-static {v0}, Lcom/google/common/collect/oj;->h(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 953
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 956
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 957
    const-class v1, Lcom/google/common/collect/aj;

    const-string v2, "comparator"

    invoke-static {v1, v2}, Lcom/google/common/collect/lt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/lv;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/lv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 958
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "range"

    invoke-static {v1, v2}, Lcom/google/common/collect/lt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/lv;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/lv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 960
    const-class v0, Lcom/google/common/collect/TreeMultiset;

    const-string v1, "rootReference"

    invoke-static {v0, v1}, Lcom/google/common/collect/lt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/lv;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ok;

    invoke-direct {v1, v3}, Lcom/google/common/collect/ok;-><init>(Lcom/google/common/collect/of;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/lv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 962
    new-instance v0, Lcom/google/common/collect/oj;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lcom/google/common/collect/oj;-><init>(Ljava/lang/Object;I)V

    .line 963
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "header"

    invoke-static {v1, v2}, Lcom/google/common/collect/lt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/lv;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/lv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 964
    invoke-static {v0, v0}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    .line 965
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/kp;Ljava/io/ObjectInputStream;)V

    .line 966
    return-void
.end method

.method private static successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V
    .locals 0

    .prologue
    .line 925
    invoke-static {p0, p1}, Lcom/google/common/collect/oj;->a(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    .line 926
    invoke-static {p1, p0}, Lcom/google/common/collect/oj;->b(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    .line 927
    return-void
.end method

.method private static successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V
    .locals 0

    .prologue
    .line 930
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    .line 931
    invoke-static {p1, p2}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    .line 932
    return-void
.end method

.method private wrapEntry(Lcom/google/common/collect/oj;)Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/google/common/collect/of;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/of;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/oj;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 946
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 947
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 948
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/kp;Ljava/io/ObjectOutputStream;)V

    .line 949
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "occurrences must be >= 0 but was %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 246
    if-nez p2, :cond_1

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 261
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 250
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    .line 251
    if-nez v0, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 253
    new-instance v1, Lcom/google/common/collect/oj;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/oj;-><init>(Ljava/lang/Object;I)V

    .line 254
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    invoke-static {v3, v1, v4}, Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    .line 255
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/ok;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 258
    :cond_2
    new-array v1, v1, [I

    .line 259
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/ok;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    aget v2, v1, v2

    goto :goto_1
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/common/collect/aj;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/common/collect/aj;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->clear()V

    return-void
.end method

.method public final bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/common/collect/aj;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 230
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    .line 232
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 239
    :goto_0
    return v0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 239
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method final descendingEntryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lcom/google/common/collect/oh;

    invoke-direct {v0, p0}, Lcom/google/common/collect/oh;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public final bridge synthetic descendingMultiset()Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->descendingMultiset()Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method final distinctElements()I
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->DISTINCT:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 402
    new-instance v0, Lcom/google/common/collect/og;

    invoke-direct {v0, p0}, Lcom/google/common/collect/og;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/common/collect/aj;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic firstEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->firstEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->hashCode()I

    move-result v0

    return v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 479
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/GeneralRange;->upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/ok;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/oj;)V

    return-object v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic lastEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->lastEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic pollFirstEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->pollFirstEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic pollLastEntry()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->pollLastEntry()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    if-ltz p2, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "occurrences must be >= 0 but was %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    if-nez p2, :cond_2

    .line 268
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 286
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 266
    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    .line 271
    new-array v1, v1, [I

    .line 276
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/oj;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 285
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/ok;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    aget v2, v1, v2

    goto :goto_1

    .line 283
    :catch_0
    move-exception v0

    goto :goto_1

    .line 281
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/common/collect/aj;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/common/collect/aj;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/common/collect/aj;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    if-ltz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 292
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 293
    if-nez p2, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ah;->a(Z)V

    .line 307
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 291
    goto :goto_0

    :cond_2
    move v1, v2

    .line 293
    goto :goto_1

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    .line 298
    if-nez v0, :cond_4

    .line 299
    if-lez p2, :cond_0

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    goto :goto_2

    .line 304
    :cond_4
    new-array v1, v1, [I

    .line 305
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/oj;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;

    move-result-object v3

    .line 306
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/ok;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    aget v2, v1, v2

    goto :goto_2
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 312
    if-ltz p3, :cond_1

    move v0, v6

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 313
    if-ltz p2, :cond_2

    move v0, v6

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 314
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 316
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v0}, Lcom/google/common/collect/ok;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    .line 317
    if-nez v0, :cond_4

    .line 318
    if-nez p2, :cond_3

    .line 319
    if-lez p3, :cond_0

    .line 320
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    .line 330
    :cond_0
    :goto_2
    return v6

    :cond_1
    move v0, v7

    .line 312
    goto :goto_0

    :cond_2
    move v0, v7

    .line 313
    goto :goto_1

    :cond_3
    move v6, v7

    .line 324
    goto :goto_2

    .line 327
    :cond_4
    new-array v5, v6, [I

    .line 328
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/oj;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/ok;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    aget v0, v5, v7

    if-eq v0, p2, :cond_0

    move v6, v7

    goto :goto_2
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/google/common/collect/TreeMultiset$Aggregate;->SIZE:Lcom/google/common/collect/TreeMultiset$Aggregate;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->aggregateForEntries(Lcom/google/common/collect/TreeMultiset$Aggregate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/aj;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;

    move-result-object v0

    return-object v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/mf;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 484
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/ok;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/common/collect/GeneralRange;->downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/oj;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/ok;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/oj;)V

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/common/collect/aj;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
