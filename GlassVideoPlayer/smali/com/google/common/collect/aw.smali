.class final Lcom/google/common/collect/aw;
.super Lcom/google/common/collect/am;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 2

    .prologue
    .line 785
    iput-object p1, p0, Lcom/google/common/collect/aw;->a:Lcom/google/common/collect/ArrayTable;

    .line 786
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/am;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/al;)V

    .line 787
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/al;)V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/google/common/collect/aw;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method

.method private static a(ILjava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 801
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 806
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private c(I)Ljava/util/Map;
    .locals 2

    .prologue
    .line 796
    new-instance v0, Lcom/google/common/collect/av;

    iget-object v1, p0, Lcom/google/common/collect/aw;->a:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/av;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 784
    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/google/common/collect/aw;->a(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    const-string v0, "Row"

    return-object v0
.end method

.method final synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/google/common/collect/aw;->c(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 784
    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/google/common/collect/aw;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
