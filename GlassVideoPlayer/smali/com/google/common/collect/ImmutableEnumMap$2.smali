.class Lcom/google/common/collect/ImmutableEnumMap$2;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableEnumMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableEnumMap;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$2;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/google/common/collect/dj;

    invoke-direct {v0, p0}, Lcom/google/common/collect/dj;-><init>(Lcom/google/common/collect/ImmutableEnumMap$2;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableEnumMap$2;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$2;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    return-object v0
.end method
