.class final Lcom/google/common/collect/nq;
.super Lcom/google/common/collect/no;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1

    .prologue
    .line 935
    iput-object p1, p0, Lcom/google/common/collect/nq;->a:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/no;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0, p1}, Lcom/google/common/collect/nq;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 938
    new-instance v0, Lcom/google/common/collect/nr;

    iget-object v1, p0, Lcom/google/common/collect/nq;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/nr;-><init>(Lcom/google/common/collect/nq;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/common/collect/nq;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method
