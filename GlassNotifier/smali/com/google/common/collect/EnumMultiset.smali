.class public final Lcom/google/common/collect/EnumMultiset;
.super Lcom/google/common/collect/AbstractMapBasedMultiset;
.source "EnumMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Lcom/google/common/collect/AbstractMapBasedMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field private transient type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/google/common/collect/EnumCountHashMap;

    invoke-direct {v0, p1}, Lcom/google/common/collect/EnumCountHashMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    .line 79
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 80
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/google/common/collect/EnumMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/google/common/collect/EnumMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/EnumMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/google/common/collect/EnumMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "EnumMultiset constructor passed empty Iterable"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    new-instance v1, Lcom/google/common/collect/EnumMultiset;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    .line 57
    .local v1, "multiset":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {v1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 58
    return-object v1
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/google/common/collect/EnumMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/EnumMultiset;->create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;

    move-result-object v0

    .line 70
    .local v0, "result":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 71
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 98
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 99
    .local v0, "localType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 100
    new-instance v1, Lcom/google/common/collect/EnumCountHashMap;

    iget-object v2, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/google/common/collect/EnumCountHashMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/EnumMultiset;->setBackingMap(Lcom/google/common/collect/AbstractObjectCountMap;)V

    .line 101
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 102
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 86
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 87
    return-void
.end method


# virtual methods
.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic createEntrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/EnumMultiset;, "Lcom/google/common/collect/EnumMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
