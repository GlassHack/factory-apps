.class Lcom/google/common/collect/fw;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 1150
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1151
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/fw;->a:Ljava/util/List;

    .line 1152
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/common/collect/fw;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1157
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/common/collect/fw;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/google/common/collect/fw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/common/collect/fw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/common/collect/fw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/google/common/collect/fw;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/common/collect/fw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
