.class final Lcom/google/common/collect/ji;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/jh;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jh;)V
    .locals 0

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/google/common/collect/ji;->a:Lcom/google/common/collect/jh;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/google/common/collect/ji;->a:Lcom/google/common/collect/jh;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1536
    new-instance v0, Lcom/google/common/collect/jj;

    iget-object v1, p0, Lcom/google/common/collect/ji;->a:Lcom/google/common/collect/jh;

    iget-object v1, v1, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/jj;-><init>(Lcom/google/common/collect/ji;Ljava/util/Iterator;)V

    return-object v0
.end method
