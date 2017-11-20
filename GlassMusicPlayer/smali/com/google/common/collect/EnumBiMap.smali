.class public final Lcom/google/common/collect/EnumBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyType:Ljava/lang/Class;

.field private transient valueType:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/common/collect/on;->a(Ljava/util/Map;)Lcom/google/common/collect/on;

    move-result-object v0

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/google/common/collect/on;->a(Ljava/util/Map;)Lcom/google/common/collect/on;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 79
    iput-object p1, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 80
    iput-object p2, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 81
    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/common/collect/EnumBiMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/EnumBiMap;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/EnumBiMap;
    .locals 2

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferKeyType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferValueType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/EnumBiMap;->create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Lcom/google/common/collect/EnumBiMap;->putAll(Ljava/util/Map;)V

    .line 73
    return-object v0
.end method

.method static inferKeyType(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 84
    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    .line 85
    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/EnumBiMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/EnumHashBiMap;

    if-eqz v0, :cond_1

    .line 88
    check-cast p0, Lcom/google/common/collect/EnumHashBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/EnumHashBiMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 91
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static inferValueType(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 95
    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    .line 96
    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 99
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 99
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 139
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 140
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 141
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/common/collect/on;->a(Ljava/util/Map;)Lcom/google/common/collect/on;

    move-result-object v0

    new-instance v1, Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/google/common/collect/on;->a(Ljava/util/Map;)Lcom/google/common/collect/on;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/EnumBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 143
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 144
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 129
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 131
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 132
    return-void
.end method


# virtual methods
.method final checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method final bridge synthetic checkKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumBiMap;->checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method final checkValue(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 119
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method final bridge synthetic checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumBiMap;->checkValue(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public final bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic inverse()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final keyType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final valueType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
