.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# static fields
.field private static final MAX_LOAD_FACTOR:D = 1.2

.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Lcom/google/common/collect/ll;

.field private final transient mask:I

.field private final transient table:[Lcom/google/common/collect/ll;


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 46
    array-length v5, p1

    .line 47
    invoke-direct {p0, v5}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/ll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ll;

    .line 49
    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-static {v5, v3, v4}, Lcom/google/common/collect/df;->a(ID)I

    move-result v0

    .line 50
    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/ll;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ll;

    .line 51
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    move v4, v2

    .line 53
    :goto_0
    if-ge v4, v5, :cond_2

    .line 56
    aget-object v3, p1, v4

    .line 57
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 58
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 59
    invoke-static {v0}, Lcom/google/common/collect/df;->a(I)I

    move-result v0

    iget v7, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v7, v0

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ll;

    aget-object v0, v0, v7

    .line 63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3, v0}, Lcom/google/common/collect/RegularImmutableMap;->newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ll;)Lcom/google/common/collect/ll;

    move-result-object v3

    .line 64
    iget-object v8, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ll;

    aput-object v3, v8, v7

    .line 65
    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ll;

    aput-object v3, v7, v4

    move-object v3, v0

    .line 66
    :goto_1
    if-eqz v3, :cond_1

    .line 67
    invoke-interface {v3}, Lcom/google/common/collect/ll;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_2
    const-string v7, "duplicate key: %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-interface {v3}, Lcom/google/common/collect/ll;->next()Lcom/google/common/collect/ll;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 67
    goto :goto_2

    .line 53
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 71
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/ll;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ll;

    return-object v0
.end method

.method private createEntryArray(I)[Lcom/google/common/collect/ll;
    .locals 1

    .prologue
    .line 88
    new-array v0, p1, [Lcom/google/common/collect/ll;

    return-object v0
.end method

.method private static newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ll;)Lcom/google/common/collect/ll;
    .locals 1
    .param p2    # Lcom/google/common/collect/ll;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    if-nez p2, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    check-cast v0, Lcom/google/common/collect/ll;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ll;)V

    goto :goto_0
.end method


# virtual methods
.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ll;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 177
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;Lcom/google/common/collect/lk;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 142
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/df;->a(I)I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v1, v2

    .line 146
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/ll;

    aget-object v1, v2, v1

    :goto_1
    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v1}, Lcom/google/common/collect/ll;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-interface {v1}, Lcom/google/common/collect/ll;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {v1}, Lcom/google/common/collect/ll;->next()Lcom/google/common/collect/ll;

    move-result-object v1

    goto :goto_1
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/ll;

    array-length v0, v0

    return v0
.end method
