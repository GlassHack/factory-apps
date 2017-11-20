.class public abstract Lcom/google/c/h/f;
.super Lcom/google/c/h/a;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:Ljava/lang/reflect/Type;

.field private transient b:Lcom/google/c/h/b;


# direct methods
.method protected constructor <init>()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/c/h/a;-><init>()V

    invoke-virtual {p0}, Lcom/google/c/h/f;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/h/a;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/c/h/f;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private static a([Ljava/lang/reflect/Type;)Lcom/google/c/c/eo;
    .locals 5

    invoke-static {}, Lcom/google/c/c/eo;->f()Lcom/google/c/c/eq;

    move-result-object v1

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/google/c/h/f;->c(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;

    move-result-object v3

    iget-object v4, v3, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v4}, Lcom/google/c/h/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/c/c/eq;->a(Ljava/lang/Object;)Lcom/google/c/c/eq;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/c/c/eq;->a()Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/c/h/f;
    .locals 1

    new-instance v0, Lcom/google/c/h/g;

    invoke-direct {v0, p0}, Lcom/google/c/h/g;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    invoke-static {p0}, Lcom/google/c/h/f;->b(Ljava/lang/reflect/Type;)Lcom/google/c/c/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fc;->b()Lcom/google/c/c/hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/hi;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method static b(Ljava/lang/reflect/Type;)Lcom/google/c/c/fc;
    .locals 3

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/h/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/h/p;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/h/f;->b([Ljava/lang/reflect/Type;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/h/f;->b([Ljava/lang/reflect/Type;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static b([Ljava/lang/reflect/Type;)Lcom/google/c/c/fc;
    .locals 4

    invoke-static {}, Lcom/google/c/c/fc;->g()Lcom/google/c/c/fe;

    move-result-object v1

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/google/c/h/f;->b(Ljava/lang/reflect/Type;)Lcom/google/c/c/fc;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/c/c/fe;->b(Ljava/lang/Iterable;)Lcom/google/c/c/fe;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/c/c/fe;->a()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;
    .locals 1

    new-instance v0, Lcom/google/c/h/g;

    invoke-direct {v0, p0}, Lcom/google/c/h/g;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private d(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/h/f;->b:Lcom/google/c/h/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    new-instance v1, Lcom/google/c/h/b;

    invoke-direct {v1}, Lcom/google/c/h/b;-><init>()V

    invoke-static {v0}, Lcom/google/c/h/d;->a(Ljava/lang/reflect/Type;)Lcom/google/c/c/es;

    move-result-object v2

    invoke-static {}, Lcom/google/c/c/es;->b()Lcom/google/c/c/et;

    move-result-object v5

    iget-object v0, v1, Lcom/google/c/h/b;->a:Lcom/google/c/c/es;

    iget-object v1, v5, Lcom/google/c/c/et;->a:Ljava/util/ArrayList;

    iget-object v6, v5, Lcom/google/c/c/et;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/google/c/c/et;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/et;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_2
    const-string v7, "Type variable %s bound to itself"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-static {v2, v7, v8}, Lcom/google/c/a/cj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v1}, Lcom/google/c/c/et;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/et;

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/c/h/b;

    invoke-virtual {v5}, Lcom/google/c/c/et;->a()Lcom/google/c/c/es;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/c/h/b;-><init>(Lcom/google/c/c/es;)V

    iput-object v0, p0, Lcom/google/c/h/f;->b:Lcom/google/c/h/b;

    :cond_3
    invoke-virtual {v0, p1}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/h/f;->c(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/h/f;->b:Lcom/google/c/h/b;

    iput-object v1, v0, Lcom/google/c/h/f;->b:Lcom/google/c/h/b;

    return-object v0
.end method

.method private static e(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;
    .locals 2

    invoke-static {p0}, Lcom/google/c/h/f;->c(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;

    move-result-object v0

    iget-object v1, v0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/c/h/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/c/h/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/google/c/h/f;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/c/h/f;->e(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/c/h/f;->e(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/c/h/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/c/h/f;->d(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;

    move-result-object v0

    goto :goto_0
.end method

.method final d()Lcom/google/c/c/eo;
    .locals 5

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/h/f;->a([Ljava/lang/reflect/Type;)Lcom/google/c/c/eo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/h/f;->a([Ljava/lang/reflect/Type;)Lcom/google/c/c/eo;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/c/c/eo;->f()Lcom/google/c/c/eq;

    move-result-object v1

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/c/h/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/google/c/h/f;->d(Ljava/lang/reflect/Type;)Lcom/google/c/h/f;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/c/c/eq;->a(Ljava/lang/Object;)Lcom/google/c/c/eq;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/c/c/eq;->a()Lcom/google/c/c/eo;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Lcom/google/c/h/o;
    .locals 1

    new-instance v0, Lcom/google/c/h/o;

    invoke-direct {v0, p0}, Lcom/google/c/h/o;-><init>(Lcom/google/c/h/f;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/c/h/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/c/h/f;

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    iget-object v1, p1, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/c/h/p;->b(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
