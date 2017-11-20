.class abstract Lcom/google/common/reflect/TypeVisitor;
.super Ljava/lang/Object;
.source "TypeVisitor.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final varargs visit([Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 66
    array-length v5, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_8

    aget-object v2, p1, v4

    .line 67
    .local v2, "type":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    :cond_0
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 73
    .local v1, "succeeded":Z
    :try_start_0
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_2

    .line 74
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_2
    const/4 v1, 0x1

    .line 88
    if-nez v1, :cond_0

    .line 89
    iget-object v3, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_2
    :try_start_1
    instance-of v3, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_4

    .line 76
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 88
    :catchall_0
    move-exception v3

    if-nez v1, :cond_3

    .line 89
    iget-object v4, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    throw v3

    .line 77
    :cond_4
    :try_start_2
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    .line 78
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_2

    .line 79
    :cond_5
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_6

    .line 80
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitClass(Ljava/lang/Class;)V

    goto :goto_2

    .line 81
    :cond_6
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_7

    .line 82
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V

    goto :goto_2

    .line 84
    :cond_7
    new-instance v3, Ljava/lang/AssertionError;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unknown type: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .end local v1    # "succeeded":Z
    .end local v2    # "type":Ljava/lang/reflect/Type;
    :cond_8
    return-void
.end method

.method visitClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 97
    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 99
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "t":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/reflect/WildcardType;

    .prologue
    .line 103
    return-void
.end method
