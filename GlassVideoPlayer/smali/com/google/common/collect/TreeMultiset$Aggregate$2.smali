.class final enum Lcom/google/common/collect/TreeMultiset$Aggregate$2;
.super Lcom/google/common/collect/TreeMultiset$Aggregate;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILcom/google/common/collect/of;)V

    return-void
.end method


# virtual methods
.method final nodeAggregate(Lcom/google/common/collect/oj;)I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method final treeAggregate(Lcom/google/common/collect/oj;)J
    .locals 2
    .param p1    # Lcom/google/common/collect/oj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 152
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/oj;->c(Lcom/google/common/collect/oj;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method
