.class final Lcom/google/common/collect/an;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/am;


# direct methods
.method constructor <init>(Lcom/google/common/collect/am;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/am;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/am;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lcom/google/common/collect/ao;

    invoke-virtual {p0}, Lcom/google/common/collect/an;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ao;-><init>(Lcom/google/common/collect/an;I)V

    return-object v0
.end method
