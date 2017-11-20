.class public abstract Lcom/google/common/collect/ImmutableCollection$Builder;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    .local p0, "this":Lcom/google/common/collect/ImmutableCollection$Builder;, "Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expandedCapacity(II)I
    .locals 3
    .param p0, "oldCapacity"    # I
    .param p1, "minCapacity"    # I

    .prologue
    .line 320
    if-gez p1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot store more than MAX_VALUE elements"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 324
    :cond_0
    shr-int/lit8 v1, p0, 0x1

    add-int/2addr v1, p0

    add-int/lit8 v0, v1, 0x1

    .line 325
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_1

    .line 326
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 328
    :cond_1
    if-gez v0, :cond_2

    .line 329
    const v0, 0x7fffffff

    .line 332
    :cond_2
    return v0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lcom/google/common/collect/ImmutableCollection$Builder;, "Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 365
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/google/common/collect/ImmutableCollection$Builder;, "Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    goto :goto_0

    .line 387
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/google/common/collect/ImmutableCollection$Builder;, "Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    goto :goto_0

    .line 407
    :cond_0
    return-object p0
.end method

.method public abstract build()Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation
.end method
