.class public final Lcom/google/common/base/BinaryPredicates;
.super Ljava/lang/Object;
.source "BinaryPredicates.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/BinaryPredicates$Second;,
        Lcom/google/common/base/BinaryPredicates$First;,
        Lcom/google/common/base/BinaryPredicates$Or;,
        Lcom/google/common/base/BinaryPredicates$And;,
        Lcom/google/common/base/BinaryPredicates$Not;,
        Lcom/google/common/base/BinaryPredicates$Identity;,
        Lcom/google/common/base/BinaryPredicates$Equality;,
        Lcom/google/common/base/BinaryPredicates$AlwaysFalse;,
        Lcom/google/common/base/BinaryPredicates$AlwaysTrue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Iterable;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/google/common/base/BinaryPredicates;->iterableElementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/Iterable;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/common/base/BinaryPredicates;->iterableAsListHashCode(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public static alwaysFalse()Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;->AlwaysFalse:Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    invoke-static {v0}, Lcom/google/common/base/BinaryPredicates;->restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysTrue()Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/google/common/base/BinaryPredicates$AlwaysTrue;->AlwaysTrue:Lcom/google/common/base/BinaryPredicates$AlwaysTrue;

    invoke-static {v0}, Lcom/google/common/base/BinaryPredicates;->restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;

    move-result-object v0

    return-object v0
.end method

.method public static and(Lcom/google/common/base/BinaryPredicate;Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "binaryPredicate1":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    .local p1, "binaryPredicate2":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    invoke-static {p0}, Lcom/google/common/base/BinaryPredicates;->restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;

    move-result-object v1

    .line 99
    .local v1, "restricted1":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<TX;TY;>;"
    invoke-static {p1}, Lcom/google/common/base/BinaryPredicates;->restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;

    move-result-object v2

    .line 103
    .local v2, "restricted2":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<TX;TY;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/base/BinaryPredicate;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/base/BinaryPredicate<TX;TY;>;>;"
    new-instance v3, Lcom/google/common/base/BinaryPredicates$And;

    invoke-direct {v3, v0}, Lcom/google/common/base/BinaryPredicates$And;-><init>(Ljava/lang/Iterable;)V

    return-object v3
.end method

.method public static and(Ljava/lang/Iterable;)Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;>;"
    new-instance v0, Lcom/google/common/base/BinaryPredicates$And;

    invoke-direct {v0, p0}, Lcom/google/common/base/BinaryPredicates$And;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs and([Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "components":[Lcom/google/common/base/BinaryPredicate;, "[Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    new-instance v0, Lcom/google/common/base/BinaryPredicates$And;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/BinaryPredicates$And;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static equality()Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/google/common/base/BinaryPredicates$Equality;->Equality:Lcom/google/common/base/BinaryPredicates$Equality;

    invoke-static {v0}, Lcom/google/common/base/BinaryPredicates;->restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;

    move-result-object v0

    return-object v0
.end method

.method public static first(Lcom/google/common/base/Predicate;)Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TX;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TX;>;"
    new-instance v0, Lcom/google/common/base/BinaryPredicates$First;

    invoke-direct {v0, p0}, Lcom/google/common/base/BinaryPredicates$First;-><init>(Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static identity()Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/google/common/base/BinaryPredicates$Identity;->Identity:Lcom/google/common/base/BinaryPredicates$Identity;

    invoke-static {v0}, Lcom/google/common/base/BinaryPredicates;->restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;

    move-result-object v0

    return-object v0
.end method

.method private static iterableAsListHashCode(Ljava/lang/Iterable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 463
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x1

    .line 464
    .local v2, "result":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 466
    .local v1, "obj":Ljava/lang/Object;
    mul-int/lit8 v3, v2, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v2, v3, v4

    .line 467
    goto :goto_0

    .line 468
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    return v2
.end method

.method private static iterableElementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "iterable1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p1, "iterable2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v2, 0x0

    .line 442
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 443
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 444
    .local v1, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 445
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 452
    :cond_1
    :goto_0
    return v2

    .line 448
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 452
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static not(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "binaryPredicate":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    new-instance v0, Lcom/google/common/base/BinaryPredicates$Not;

    invoke-direct {v0, p0}, Lcom/google/common/base/BinaryPredicates$Not;-><init>(Lcom/google/common/base/BinaryPredicate;)V

    return-object v0
.end method

.method public static or(Lcom/google/common/base/BinaryPredicate;Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "binaryPredicate1":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    .local p1, "binaryPredicate2":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    invoke-static {p0}, Lcom/google/common/base/BinaryPredicates;->restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;

    move-result-object v1

    .line 151
    .local v1, "restricted1":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<TX;TY;>;"
    invoke-static {p1}, Lcom/google/common/base/BinaryPredicates;->restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;

    move-result-object v2

    .line 155
    .local v2, "restricted2":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<TX;TY;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/base/BinaryPredicate;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/base/BinaryPredicate<TX;TY;>;>;"
    new-instance v3, Lcom/google/common/base/BinaryPredicates$Or;

    invoke-direct {v3, v0}, Lcom/google/common/base/BinaryPredicates$Or;-><init>(Ljava/lang/Iterable;)V

    return-object v3
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;>;"
    new-instance v0, Lcom/google/common/base/BinaryPredicates$Or;

    invoke-direct {v0, p0}, Lcom/google/common/base/BinaryPredicates$Or;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs or([Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "components":[Lcom/google/common/base/BinaryPredicate;, "[Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    new-instance v0, Lcom/google/common/base/BinaryPredicates$Or;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/BinaryPredicates$Or;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static restrict(Lcom/google/common/base/BinaryPredicate;)Lcom/google/common/base/BinaryPredicate;
    .locals 0
    .param p0    # Lcom/google/common/base/BinaryPredicate;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    .local p0, "predicate":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    return-object p0
.end method

.method public static second(Lcom/google/common/base/Predicate;)Lcom/google/common/base/BinaryPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TY;>;)",
            "Lcom/google/common/base/BinaryPredicate",
            "<TX;TY;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TY;>;"
    new-instance v0, Lcom/google/common/base/BinaryPredicates$Second;

    invoke-direct {v0, p0}, Lcom/google/common/base/BinaryPredicates$Second;-><init>(Lcom/google/common/base/Predicate;)V

    return-object v0
.end method
