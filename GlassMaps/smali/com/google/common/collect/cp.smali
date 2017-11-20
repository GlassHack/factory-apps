.class public abstract Lcom/google/common/collect/cp;
.super Lcom/google/common/collect/cf;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/common/collect/cf;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/cp;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/cp;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Set;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 60
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/cp;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/cp;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
