.class final Lcom/google/common/collect/SparseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "SparseImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableTable",
        "<TR;TC;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/ImmutableTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableTable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cellColumnInRowIndices:[I

.field private final cellRowIndices:[I

.field private final columnMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final rowMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/google/common/collect/SparseImmutableTable;

    .line 30
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/SparseImmutableTable;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V

    sput-object v0, Lcom/google/common/collect/SparseImmutableTable;->EMPTY:Lcom/google/common/collect/ImmutableTable;

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TR;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    .local p1, "cellList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    .local p2, "rowSpace":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TR;>;"
    .local p3, "columnSpace":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TC;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/RegularImmutableTable;-><init>()V

    .line 44
    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v16

    .line 45
    .local v16, "rowIndex":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v18

    .line 46
    .local v18, "rows":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 47
    .local v14, "row":Ljava/lang/Object;, "TR;"
    new-instance v22, Ljava/util/LinkedHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    .end local v14    # "row":Ljava/lang/Object;, "TR;"
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 50
    .local v10, "columns":Ljava/util/Map;, "Ljava/util/Map<TC;Ljava/util/Map<TR;TV;>;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 51
    .local v7, "col":Ljava/lang/Object;, "TC;"
    new-instance v22, Ljava/util/LinkedHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v22

    invoke-interface {v10, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 53
    .end local v7    # "col":Ljava/lang/Object;, "TC;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v5, v0, [I

    .line 54
    .local v5, "cellRowIndices":[I
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v4, v0, [I

    .line 55
    .local v4, "cellColumnInRowIndices":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_3

    .line 56
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Table$Cell;

    .line 57
    .local v3, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {v3}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v17

    .line 58
    .local v17, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-interface {v3}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v9

    .line 59
    .local v9, "columnKey":Ljava/lang/Object;, "TC;"
    invoke-interface {v3}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v20

    .line 61
    .local v20, "value":Ljava/lang/Object;, "TV;"
    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aput v21, v5, v11

    .line 62
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map;

    .line 63
    .local v19, "thisRow":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v21

    aput v21, v4, v11

    .line 64
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 65
    .local v12, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v12, :cond_2

    .line 66
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, 0x25

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v26, v26, v27

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v26, v26, v27

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v26, v26, v27

    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v26, "Duplicate value for row="

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v26, ", column="

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 76
    :cond_2
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 78
    .end local v3    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    .end local v9    # "columnKey":Ljava/lang/Object;, "TC;"
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v17    # "rowKey":Ljava/lang/Object;, "TR;"
    .end local v19    # "thisRow":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    .end local v20    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/common/collect/SparseImmutableTable;->cellRowIndices:[I

    .line 79
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/common/collect/SparseImmutableTable;->cellColumnInRowIndices:[I

    .line 80
    new-instance v15, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 81
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v15, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 82
    .local v15, "rowBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 83
    .local v13, "row":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_3

    .line 85
    .end local v13    # "row":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    :cond_4
    invoke-virtual {v15}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/SparseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 87
    new-instance v8, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 88
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v8, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 89
    .local v8, "columnBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TC;Ljava/util/Map<TR;TV;>;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 90
    .local v6, "col":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;Ljava/util/Map<TR;TV;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_4

    .line 92
    .end local v6    # "col":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;Ljava/util/Map<TR;TV;>;>;"
    :cond_5
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/SparseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 93
    return-void
.end method


# virtual methods
.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SparseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SparseImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method createSerializedForm()Lcom/google/common/collect/ImmutableTable$SerializedForm;
    .locals 7

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SparseImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    .line 131
    .local v2, "columnKeyToIndex":Ljava/util/Map;, "Ljava/util/Map<TC;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SparseImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v5

    new-array v1, v5, [I

    .line 132
    .local v1, "cellColumnIndices":[I
    const/4 v3, 0x0

    .line 133
    .local v3, "i":I
    invoke-virtual {p0}, Lcom/google/common/collect/SparseImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 134
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    move v3, v4

    .line 135
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 136
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    :cond_0
    iget-object v5, p0, Lcom/google/common/collect/SparseImmutableTable;->cellRowIndices:[I

    invoke-static {p0, v5, v1}, Lcom/google/common/collect/ImmutableTable$SerializedForm;->create(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$SerializedForm;

    move-result-object v5

    return-object v5
.end method

.method getCell(I)Lcom/google/common/collect/Table$Cell;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/SparseImmutableTable;->cellRowIndices:[I

    aget v4, v5, p1

    .line 113
    .local v4, "rowIndex":I
    iget-object v5, p0, Lcom/google/common/collect/SparseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    .local v3, "rowEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ImmutableMap;

    .line 115
    .local v2, "row":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TC;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/SparseImmutableTable;->cellColumnInRowIndices:[I

    aget v1, v5, p1

    .line 116
    .local v1, "columnIndex":I
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    .local v0, "colEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/common/collect/SparseImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v5

    return-object v5
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/SparseImmutableTable;->cellRowIndices:[I

    aget v2, v3, p1

    .line 123
    .local v2, "rowIndex":I
    iget-object v3, p0, Lcom/google/common/collect/SparseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableMap;

    .line 124
    .local v1, "row":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TC;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/SparseImmutableTable;->cellColumnInRowIndices:[I

    aget v0, v3, p1

    .line 125
    .local v0, "columnIndex":I
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SparseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SparseImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/collect/SparseImmutableTable;, "Lcom/google/common/collect/SparseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SparseImmutableTable;->cellRowIndices:[I

    array-length v0, v0

    return v0
.end method
