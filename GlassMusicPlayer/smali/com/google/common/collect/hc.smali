.class final Lcom/google/common/collect/hc;
.super Lcom/google/common/collect/gy;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/hk;

.field b:Lcom/google/common/collect/hk;

.field final synthetic c:Lcom/google/common/collect/hb;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hb;)V
    .locals 0

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/common/collect/hc;->c:Lcom/google/common/collect/hb;

    invoke-direct {p0}, Lcom/google/common/collect/gy;-><init>()V

    .line 3017
    iput-object p0, p0, Lcom/google/common/collect/hc;->a:Lcom/google/common/collect/hk;

    .line 3029
    iput-object p0, p0, Lcom/google/common/collect/hc;->b:Lcom/google/common/collect/hk;

    return-void
.end method


# virtual methods
.method public final getNextEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/google/common/collect/hc;->a:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/google/common/collect/hc;->b:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final setNextEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 3026
    iput-object p1, p0, Lcom/google/common/collect/hc;->a:Lcom/google/common/collect/hk;

    .line 3027
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 3038
    iput-object p1, p0, Lcom/google/common/collect/hc;->b:Lcom/google/common/collect/hk;

    .line 3039
    return-void
.end method
