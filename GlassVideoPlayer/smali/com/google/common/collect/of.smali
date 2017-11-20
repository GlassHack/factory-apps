.class final Lcom/google/common/collect/of;
.super Lcom/google/common/collect/ks;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/oj;

.field final synthetic b:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/oj;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/common/collect/of;->b:Lcom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/of;->a:Lcom/google/common/collect/oj;

    invoke-direct {p0}, Lcom/google/common/collect/ks;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/common/collect/of;->a:Lcom/google/common/collect/oj;

    invoke-virtual {v0}, Lcom/google/common/collect/oj;->getCount()I

    move-result v0

    .line 342
    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/common/collect/of;->b:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/of;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 345
    :cond_0
    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/common/collect/of;->a:Lcom/google/common/collect/oj;

    invoke-virtual {v0}, Lcom/google/common/collect/oj;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
