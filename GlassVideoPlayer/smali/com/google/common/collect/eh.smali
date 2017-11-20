.class final Lcom/google/common/collect/eh;
.super Lcom/google/common/collect/cd;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/base/ai;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/ai;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/google/common/collect/eh;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/eh;->b:Lcom/google/common/base/ai;

    invoke-direct {p0}, Lcom/google/common/collect/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/common/collect/eh;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/eh;->b:Lcom/google/common/base/ai;

    invoke-static {v0, v1}, Lcom/google/common/collect/ej;->b(Ljava/util/Iterator;Lcom/google/common/base/ai;)Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method
