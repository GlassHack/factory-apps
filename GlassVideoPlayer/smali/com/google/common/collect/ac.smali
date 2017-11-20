.class final Lcom/google/common/collect/ac;
.super Lcom/google/common/collect/jy;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ab;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ab;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    invoke-direct {p0}, Lcom/google/common/collect/jy;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    invoke-virtual {v0}, Lcom/google/common/collect/ab;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
