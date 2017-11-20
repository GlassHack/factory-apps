.class abstract Lcom/google/common/collect/RegularImmutableTable$CellSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 79
    instance-of v1, p1, Lcom/google/common/collect/nx;

    if-eqz v1, :cond_0

    .line 80
    check-cast p1, Lcom/google/common/collect/nx;

    .line 81
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/RegularImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableTable;->size()I

    move-result v0

    return v0
.end method
