.class final Lcom/google/common/collect/ImmutableTable$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cellColumnIndices:[I

.field private final cellRowIndices:[I

.field private final cellValues:[Ljava/lang/Object;

.field private final columnKeys:[Ljava/lang/Object;

.field private final rowKeys:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I)V
    .locals 0
    .param p1, "rowKeys"    # [Ljava/lang/Object;
    .param p2, "columnKeys"    # [Ljava/lang/Object;
    .param p3, "cellValues"    # [Ljava/lang/Object;
    .param p4, "cellRowIndices"    # [I
    .param p5, "cellColumnIndices"    # [I

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    .line 387
    iput-object p2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    .line 388
    iput-object p3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    .line 389
    iput-object p4, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellRowIndices:[I

    .line 390
    iput-object p5, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellColumnIndices:[I

    .line 391
    return-void
.end method

.method static create(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$SerializedForm;
    .locals 6
    .param p1, "cellRowIndices"    # [I
    .param p2, "cellColumnIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableTable",
            "<***>;[I[I)",
            "Lcom/google/common/collect/ImmutableTable$SerializedForm;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "table":Lcom/google/common/collect/ImmutableTable;, "Lcom/google/common/collect/ImmutableTable<***>;"
    new-instance v0, Lcom/google/common/collect/ImmutableTable$SerializedForm;

    .line 396
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 397
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 398
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/ImmutableTable$SerializedForm;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I)V

    .line 395
    return-object v0
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 404
    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 405
    invoke-static {}, Lcom/google/common/collect/ImmutableTable;->of()Lcom/google/common/collect/ImmutableTable;

    move-result-object v2

    .line 416
    :goto_0
    return-object v2

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 408
    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/ImmutableTable;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable;

    move-result-object v2

    goto :goto_0

    .line 410
    :cond_1
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 412
    .local v0, "cellListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Table$Cell<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 413
    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellRowIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellColumnIndices:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->cellValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    .line 414
    invoke-static {v2, v3, v4}, Lcom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v2

    .line 413
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->rowKeys:[Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/ImmutableTable$SerializedForm;->columnKeys:[Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    .line 416
    invoke-static {v2, v3, v4}, Lcom/google/common/collect/RegularImmutableTable;->forOrderedComponents(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/RegularImmutableTable;

    move-result-object v2

    goto :goto_0
.end method
