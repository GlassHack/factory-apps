.class public final Lcom/google/common/collect/ec;
.super Lcom/google/common/collect/dr;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/google/common/collect/dr;-><init>()V

    .line 354
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ec;->b:Ljava/util/Comparator;

    .line 355
    return-void
.end method

.method private b(Ljava/util/Map;)Lcom/google/common/collect/ec;
    .locals 3

    .prologue
    .line 391
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 392
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/ec;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ec;

    goto :goto_0

    .line 394
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/common/collect/ec;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/ec;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$000(Ljava/util/List;Ljava/util/Comparator;)V

    .line 406
    iget-object v0, p0, Lcom/google/common/collect/ec;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/ec;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$100(Ljava/util/List;Ljava/util/Comparator;)V

    .line 407
    iget-object v0, p0, Lcom/google/common/collect/ec;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/ec;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/Map;)Lcom/google/common/collect/dr;
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/google/common/collect/ec;->b(Ljava/util/Map;)Lcom/google/common/collect/ec;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ec;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/common/collect/ec;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    return-object p0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/google/common/collect/ec;->a()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ec;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ec;

    move-result-object v0

    return-object v0
.end method
