.class Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private treeMap:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->treeMap:Ljava/util/TreeMap;

    .line 146
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/glass/widget/ContactColorMapper$ColorMapper;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->treeMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    goto :goto_0
.end method

.method public put(IILcom/google/glass/widget/ContactColorMapper$ColorMapper;)Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->treeMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->treeMap:Ljava/util/TreeMap;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-object p0
.end method
