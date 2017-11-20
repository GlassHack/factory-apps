.class final Lcom/google/common/collect/er;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/base/w;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/w;)V
    .locals 0

    .prologue
    .line 828
    iput-object p2, p0, Lcom/google/common/collect/er;->a:Lcom/google/common/base/w;

    invoke-direct {p0, p1}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Lcom/google/common/base/w;

    invoke-interface {v0, p1}, Lcom/google/common/base/w;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
