.class Lcom/google/common/reflect/TypeResolver$TypeTable;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeTable"
.end annotation


# instance fields
.field private final map:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeTable;->map:Lcom/google/common/collect/ImmutableMap;

    .line 251
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "map":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Lcom/google/common/reflect/TypeResolver$TypeVariableKey;Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$TypeTable;->map:Lcom/google/common/collect/ImmutableMap;

    .line 255
    return-void
.end method


# virtual methods
.method final resolve(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v1, p0

    .line 272
    .local v1, "unguarded":Lcom/google/common/reflect/TypeResolver$TypeTable;
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeTable$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/reflect/TypeResolver$TypeTable$1;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)V

    .line 282
    .local v0, "guarded":Lcom/google/common/reflect/TypeResolver$TypeTable;
    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/TypeResolver$TypeTable;->resolveInternal(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method resolveInternal(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)Ljava/lang/reflect/Type;
    .locals 6
    .param p2, "forDependants"    # Lcom/google/common/reflect/TypeResolver$TypeTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/google/common/reflect/TypeResolver$TypeTable;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p1, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .line 294
    iget-object v3, p0, Lcom/google/common/reflect/TypeResolver$TypeTable;->map:Lcom/google/common/collect/ImmutableMap;

    new-instance v4, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    invoke-direct {v4, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 295
    .local v2, "type":Ljava/lang/reflect/Type;
    if-nez v2, :cond_3

    .line 296
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 297
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v3, v0

    if-nez v3, :cond_1

    .line 337
    .end local v0    # "bounds":[Ljava/lang/reflect/Type;
    .end local p1    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    :goto_0
    return-object p1

    .line 300
    .restart local v0    # "bounds":[Ljava/lang/reflect/Type;
    .restart local p1    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    new-instance v3, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v3, p2, v5}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Lcom/google/common/reflect/TypeResolver$1;)V

    invoke-static {v3, v0}, Lcom/google/common/reflect/TypeResolver;->access$300(Lcom/google/common/reflect/TypeResolver;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 329
    .local v1, "resolvedBounds":[Ljava/lang/reflect/Type;
    sget-boolean v3, Lcom/google/common/reflect/Types$NativeTypeVariableEquals;->NATIVE_TYPE_VARIABLE_ONLY:Z

    if-eqz v3, :cond_2

    .line 330
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 334
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-static {v3, v4, v1}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_0

    .line 337
    .end local v0    # "bounds":[Ljava/lang/reflect/Type;
    .end local v1    # "resolvedBounds":[Ljava/lang/reflect/Type;
    :cond_3
    new-instance v3, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v3, p2, v5}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Lcom/google/common/reflect/TypeResolver$1;)V

    invoke-virtual {v3, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method

.method final where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver$TypeTable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/TypeResolver$TypeTable;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/reflect/TypeResolver$TypeVariableKey;+Ljava/lang/reflect/Type;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 260
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/common/reflect/TypeResolver$TypeVariableKey;Ljava/lang/reflect/Type;>;"
    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$TypeTable;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 261
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 262
    .local v1, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/reflect/TypeResolver$TypeVariableKey;+Ljava/lang/reflect/Type;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    .line 263
    .local v3, "variable":Lcom/google/common/reflect/TypeResolver$TypeVariableKey;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 264
    .local v2, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v3, v2}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->equalsType(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    const-string v6, "Type variable %s bound to itself"

    invoke-static {v4, v6, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 264
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 267
    .end local v1    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/reflect/TypeResolver$TypeVariableKey;+Ljava/lang/reflect/Type;>;"
    .end local v2    # "type":Ljava/lang/reflect/Type;
    .end local v3    # "variable":Lcom/google/common/reflect/TypeResolver$TypeVariableKey;
    :cond_1
    new-instance v4, Lcom/google/common/reflect/TypeResolver$TypeTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/reflect/TypeResolver$TypeTable;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v4
.end method
