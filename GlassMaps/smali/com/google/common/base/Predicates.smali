.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/y;->a(Ljava/lang/String;)Lcom/google/common/base/y;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/y;

    return-void
.end method

.method public static a()Lcom/google/common/base/aj;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lcom/google/common/base/aj;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/common/base/aj;)Lcom/google/common/base/aj;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/google/common/base/Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lcom/google/common/base/Predicates$NotPredicate;-><init>(Lcom/google/common/base/aj;)V

    return-object v0
.end method

.method public static a(Lcom/google/common/base/aj;Lcom/google/common/base/aj;)Lcom/google/common/base/aj;
    .locals 3

    .prologue
    .line 129
    new-instance v2, Lcom/google/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aj;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/aj;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->b(Lcom/google/common/base/aj;Lcom/google/common/base/aj;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lcom/google/common/base/ak;)V

    return-object v2
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/base/aj;
    .locals 2

    .prologue
    .line 173
    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/base/Predicates;->c()Lcom/google/common/base/aj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lcom/google/common/base/ak;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/base/aj;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/google/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lcom/google/common/base/ak;)V

    return-object v0
.end method

.method public static varargs a([Lcom/google/common/base/aj;)Lcom/google/common/base/aj;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/google/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/google/common/base/Predicates;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lcom/google/common/base/ak;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3

    .prologue
    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 657
    invoke-static {v2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    :cond_0
    return-object v0
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 651
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/base/y;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/y;

    return-object v0
.end method

.method private static b(Lcom/google/common/base/aj;Lcom/google/common/base/aj;)Ljava/util/List;
    .locals 2

    .prologue
    .line 647
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/aj;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/google/common/base/aj;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->IS_NULL:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lcom/google/common/base/aj;

    move-result-object v0

    return-object v0
.end method
