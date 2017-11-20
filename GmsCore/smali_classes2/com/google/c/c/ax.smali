.class public abstract Lcom/google/c/c/ax;
.super Lcom/google/c/c/as;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/c/c/as;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/c/c/ax;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b()Ljava/util/Set;
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/c/c/ax;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 57
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/ax;->b()Ljava/util/Set;

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
    .line 61
    invoke-virtual {p0}, Lcom/google/c/c/ax;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method
