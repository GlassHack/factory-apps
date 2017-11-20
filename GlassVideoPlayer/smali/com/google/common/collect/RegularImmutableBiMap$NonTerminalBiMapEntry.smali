.class Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
.super Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
.source "SourceFile"


# instance fields
.field private final nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    .line 63
    iput-object p4, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    .line 64
    return-void
.end method


# virtual methods
.method getNextInKToVBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method

.method getNextInVToKBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method
