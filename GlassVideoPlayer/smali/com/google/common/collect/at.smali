.class final Lcom/google/common/collect/at;
.super Lcom/google/common/collect/am;
.source "SourceFile"


# instance fields
.field final a:I

.field final synthetic b:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 2

    .prologue
    .line 657
    iput-object p1, p0, Lcom/google/common/collect/at;->b:Lcom/google/common/collect/ArrayTable;

    .line 658
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/am;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/al;)V

    .line 659
    iput p2, p0, Lcom/google/common/collect/at;->a:I

    .line 660
    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/common/collect/at;->b:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/at;->a:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    const-string v0, "Row"

    return-object v0
.end method

.method final b(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/common/collect/at;->b:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/at;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
