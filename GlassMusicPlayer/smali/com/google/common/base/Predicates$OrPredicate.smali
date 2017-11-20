.class Lcom/google/common/base/Predicates$OrPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final components:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    .line 379
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/common/base/ak;)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$OrPredicate;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aj;

    invoke-interface {v0, p1}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const/4 v2, 0x1

    .line 388
    :cond_0
    return v2

    .line 383
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 399
    instance-of v0, p1, Lcom/google/common/base/Predicates$OrPredicate;

    if-eqz v0, :cond_0

    .line 400
    check-cast p1, Lcom/google/common/base/Predicates$OrPredicate;

    .line 401
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    iget-object v1, p1, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0x53c91cf

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->b()Lcom/google/common/base/y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/common/base/y;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
