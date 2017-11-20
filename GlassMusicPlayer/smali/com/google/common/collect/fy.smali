.class Lcom/google/common/collect/fy;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;

.field final b:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/google/common/collect/fy;->a:Ljava/util/List;

    .line 637
    iput p2, p0, Lcom/google/common/collect/fy;->b:I

    .line 638
    return-void
.end method

.method private a(I)Ljava/util/List;
    .locals 3

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/google/common/collect/fy;->size()I

    move-result v0

    .line 643
    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(II)I

    .line 644
    iget v0, p0, Lcom/google/common/collect/fy;->b:I

    mul-int/2addr v0, p1

    .line 645
    iget v1, p0, Lcom/google/common/collect/fy;->b:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/fy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 646
    iget-object v2, p0, Lcom/google/common/collect/fy;->a:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/google/common/collect/fy;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/common/collect/fy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/common/collect/fy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/fy;->b:I

    div-int/2addr v0, v1

    .line 653
    iget v1, p0, Lcom/google/common/collect/fy;->b:I

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/fy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 654
    add-int/lit8 v0, v0, 0x1

    .line 656
    :cond_0
    return v0
.end method
