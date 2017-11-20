.class final Lcom/google/common/reflect/Types;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/w;

.field private static final b:Lcom/google/common/base/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/google/common/reflect/t;

    invoke-direct {v0}, Lcom/google/common/reflect/t;-><init>()V

    sput-object v0, Lcom/google/common/reflect/Types;->a:Lcom/google/common/base/w;

    .line 58
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/y;->a(Ljava/lang/String;)Lcom/google/common/base/y;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/y;->b(Ljava/lang/String;)Lcom/google/common/base/y;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/Types;->b:Lcom/google/common/base/y;

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/w;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/common/reflect/Types;->a:Lcom/google/common/base/w;

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/google/common/reflect/Types;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static varargs a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;

    sget-object v1, Lcom/google/common/reflect/Types$ClassOwnership;->JVM_BEHAVIOR:Lcom/google/common/reflect/Types$ClassOwnership;

    invoke-virtual {v1, p0}, Lcom/google/common/reflect/Types$ClassOwnership;->getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 84
    invoke-static {p1, p2}, Lcom/google/common/reflect/Types;->a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Owner type for unenclosed %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_1
.end method

.method static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 63
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 64
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 65
    array-length v0, v3

    if-gt v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Wildcard cannot have more than one lower bounds."

    invoke-static {v0, v4}, Lcom/google/common/base/ai;->a(ZLjava/lang/Object;)V

    .line 66
    array-length v0, v3

    if-ne v0, v1, :cond_1

    .line 67
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/reflect/Types;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    .line 74
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 70
    array-length v3, v0

    if-ne v3, v1, :cond_2

    :goto_2
    const-string v3, "Wildcard should have only one upper bound."

    invoke-static {v1, v3}, Lcom/google/common/base/ai;->a(ZLjava/lang/Object;)V

    .line 71
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/common/reflect/Types;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 70
    goto :goto_2

    .line 74
    :cond_3
    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_1
.end method

.method private static a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 198
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v1, p0, v0

    .line 199
    invoke-static {v1}, Lcom/google/common/reflect/Types;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_1

    .line 203
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 204
    check-cast v0, Ljava/lang/Class;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    :goto_1
    return-object v0

    .line 209
    :cond_0
    invoke-static {v1}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto :goto_1

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static varargs a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/google/common/reflect/x;

    array-length v1, p2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array p2, v1, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    aput-object v2, p2, v1

    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/x;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static synthetic a([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/google/common/reflect/Types;->b([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/google/common/reflect/Types;->b(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/base/y;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/common/reflect/Types;->b:Lcom/google/common/base/y;

    return-object v0
.end method

.method private static b(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 436
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Predicates;->a(Ljava/lang/Object;)Lcom/google/common/base/aj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/aj;)Lcom/google/common/base/aj;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/eg;->b(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
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

.method private static b([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 440
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    .line 441
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 442
    check-cast v0, Ljava/lang/Class;

    .line 443
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

    invoke-static {v1, v6, v7}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 440
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 443
    goto :goto_1

    .line 446
    :cond_2
    return-void
.end method

.method private static b([Ljava/lang/reflect/Type;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 234
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 235
    invoke-static {v3}, Lcom/google/common/reflect/Types;->d(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    const/4 v0, 0x1

    .line 239
    :cond_0
    return v0

    .line 234
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 432
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 178
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 180
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 181
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    .line 182
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    .line 184
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/Types;->a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 186
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/Types;->a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Ljava/lang/reflect/Type;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 216
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_1

    move v0, v1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_2

    .line 220
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/Types;->d(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 222
    :cond_2
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 223
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/Types;->b([Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 225
    :cond_3
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_0

    .line 226
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 227
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/reflect/Types;->b([Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/reflect/Types;->b([Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    new-array v1, v3, [Ljava/lang/reflect/Type;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 160
    new-instance v0, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    new-array v1, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v1, v4

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method
