.class final Lcom/google/common/collect/nb;
.super Lcom/google/common/collect/iz;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/ne;

.field final synthetic b:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/iz;-><init>()V

    .line 1135
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/google/common/collect/nb;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-static {v0, p1}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1055
    new-instance v0, Lcom/google/common/collect/nc;

    invoke-direct {v0, p0}, Lcom/google/common/collect/nc;-><init>(Lcom/google/common/collect/nb;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1034
    invoke-virtual {p0, p1}, Lcom/google/common/collect/nb;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/google/common/collect/nb;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/common/collect/nb;->a:Lcom/google/common/collect/ne;

    .line 1068
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ne;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ne;-><init>(Lcom/google/common/collect/nb;Lcom/google/common/collect/mn;)V

    iput-object v0, p0, Lcom/google/common/collect/nb;->a:Lcom/google/common/collect/ne;

    :cond_0
    return-object v0
.end method
