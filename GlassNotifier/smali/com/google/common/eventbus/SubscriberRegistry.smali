.class final Lcom/google/common/eventbus/SubscriberRegistry;
.super Ljava/lang/Object;
.source "SubscriberRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;
    }
.end annotation


# static fields
.field private static final flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final bus:Lcom/google/common/eventbus/EventBus;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation
.end field

.field private final subscribers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/SubscriberRegistry$1;

    invoke-direct {v1}, Lcom/google/common/eventbus/SubscriberRegistry$1;-><init>()V

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;

    .line 210
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/SubscriberRegistry$2;

    invoke-direct {v1}, Lcom/google/common/eventbus/SubscriberRegistry$2;-><init>()V

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    .line 209
    return-void
.end method

.method constructor <init>(Lcom/google/common/eventbus/EventBus;)V
    .locals 1
    .param p1, "bus"    # Lcom/google/common/eventbus/EventBus;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/EventBus;

    iput-object v0, p0, Lcom/google/common/eventbus/SubscriberRegistry;->bus:Lcom/google/common/eventbus/EventBus;

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/common/eventbus/SubscriberRegistry;->getAnnotatedMethodsNotCached(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;
    .locals 7
    .param p1, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v3

    .line 168
    .local v3, "methodsInListener":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/Subscriber;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 169
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/google/common/eventbus/SubscriberRegistry;->getAnnotatedMethods(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 170
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 171
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    aget-object v1, v4, v6

    .line 172
    .local v1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/google/common/eventbus/SubscriberRegistry;->bus:Lcom/google/common/eventbus/EventBus;

    invoke-static {v6, p1, v2}, Lcom/google/common/eventbus/Subscriber;->create(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/google/common/eventbus/Subscriber;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v1    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return-object v3
.end method

.method static flattenHierarchy(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v1, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v1, p0}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableSet;
    :try_end_0
    .catch Lcom/google/common/util/concurrent/UncheckedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lcom/google/common/util/concurrent/UncheckedExecutionException;
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAnnotatedMethods(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->subscriberMethodsCache:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p0}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private static getAnnotatedMethodsNotCached(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 182
    invoke-static {p0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/reflect/TypeToken$TypeSet;->rawTypes()Ljava/util/Set;

    move-result-object v5

    .line 183
    .local v5, "supertypes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Class<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 184
    .local v1, "identifiers":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;Ljava/lang/reflect/Method;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 185
    .local v4, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v12, v11

    move v9, v8

    :goto_0
    if-ge v9, v12, :cond_0

    aget-object v2, v11, v9

    .line 186
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v6, Lcom/google/common/eventbus/Subscribe;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_1

    .line 188
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 189
    .local v3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v3

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_1
    const-string v13, "Method %s has @Subscribe annotation but has %s parameters.Subscriber methods must have exactly 1 parameter."

    array-length v14, v3

    invoke-static {v6, v13, v2, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;I)V

    .line 196
    new-instance v0, Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;

    invoke-direct {v0, v2}, Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;-><init>(Ljava/lang/reflect/Method;)V

    .line 197
    .local v0, "ident":Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 198
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v0    # "ident":Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;
    .end local v3    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_0

    .restart local v3    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    move v6, v8

    .line 189
    goto :goto_1

    .line 203
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method getSubscribers(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 6
    .param p1, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/eventbus/SubscriberRegistry;->flattenHierarchy(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 133
    .local v2, "eventTypes":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/Class<*>;>;"
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 135
    .local v3, "subscriberIterators":Ljava/util/List;, "Ljava/util/List<Ljava/util/Iterator<Lcom/google/common/eventbus/Subscriber;>;>;"
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 136
    .local v1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 137
    .local v0, "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v0    # "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    .end local v1    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v4

    return-object v4
.end method

.method getSubscribersForTesting(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractCollection;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method register(Ljava/lang/Object;)V
    .locals 8
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v4

    .line 79
    .local v4, "listenerMethods":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/Subscriber;>;"
    invoke-interface {v4}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 81
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 83
    .local v1, "eventMethodsInListener":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    iget-object v6, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 85
    .local v2, "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    if-nez v2, :cond_0

    .line 86
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 87
    .local v5, "newSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    iget-object v6, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    invoke-interface {v6, v3, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v6, v5}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 91
    .end local v5    # "newSet":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    .restart local v2    # "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    .end local v1    # "eventMethodsInListener":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    .end local v2    # "eventSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    .end local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method unregister(Ljava/lang/Object;)V
    .locals 9
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v3

    .line 101
    .local v3, "listenerMethods":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/Subscriber;>;"
    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 103
    .local v2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 105
    .local v4, "listenerMethodsForType":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    iget-object v6, p0, Lcom/google/common/eventbus/SubscriberRegistry;->subscribers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 106
    .local v0, "currentSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x41

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "missing event subscriber for an annotated method. Is "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " registered?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    .end local v0    # "currentSubscribers":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;>;"
    .end local v2    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "listenerMethodsForType":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/common/eventbus/Subscriber;>;"
    :cond_2
    return-void
.end method
