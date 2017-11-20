.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;
.super Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V
    .locals 1

    .prologue
    .line 556
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    .line 557
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->d(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 558
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;Lcom/google/common/collect/lp;)V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;->getValue(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final getValue(I)Ljava/util/Map;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V

    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method final keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
