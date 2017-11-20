.class final Lcom/google/common/collect/lg;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/google/common/collect/bh;->a()Lcom/google/common/collect/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v2, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bh;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bh;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/google/common/collect/Range;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-static {p1, p2}, Lcom/google/common/collect/lg;->a(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I

    move-result v0

    return v0
.end method
