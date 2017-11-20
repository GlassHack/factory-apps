.class final Lcom/google/common/collect/cb;
.super Lcom/google/common/collect/kv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ca;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ca;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/ca;

    invoke-direct {p0}, Lcom/google/common/collect/kv;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/ca;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/ca;

    invoke-virtual {v0}, Lcom/google/common/collect/ca;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/ca;

    invoke-virtual {v0}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/mf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mf;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
