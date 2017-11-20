.class Lcom/google/c/h/b;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/c/c/es;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/es;->a()Lcom/google/c/c/es;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/h/b;->a:Lcom/google/c/c/es;

    return-void
.end method

.method constructor <init>(Lcom/google/c/c/es;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/c/h/b;->a:Lcom/google/c/c/es;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/c/c/es;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/c/h/b;-><init>(Lcom/google/c/c/es;)V

    return-void
.end method

.method private a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 6

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    new-instance v0, Lcom/google/c/h/c;

    iget-object v1, p0, Lcom/google/c/h/b;->a:Lcom/google/c/c/es;

    invoke-direct {v0, v1, p1, p0}, Lcom/google/c/h/c;-><init>(Lcom/google/c/c/es;Ljava/lang/reflect/TypeVariable;Lcom/google/c/h/b;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/TypeVariable;Lcom/google/c/h/b;)Ljava/lang/reflect/Type;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v2, v3

    new-array v4, v2, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    check-cast v0, Ljava/lang/Class;

    invoke-static {v1, v0, v4}, Lcom/google/c/h/p;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/h/p;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    new-instance v0, Lcom/google/c/h/ad;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/c/h/b;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/c/h/b;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/c/h/ad;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    move-object p1, v0

    goto :goto_0
.end method

.method a(Ljava/lang/reflect/TypeVariable;Lcom/google/c/h/b;)Ljava/lang/reflect/Type;
    .locals 3

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/h/b;->a:Lcom/google/c/c/es;

    invoke-virtual {v0, p1}, Lcom/google/c/c/es;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0}, Lcom/google/c/h/b;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/c/h/p;->a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method
