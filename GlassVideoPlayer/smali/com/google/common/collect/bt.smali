.class final Lcom/google/common/collect/bt;
.super Lcom/google/common/collect/cf;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Collection;

.field private final b:Lcom/google/common/collect/bs;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/common/collect/bs;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/common/collect/cf;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/bt;->a:Ljava/util/Collection;

    .line 92
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bs;

    iput-object v0, p0, Lcom/google/common/collect/bt;->b:Lcom/google/common/collect/bs;

    .line 93
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/bt;->b:Lcom/google/common/collect/bs;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bs;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/common/collect/bt;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/collect/bt;->a:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/bt;->b:Lcom/google/common/collect/bs;

    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/common/collect/bt;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/common/collect/bt;->a:Ljava/util/Collection;

    return-object v0
.end method
