.class Lcom/google/common/collect/Multimaps$CustomListMultimap;
.super Lcom/google/common/collect/AbstractListMultimap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient factory:Lcom/google/common/base/aw;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/aw;)V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 204
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aw;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/aw;

    .line 205
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aw;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/aw;

    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 227
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->setMap(Ljava/util/Map;)V

    .line 228
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 216
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/aw;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->createCollection()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/List;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/aw;

    invoke-interface {v0}, Lcom/google/common/base/aw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
