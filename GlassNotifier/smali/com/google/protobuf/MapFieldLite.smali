.class public final Lcom/google/protobuf/MapFieldLite;
.super Ljava/util/LinkedHashMap;
.source "MapFieldLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;


# instance fields
.field private isMutable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/protobuf/MapFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/MapFieldLite;-><init>()V

    sput-object v0, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    .line 34
    sget-object v0, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MapFieldLite;->isMutable:Z

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MapFieldLite;->isMutable:Z

    .line 29
    return-void
.end method

.method static calculateHashCodeForMap(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    .line 147
    .local v1, "result":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v3

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 150
    goto :goto_0

    .line 151
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return v1
.end method

.method private static calculateHashCodeForObject(Ljava/lang/Object;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;

    .prologue
    .line 130
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 131
    check-cast p0, [B

    .end local p0    # "a":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/protobuf/Internal;->hashCode([B)I

    move-result v0

    .line 137
    .restart local p0    # "a":Ljava/lang/Object;
    :goto_0
    return v0

    .line 134
    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private static checkForNullKeysAndValues(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "key":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private static copy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 160
    instance-of v1, p0, [B

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 161
    check-cast v0, [B

    .line 162
    .local v0, "data":[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 169
    .end local v0    # "data":[B
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 165
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lcom/google/protobuf/MutableMessageLite;

    if-eqz v1, :cond_0

    .line 166
    check-cast p0, Lcom/google/protobuf/MutableMessageLite;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/google/protobuf/MutableMessageLite;->clone()Lcom/google/protobuf/MutableMessageLite;

    move-result-object p0

    goto :goto_0
.end method

.method static copy(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/MapFieldLite;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-object v1
.end method

.method public static emptyMapField()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/MapFieldLite",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private ensureMutable()V
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 210
    :cond_0
    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 91
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 92
    check-cast p0, [B

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [B

    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 94
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/MapFieldLite;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 57
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 58
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 126
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/google/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-static {p0}, Lcom/google/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/MapFieldLite;->isMutable:Z

    return v0
.end method

.method public makeImmutable()V
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MapFieldLite;->isMutable:Z

    .line 197
    return-void
.end method

.method public mergeFrom(Lcom/google/protobuf/MapFieldLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapFieldLite",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "other":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 45
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MapFieldLite;->putAll(Ljava/util/Map;)V

    .line 48
    :cond_0
    return-void
.end method

.method public mutableCopy()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/MapFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/MapFieldLite;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/MapFieldLite;

    invoke-direct {v0, p0}, Lcom/google/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 62
    invoke-static {p1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p2}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 74
    invoke-static {p1}, Lcom/google/protobuf/MapFieldLite;->checkForNullKeysAndValues(Ljava/util/Map;)V

    .line 75
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 76
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 80
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
