.class final Lcom/google/common/collect/bx;
.super Lcom/google/common/collect/cp;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lcom/google/common/collect/bs;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/common/collect/bs;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    .line 134
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/common/collect/bx;->a:Ljava/util/Set;

    .line 135
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bs;

    iput-object v0, p0, Lcom/google/common/collect/bx;->b:Lcom/google/common/collect/bs;

    .line 136
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/common/collect/bx;->b:Lcom/google/common/collect/bs;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bs;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/google/common/collect/bx;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/common/collect/bx;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/bx;->b:Lcom/google/common/collect/bs;

    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/common/collect/bx;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/common/collect/bx;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/common/collect/bx;->a:Ljava/util/Set;

    return-object v0
.end method
