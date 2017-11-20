.class public final Lcom/google/common/collect/EnumHashBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyType:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/common/collect/on;->a(Ljava/util/Map;)Lcom/google/common/collect/on;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 78
    iput-object p1, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    .line 79
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumHashBiMap;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/google/common/collect/EnumHashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumHashBiMap;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/EnumHashBiMap;
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferKeyType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/EnumHashBiMap;->create(Ljava/lang/Class;)Lcom/google/common/collect/EnumHashBiMap;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lcom/google/common/collect/EnumHashBiMap;->putAll(Ljava/util/Map;)V

    .line 72
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 119
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/common/collect/on;->a(Ljava/util/Map;)Lcom/google/common/collect/on;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/EnumHashBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 122
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 123
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 110
    iget-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 111
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 112
    return-void
.end method


# virtual methods
.method final checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method final bridge synthetic checkKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumHashBiMap;->checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public final bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final forcePut(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumHashBiMap;->forcePut(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic inverse()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final keyType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    return-object v0
.end method

.method public final put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumHashBiMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
