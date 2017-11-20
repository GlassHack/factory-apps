.class final Lcom/google/common/collect/op;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/on;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/on;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/common/collect/op;->a:Lcom/google/common/collect/on;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/on;Lcom/google/common/collect/oo;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/common/collect/op;-><init>(Lcom/google/common/collect/on;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/common/collect/op;->a:Lcom/google/common/collect/on;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/common/collect/oq;

    iget-object v1, p0, Lcom/google/common/collect/op;->a:Lcom/google/common/collect/on;

    invoke-virtual {v1}, Lcom/google/common/collect/on;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/oq;-><init>(Lcom/google/common/collect/op;Ljava/util/Iterator;)V

    return-object v0
.end method
