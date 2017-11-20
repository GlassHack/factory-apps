.class Lcom/google/common/collect/Multimaps$CustomMultimap;
.super Lcom/google/common/collect/AbstractMapBasedMultimap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient factory:Lcom/google/common/base/av;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/av;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;-><init>(Ljava/util/Map;)V

    .line 123
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/av;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->factory:Lcom/google/common/base/av;

    .line 124
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 147
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/av;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->factory:Lcom/google/common/base/av;

    .line 148
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 149
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomMultimap;->setMap(Ljava/util/Map;)V

    .line 150
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 138
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->factory:Lcom/google/common/base/av;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->factory:Lcom/google/common/base/av;

    invoke-interface {v0}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
