.class final Lcom/google/common/collect/hi;
.super Lcom/google/common/collect/hh;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3593
    iput-object p1, p0, Lcom/google/common/collect/hi;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/hh;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3597
    invoke-virtual {p0}, Lcom/google/common/collect/hi;->a()Lcom/google/common/collect/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/hz;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
