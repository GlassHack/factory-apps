.class final Lcom/google/common/collect/im;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/il;


# direct methods
.method constructor <init>(Lcom/google/common/collect/il;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/il;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/il;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/il;

    invoke-virtual {v0}, Lcom/google/common/collect/il;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/il;

    iget-object v1, v1, Lcom/google/common/collect/il;->a:Lcom/google/common/base/w;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->access$200(Ljava/util/Set;Lcom/google/common/base/w;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
