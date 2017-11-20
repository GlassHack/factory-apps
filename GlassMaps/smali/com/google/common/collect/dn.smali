.class final Lcom/google/common/collect/dn;
.super Lcom/google/common/collect/om;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/om;

.field final synthetic b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/om;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/common/collect/dn;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/om;

    invoke-direct {p0}, Lcom/google/common/collect/om;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/om;

    invoke-virtual {v0}, Lcom/google/common/collect/om;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/om;

    invoke-virtual {v0}, Lcom/google/common/collect/om;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/om;

    invoke-virtual {v0}, Lcom/google/common/collect/om;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/common/collect/dn;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/om;

    invoke-virtual {v1}, Lcom/google/common/collect/om;->previousIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/om;

    invoke-virtual {v0}, Lcom/google/common/collect/om;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/common/collect/dn;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/dn;->a:Lcom/google/common/collect/om;

    invoke-virtual {v1}, Lcom/google/common/collect/om;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method
