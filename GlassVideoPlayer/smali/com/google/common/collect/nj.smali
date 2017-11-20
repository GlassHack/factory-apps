.class final Lcom/google/common/collect/nj;
.super Lcom/google/common/collect/cl;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/ni;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ni;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/common/collect/nj;->b:Lcom/google/common/collect/ni;

    iput-object p2, p0, Lcom/google/common/collect/nj;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/cl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/common/collect/nj;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/google/common/collect/nj;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/google/common/collect/nj;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/common/collect/cl;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
