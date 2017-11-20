.class Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method getNextInKToVBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method getNextInVToKBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method
