.class final Lcom/google/c/h/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/c/h/e;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/c/h/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/c/h/e;-><init>(B)V

    sput-object v0, Lcom/google/c/h/d;->a:Lcom/google/c/h/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/h/d;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/c/h/d;->c:Ljava/util/Set;

    return-void
.end method

.method static a(Ljava/lang/reflect/Type;)Lcom/google/c/c/es;
    .locals 2

    new-instance v0, Lcom/google/c/h/d;

    invoke-direct {v0}, Lcom/google/c/h/d;-><init>()V

    sget-object v1, Lcom/google/c/h/d;->a:Lcom/google/c/h/e;

    invoke-virtual {v1, p0}, Lcom/google/c/h/e;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/c/h/d;->b(Ljava/lang/reflect/Type;)V

    iget-object v0, v0, Lcom/google/c/h/d;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/c/c/es;->a(Ljava/util/Map;)Lcom/google/c/c/es;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/c/h/d;->b(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/google/c/h/d;->b(Ljava/lang/reflect/Type;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/reflect/Type;)V
    .locals 10

    const/4 v3, 0x0

    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lcom/google/c/h/d;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v2, v6

    array-length v4, v7

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lcom/google/c/a/cj;->b(Z)V

    move v4, v3

    :goto_3
    array-length v2, v6

    if-ge v4, v2, :cond_6

    aget-object v8, v6, v4

    aget-object v5, v7, v4

    iget-object v2, p0, Lcom/google/c/h/d;->b:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v5

    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v2, v5

    :goto_5
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/google/c/h/d;->b:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    goto :goto_5

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    iget-object v9, p0, Lcom/google/c/h/d;->b:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/google/c/h/d;->b:Ljava/util/Map;

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_6
    invoke-direct {p0, v1}, Lcom/google/c/h/d;->a(Ljava/lang/Class;)V

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_8

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/google/c/h/d;->a(Ljava/lang/Class;)V

    goto :goto_1

    :cond_8
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    :goto_6
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    invoke-direct {p0, v2}, Lcom/google/c/h/d;->b(Ljava/lang/reflect/Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    :goto_7
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    invoke-direct {p0, v2}, Lcom/google/c/h/d;->b(Ljava/lang/reflect/Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method
