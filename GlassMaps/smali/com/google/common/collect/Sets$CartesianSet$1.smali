.class final Lcom/google/common/collect/Sets$CartesianSet$1;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field final synthetic val$axes:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->val$axes:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1080
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$CartesianSet$1;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->val$axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->val$axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method