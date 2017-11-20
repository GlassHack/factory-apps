.class final Lcom/google/common/collect/jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ai;


# instance fields
.field private final a:Lcom/google/common/base/ai;


# direct methods
.method constructor <init>(Lcom/google/common/base/ai;)V
    .locals 1

    .prologue
    .line 1618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1619
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ai;

    iput-object v0, p0, Lcom/google/common/collect/jc;->a:Lcom/google/common/base/ai;

    .line 1620
    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/google/common/collect/jc;->a:Lcom/google/common/base/ai;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1615
    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/jc;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method
