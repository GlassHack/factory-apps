.class final Lcom/google/common/collect/ms;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/mq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mq;)V
    .locals 1

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/common/collect/ms;->b:Lcom/google/common/collect/mq;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 617
    iget-object v0, p0, Lcom/google/common/collect/ms;->b:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ms;->a:Ljava/util/Iterator;

    return-void
.end method

.method private c()Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 621
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ms;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/google/common/collect/ms;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 623
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/ms;->b:Lcom/google/common/collect/mq;

    iget-object v2, v2, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    new-instance v1, Lcom/google/common/collect/mt;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/mt;-><init>(Lcom/google/common/collect/ms;Ljava/util/Map$Entry;)V

    move-object v0, v1

    .line 642
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ms;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/google/common/collect/ms;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
