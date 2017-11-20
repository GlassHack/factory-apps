.class Lcom/google/common/collect/ImmutableEnumMap$1;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableEnumMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableEnumMap;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;)Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableEnumMap$1;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableEnumMap;->size()I

    move-result v0

    return v0
.end method
