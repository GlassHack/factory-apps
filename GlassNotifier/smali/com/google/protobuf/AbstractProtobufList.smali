.class abstract Lcom/google/protobuf/AbstractProtobufList;
.super Ljava/util/AbstractList;
.source "AbstractProtobufList.java"

# interfaces
.implements Lcom/google/protobuf/Internal$ProtobufList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Lcom/google/protobuf/Internal$ProtobufList",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0xa


# instance fields
.field private isMutable:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 31
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 80
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 74
    invoke-super {p0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 92
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 86
    invoke-super {p0, p1}, Ljava/util/AbstractList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 97
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 98
    invoke-super {p0}, Ljava/util/AbstractList;->clear()V

    .line 99
    return-void
.end method

.method protected ensureIsMutable()V
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 149
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v3

    .line 38
    :cond_1
    instance-of v5, p1, Ljava/util/List;

    if-nez v5, :cond_2

    move v3, v4

    .line 39
    goto :goto_0

    .line 44
    :cond_2
    instance-of v5, p1, Ljava/util/RandomAccess;

    if-nez v5, :cond_3

    .line 45
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 48
    check-cast v1, Ljava/util/List;

    .line 49
    .local v1, "other":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->size()I

    move-result v2

    .line 50
    .local v2, "size":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_4

    move v3, v4

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 55
    goto :goto_0

    .line 53
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 63
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->size()I

    move-result v2

    .line 64
    .local v2, "size":I
    const/4 v0, 0x1

    .line 65
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 66
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return v0
.end method

.method public isModifiable()Z
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    return v0
.end method

.method public final makeImmutable()V
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 109
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 114
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 119
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 120
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 126
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 132
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/protobuf/AbstractProtobufList;, "Lcom/google/protobuf/AbstractProtobufList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 138
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
