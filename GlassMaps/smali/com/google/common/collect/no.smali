.class abstract Lcom/google/common/collect/no;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/common/collect/no;->b:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/google/common/collect/no;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/common/collect/no;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/collect/no;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
