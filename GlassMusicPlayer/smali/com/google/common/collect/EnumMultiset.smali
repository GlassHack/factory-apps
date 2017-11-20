.class public final Lcom/google/common/collect/EnumMultiset;
.super Lcom/google/common/collect/AbstractMapBasedMultiset;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient type:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/common/collect/on;->a(Ljava/util/Map;)Lcom/google/common/collect/on;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 80
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 81
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/common/collect/EnumMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/EnumMultiset;
    .locals 3

    .prologue
    .line 55
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "EnumMultiset constructor passed empty Iterable"

    invoke-static {v1, v2}, Lcom/google/common/base/ai;->a(ZLjava/lang/Object;)V

    .line 57
    new-instance v1, Lcom/google/common/collect/EnumMultiset;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/EnumMultiset;-><init>(Ljava/lang/Class;)V

    .line 58
    invoke-static {v1, p0}, Lcom/google/common/collect/eg;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 59
    return-object v1
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;
    .locals 1

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/common/collect/EnumMultiset;->create(Ljava/lang/Class;)Lcom/google/common/collect/EnumMultiset;

    move-result-object v0

    .line 71
    invoke-static {v0, p0}, Lcom/google/common/collect/eg;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 72
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 100
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 101
    iput-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    .line 102
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/common/collect/on;->a(Ljava/util/Map;)Lcom/google/common/collect/on;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/EnumMultiset;->setBackingMap(Ljava/util/Map;)V

    .line 103
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/kp;Ljava/io/ObjectInputStream;)V

    .line 104
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 87
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/kp;Ljava/io/ObjectOutputStream;)V

    .line 88
    return-void
.end method


# virtual methods
.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic count(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic size()I
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
