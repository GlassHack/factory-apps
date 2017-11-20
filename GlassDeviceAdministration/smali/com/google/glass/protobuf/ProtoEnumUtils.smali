.class public Lcom/google/glass/protobuf/ProtoEnumUtils;
.super Ljava/lang/Object;
.source "ProtoEnumUtils.java"


# static fields
.field private static enumInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/protobuf/ProtoEnumUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/glass/protobuf/ProtoEnumUtils;->enumInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEnumInfo(Ljava/lang/Class;)Ljava/util/Map;
    .locals 11
    .param p0, "enumClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 29
    sget-object v6, Lcom/google/glass/protobuf/ProtoEnumUtils;->enumInfoMap:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    sget-object v5, Lcom/google/glass/protobuf/ProtoEnumUtils;->enumInfoMap:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 51
    :goto_0
    return-object v5

    .line 32
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    .local v1, "enumInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 35
    .local v3, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 36
    .local v4, "foundOne":Z
    array-length v8, v3

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v2, v3, v6

    .line 37
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 38
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 39
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 40
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v4, 0x1

    .line 36
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 46
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-static {v4}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 47
    sget-object v6, Lcom/google/glass/protobuf/ProtoEnumUtils;->enumInfoMap:Ljava/util/Map;

    invoke-interface {v6, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    .line 48
    goto :goto_0

    .line 49
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "foundOne":Z
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/google/glass/protobuf/ProtoEnumUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error getting enum info for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-interface {v6, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized getEnumName(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 8
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "lookupValue"    # I

    .prologue
    .line 83
    const-class v3, Lcom/google/glass/protobuf/ProtoEnumUtils;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/google/glass/protobuf/ProtoEnumUtils;->getEnumInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 84
    .local v1, "enumInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit v3

    return-object v2

    .line 90
    :cond_1
    :try_start_1
    sget-object v2, Lcom/google/glass/protobuf/ProtoEnumUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error getting enum name %s for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    const/4 v2, 0x0

    goto :goto_0

    .line 83
    .end local v1    # "enumInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getEnumValue(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 7
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "lookupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 70
    const-class v3, Lcom/google/glass/protobuf/ProtoEnumUtils;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/google/glass/protobuf/ProtoEnumUtils;->getEnumInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 71
    .local v0, "enumInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const-string v2, "No enum value %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 73
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 72
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "error":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/protobuf/ProtoEnumUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v0    # "enumInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 77
    .restart local v0    # "enumInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2
.end method

.method public static declared-synchronized getEnumValues(Ljava/lang/Class;)[I
    .locals 4
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 58
    const-class v3, Lcom/google/glass/protobuf/ProtoEnumUtils;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/google/glass/protobuf/ProtoEnumUtils;->getEnumInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 59
    .local v0, "enumInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    .line 60
    .local v1, "values":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v3

    return-object v1

    .line 58
    .end local v0    # "enumInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "values":[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
