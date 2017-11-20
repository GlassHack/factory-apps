.class Lcom/google/common/collect/RegularImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "SourceFile"


# instance fields
.field private final transient map:Lcom/google/common/collect/ImmutableMap;

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    .line 40
    iput p2, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Map$Entry;)Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/common/collect/RegularImmutableMultiset;->entryFromMapEntry(Ljava/util/Map$Entry;)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method private static entryFromMapEntry(Ljava/util/Map$Entry;)Lcom/google/common/collect/kq;
    .locals 2

    .prologue
    .line 67
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 50
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMultiset;Lcom/google/common/collect/lm;)V

    return-object v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    return v0
.end method
