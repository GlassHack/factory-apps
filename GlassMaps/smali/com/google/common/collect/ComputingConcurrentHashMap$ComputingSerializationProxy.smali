.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final computingFunction:Lcom/google/common/base/w;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/gv;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/w;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct/range {p0 .. p12}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/gv;Ljava/util/concurrent/ConcurrentMap;)V

    .line 379
    iput-object p13, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lcom/google/common/base/w;

    .line 380
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 391
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lcom/google/common/base/w;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/w;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 393
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    .line 394
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 383
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 384
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    .line 385
    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method
