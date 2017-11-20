.class final Lcom/google/common/collect/hn;
.super Lcom/google/common/collect/hm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hk;


# instance fields
.field e:Lcom/google/common/collect/hk;

.field f:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 1021
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/hm;-><init>(Ljava/lang/Object;ILcom/google/common/collect/hk;)V

    .line 1026
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hn;->e:Lcom/google/common/collect/hk;

    .line 1039
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hn;->f:Lcom/google/common/collect/hk;

    .line 1022
    return-void
.end method


# virtual methods
.method public final getNextEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/common/collect/hn;->e:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/common/collect/hn;->f:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final setNextEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/google/common/collect/hn;->e:Lcom/google/common/collect/hk;

    .line 1037
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/google/common/collect/hn;->f:Lcom/google/common/collect/hk;

    .line 1050
    return-void
.end method
