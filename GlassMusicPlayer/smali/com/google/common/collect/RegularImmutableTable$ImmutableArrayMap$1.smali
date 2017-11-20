.class Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/ol;
    .locals 2

    .prologue
    .line 389
    new-instance v0, Lcom/google/common/collect/lq;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/lq;-><init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;I)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    return-object v0
.end method
