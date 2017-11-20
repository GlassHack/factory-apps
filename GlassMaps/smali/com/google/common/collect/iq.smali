.class final Lcom/google/common/collect/iq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;


# instance fields
.field final synthetic a:Lcom/google/common/base/aj;


# direct methods
.method constructor <init>(Lcom/google/common/base/aj;)V
    .locals 0

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/google/common/collect/iq;->a:Lcom/google/common/base/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 3

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/google/common/collect/iq;->a:Lcom/google/common/base/aj;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2201
    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/iq;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method
