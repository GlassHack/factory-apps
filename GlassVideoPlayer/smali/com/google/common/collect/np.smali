.class abstract Lcom/google/common/collect/np;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/common/collect/np;->c:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/google/common/collect/np;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/common/collect/np;->c:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 261
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/common/collect/np;->c:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
