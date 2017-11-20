.class final Lcom/google/common/collect/is;
.super Lcom/google/common/collect/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ir;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ir;)V
    .locals 0

    .prologue
    .line 2295
    iput-object p1, p0, Lcom/google/common/collect/is;->a:Lcom/google/common/collect/ir;

    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ir;Lcom/google/common/collect/ia;)V
    .locals 0

    .prologue
    .line 2295
    invoke-direct {p0, p1}, Lcom/google/common/collect/is;-><init>(Lcom/google/common/collect/ir;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2295
    invoke-virtual {p0}, Lcom/google/common/collect/is;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2295
    invoke-virtual {p0}, Lcom/google/common/collect/is;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/google/common/collect/is;->a:Lcom/google/common/collect/ir;

    iget-object v0, v0, Lcom/google/common/collect/ir;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/google/common/collect/is;->a:Lcom/google/common/collect/ir;

    iget-object v0, v0, Lcom/google/common/collect/ir;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2304
    new-instance v1, Lcom/google/common/collect/it;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/it;-><init>(Lcom/google/common/collect/is;Ljava/util/Iterator;)V

    return-object v1
.end method
