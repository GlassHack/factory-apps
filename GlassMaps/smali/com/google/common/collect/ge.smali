.class final Lcom/google/common/collect/ge;
.super Lcom/google/common/collect/ob;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Lists$TransformingSequentialList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/common/collect/ge;->a:Lcom/google/common/collect/Lists$TransformingSequentialList;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ob;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/common/collect/ge;->a:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/w;

    invoke-interface {v0, p1}, Lcom/google/common/base/w;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
