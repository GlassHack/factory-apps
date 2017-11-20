.class Lcom/google/common/collect/ly;
.super Lcom/google/common/collect/bd;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/base/ai;)V
    .locals 0

    .prologue
    .line 847
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/bd;-><init>(Ljava/util/Collection;Lcom/google/common/base/ai;)V

    .line 848
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 852
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 857
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
