.class final Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/gv;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    .prologue
    .line 3879
    invoke-direct/range {p0 .. p12}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/gv;Ljava/util/concurrent/ConcurrentMap;)V

    .line 3881
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 3889
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3890
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 3891
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->b()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 3892
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    .line 3893
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 3884
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3885
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    .line 3886
    return-void
.end method
