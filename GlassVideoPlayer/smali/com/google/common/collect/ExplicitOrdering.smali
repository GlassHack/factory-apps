.class final Lcom/google/common/collect/ExplicitOrdering;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final rankMap:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p1}, Lcom/google/common/collect/ExplicitOrdering;->buildRankMap(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ExplicitOrdering;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 33
    return-void
.end method

.method private static buildRankMap(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;
    .locals 5

    .prologue
    .line 53
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dr;

    move-result-object v2

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 56
    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/dr;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private rank(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 46
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/google/common/collect/Ordering$IncomparableValueException;

    invoke-direct {v0, p1}, Lcom/google/common/collect/Ordering$IncomparableValueException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    instance-of v0, p1, Lcom/google/common/collect/ExplicitOrdering;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/google/common/collect/ExplicitOrdering;

    .line 65
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    iget-object v1, p1, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.explicit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
