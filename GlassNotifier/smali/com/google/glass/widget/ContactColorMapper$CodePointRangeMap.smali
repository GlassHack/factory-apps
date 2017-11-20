.class Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;
.super Ljava/lang/Object;
.source "ContactColorMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/ContactColorMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodePointRangeMap"
.end annotation


# instance fields
.field private treeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/widget/ContactColorMapper$ColorMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->treeMap:Ljava/util/TreeMap;

    .line 144
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/glass/widget/ContactColorMapper$ColorMapper;
    .locals 3
    .param p1, "codePoint"    # I

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->treeMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 163
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/glass/widget/ContactColorMapper$ColorMapper;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    goto :goto_0
.end method

.method public put(IILcom/google/glass/widget/ContactColorMapper$ColorMapper;)Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;
    .locals 3
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "mapper"    # Lcom/google/glass/widget/ContactColorMapper$ColorMapper;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->treeMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/google/glass/widget/ContactColorMapper$CodePointRangeMap;->treeMap:Ljava/util/TreeMap;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object p0
.end method
