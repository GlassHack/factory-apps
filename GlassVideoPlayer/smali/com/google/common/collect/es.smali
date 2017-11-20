.class final Lcom/google/common/collect/es;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Queue;

.field final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 3

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1304
    iput-object p2, p0, Lcom/google/common/collect/es;->b:Ljava/util/Comparator;

    .line 1308
    new-instance v0, Lcom/google/common/collect/et;

    invoke-direct {v0, p0}, Lcom/google/common/collect/et;-><init>(Lcom/google/common/collect/es;)V

    .line 1315
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/google/common/collect/es;->a:Ljava/util/Queue;

    .line 1317
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 1318
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    iget-object v2, p0, Lcom/google/common/collect/es;->a:Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/common/collect/ej;->f(Ljava/util/Iterator;)Lcom/google/common/collect/lb;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1322
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/google/common/collect/es;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/google/common/collect/es;->b()Ljava/lang/Object;

    move-result-object v0

    .line 1337
    :goto_0
    return-object v0

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/es;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/lb;

    .line 1331
    invoke-interface {v0}, Lcom/google/common/collect/lb;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1333
    invoke-interface {v0}, Lcom/google/common/collect/lb;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1334
    iget-object v2, p0, Lcom/google/common/collect/es;->a:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    .line 1337
    goto :goto_0
.end method
