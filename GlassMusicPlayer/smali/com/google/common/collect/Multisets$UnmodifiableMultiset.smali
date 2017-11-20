.class Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
.super Lcom/google/common/collect/cn;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/kp;

.field transient elementSet:Ljava/util/Set;

.field transient entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kp;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/common/collect/cn;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/kp;

    .line 96
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/kp;

    invoke-interface {v0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/kp;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet:Ljava/util/Set;

    .line 114
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->createElementSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->entrySet:Ljava/util/Set;

    .line 123
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/kp;

    invoke-interface {v0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/kp;

    invoke-interface {v0}, Lcom/google/common/collect/kp;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;)Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
