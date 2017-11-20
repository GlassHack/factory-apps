.class final Lcom/google/common/collect/nh;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/nf;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/nf;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/common/collect/nh;->a:Lcom/google/common/collect/nf;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/nf;Lcom/google/common/collect/mn;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/google/common/collect/nh;-><init>(Lcom/google/common/collect/nf;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/common/collect/nh;->a:Lcom/google/common/collect/nf;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/common/collect/nh;->a:Lcom/google/common/collect/nf;

    invoke-virtual {v0}, Lcom/google/common/collect/nf;->a()Ljava/util/Map;

    move-result-object v0

    .line 453
    if-nez v0, :cond_0

    .line 454
    invoke-static {}, Lcom/google/common/collect/ej;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    .line 456
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 457
    new-instance v0, Lcom/google/common/collect/ni;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ni;-><init>(Lcom/google/common/collect/nh;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/common/collect/nh;->a:Lcom/google/common/collect/nf;

    invoke-virtual {v0}, Lcom/google/common/collect/nf;->a()Ljava/util/Map;

    move-result-object v0

    .line 447
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method
