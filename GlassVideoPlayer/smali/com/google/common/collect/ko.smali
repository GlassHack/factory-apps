.class final Lcom/google/common/collect/ko;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/jt;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jt;)V
    .locals 0

    .prologue
    .line 1953
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 1954
    iput-object p1, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/jt;

    .line 1955
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->clear()V

    .line 1971
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/google/common/collect/ko;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->size()I

    move-result v0

    return v0
.end method
