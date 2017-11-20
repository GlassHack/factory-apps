.class final Lcom/google/c/h/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/c/a/bz;

.field private static final b:Lcom/google/c/a/ca;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/c/h/q;

    invoke-direct {v0}, Lcom/google/c/h/q;-><init>()V

    sput-object v0, Lcom/google/c/h/p;->a:Lcom/google/c/a/bz;

    const-string v0, ", "

    invoke-static {v0}, Lcom/google/c/a/ca;->a(Ljava/lang/String;)Lcom/google/c/a/ca;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/c/a/ca;->b(Ljava/lang/String;)Lcom/google/c/a/ca;

    move-result-object v0

    sput-object v0, Lcom/google/c/h/p;->b:Lcom/google/c/a/ca;

    return-void
.end method

.method static synthetic a()Lcom/google/c/a/bz;
    .locals 1

    sget-object v0, Lcom/google/c/h/p;->a:Lcom/google/c/a/bz;

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/a/cl;->a(Ljava/lang/Object;)Lcom/google/c/a/ck;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/cl;->a(Lcom/google/c/a/ck;)Lcom/google/c/a/ck;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/c/c/fm;->a(Ljava/lang/Iterable;Lcom/google/c/a/ck;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v0, Lcom/google/c/h/ab;

    sget-object v1, Lcom/google/c/h/r;->a:Lcom/google/c/h/r;

    invoke-virtual {v1, p1}, Lcom/google/c/h/r;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/google/c/h/ab;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Owner type for unenclosed %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/c/a/cj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/c/h/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/c/h/ab;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v0, v3

    if-gt v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Wildcard cannot have more than one lower bounds."

    invoke-static {v0, v4}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    array-length v0, v3

    if-ne v0, v1, :cond_1

    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/c/h/p;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    new-instance v0, Lcom/google/c/h/ad;

    new-array v4, v1, [Ljava/lang/reflect/Type;

    aput-object v3, v4, v2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-direct {v0, v4, v1}, Lcom/google/c/h/ad;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v0, v3

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    const-string v4, "Wildcard should have only one upper bound."

    invoke-static {v0, v4}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/c/h/p;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    new-instance v0, Lcom/google/c/h/ad;

    new-array v4, v2, [Ljava/lang/reflect/Type;

    new-array v1, v1, [Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    invoke-direct {v0, v4, v1}, Lcom/google/c/h/ad;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/c/h/x;->a:Lcom/google/c/h/x;

    invoke-virtual {v0, p0}, Lcom/google/c/h/x;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_1
.end method

.method static varargs a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 3

    new-instance v0, Lcom/google/c/h/ac;

    array-length v1, p2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array p2, v1, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    aput-object v2, p2, v1

    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/c/h/ac;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static synthetic a([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    const-string v6, "Primitive type \'%s\' used as %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object p1, v7, v2

    invoke-static {v1, v6, v7}, Lcom/google/c/a/cj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic b()Lcom/google/c/a/ca;
    .locals 1

    sget-object v0, Lcom/google/c/h/p;->b:Lcom/google/c/a/ca;

    return-object v0
.end method

.method static b(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
