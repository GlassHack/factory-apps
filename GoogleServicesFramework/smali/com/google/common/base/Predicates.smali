.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Predicates$1;,
        Lcom/google/common/base/Predicates$InPredicate;,
        Lcom/google/common/base/Predicates$AndPredicate;,
        Lcom/google/common/base/Predicates$NotPredicate;
    }
.end annotation


# static fields
.field private static final COMMA_JOINER:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Predicates;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method static synthetic access$800()Lcom/google/common/base/Joiner;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/common/base/Predicates;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-object v0
.end method

.method public static and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "first":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    .local p1, "second":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    new-instance v2, Lcom/google/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->asList(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lcom/google/common/base/Predicates$1;)V

    return-object v2
.end method

.method private static asList(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "first":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    .local p1, "second":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "target":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Lcom/google/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate",
            "<TT;>;)",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TT;>;"
    new-instance v0, Lcom/google/common/base/Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lcom/google/common/base/Predicates$NotPredicate;-><init>(Lcom/google/common/base/Predicate;)V

    return-object v0
.end method
