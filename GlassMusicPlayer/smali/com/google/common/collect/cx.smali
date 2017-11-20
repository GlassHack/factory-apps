.class final Lcom/google/common/collect/cx;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap$Inverse;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/google/common/collect/cx;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/cx;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 587
    new-instance v0, Lcom/google/common/collect/cy;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cy;-><init>(Lcom/google/common/collect/cx;)V

    return-object v0
.end method
