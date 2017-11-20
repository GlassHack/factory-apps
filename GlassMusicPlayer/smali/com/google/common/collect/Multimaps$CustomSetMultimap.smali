.class Lcom/google/common/collect/Multimaps$CustomSetMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient factory:Lcom/google/common/base/aw;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/aw;)V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 281
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aw;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lcom/google/common/base/aw;

    .line 282
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 302
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aw;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lcom/google/common/base/aw;

    .line 303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 304
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->setMap(Ljava/util/Map;)V

    .line 305
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 293
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lcom/google/common/base/aw;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 295
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/Set;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lcom/google/common/base/aw;

    invoke-interface {v0}, Lcom/google/common/base/aw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
