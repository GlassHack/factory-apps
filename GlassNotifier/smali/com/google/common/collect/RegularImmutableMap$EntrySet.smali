.class Lcom/google/common/collect/RegularImmutableMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient keyOffset:I

.field private final transient map:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V
    .locals 0
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "keyOffset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->map:Lcom/google/common/collect/ImmutableMap;

    .line 178
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 179
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->keyOffset:I

    .line 180
    iput p4, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->size:I

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    .prologue
    .line 170
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->size:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->alternatingKeysAndValues:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    .prologue
    .line 170
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->keyOffset:I

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    const/4 v3, 0x0

    .line 215
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 216
    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "k":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 219
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 221
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "v":Ljava/lang/Object;
    :cond_0
    return v3
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)V

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 226
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->size:I

    return v0
.end method
