.class final Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method final createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/google/common/collect/RegularImmutableBiMap;)I

    move-result v0

    return v0
.end method

.method final isHashCodeFast()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method final map()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    return-object v0
.end method
