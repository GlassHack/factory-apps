.class Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WildcardCapturer"
.end annotation


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 422
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 423
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "id"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 427
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/reflect/TypeResolver$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "x1"    # Lcom/google/common/reflect/TypeResolver$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method private captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method private forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Lcom/google/common/reflect/TypeResolver$WildcardCapturer;"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "typeParam":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer$1;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer$1;-><init>(Lcom/google/common/reflect/TypeResolver$WildcardCapturer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/reflect/TypeVariable;)V

    return-object v0
.end method

.method private notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v0
.end method


# virtual methods
.method final capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 430
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    instance-of v8, p1, Ljava/lang/Class;

    if-eqz v8, :cond_1

    .line 461
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p1

    .line 434
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v8, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v8, :cond_0

    .line 437
    instance-of v8, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v8, :cond_2

    move-object v0, p1

    .line 438
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 440
    .local v0, "arrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v8

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 439
    invoke-static {v8}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    .line 442
    .end local v0    # "arrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_2
    instance-of v8, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_4

    move-object v3, p1

    .line 443
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 444
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 445
    .local v4, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    .line 446
    .local v6, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 447
    .local v5, "typeArgs":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v5

    if-ge v1, v8, :cond_3

    .line 448
    aget-object v8, v6, v1

    invoke-direct {p0, v8}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-virtual {v8, v9}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    aput-object v8, v5, v1

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_3
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v8

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 450
    invoke-static {v8, v4, v5}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "typeArgs":[Ljava/lang/reflect/Type;
    .end local v6    # "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    instance-of v8, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v8, :cond_5

    move-object v7, p1

    .line 455
    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 456
    .local v7, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 457
    .local v2, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v8, v2

    if-nez v8, :cond_0

    .line 458
    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_0

    .line 464
    .end local v2    # "lowerBounds":[Ljava/lang/reflect/Type;
    .end local v7    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_5
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "must have been one of the known types"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
.end method

.method captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 5
    .param p1, "upperBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 470
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0x26

    .line 472
    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "capture#"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-of ? extends "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-static {v1, v0, p1}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    return-object v1
.end method
