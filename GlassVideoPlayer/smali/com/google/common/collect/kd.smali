.class final Lcom/google/common/collect/kd;
.super Lcom/google/common/collect/ma;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/google/common/collect/kd;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iput-object p2, p0, Lcom/google/common/collect/kd;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1106
    new-instance v0, Lcom/google/common/collect/ke;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ke;-><init>(Lcom/google/common/collect/kd;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/common/collect/kd;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/kd;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
