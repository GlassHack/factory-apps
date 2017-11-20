.class final Lcom/google/common/collect/ei;
.super Lcom/google/common/collect/cd;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/v;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/google/common/collect/ei;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/ei;->b:Lcom/google/common/base/v;

    invoke-direct {p0}, Lcom/google/common/collect/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/common/collect/ei;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ei;->b:Lcom/google/common/base/v;

    invoke-static {v0, v1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
