.class final Lcom/google/common/collect/bq;
.super Lcom/google/common/collect/ah;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ah;-><init>(Lcom/google/common/collect/af;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/bn;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/google/common/collect/bq;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private b()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 2

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lcom/google/common/collect/bq;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ej;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 582
    return-object v0
.end method


# virtual methods
.method final synthetic a()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/google/common/collect/bq;->b()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/google/common/collect/bq;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/google/common/collect/bq;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
