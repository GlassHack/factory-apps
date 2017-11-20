.class final Lcom/google/common/collect/od;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Ljava/util/Comparator;

.field final synthetic d:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/common/collect/od;->d:Lcom/google/common/collect/TreeBasedTable;

    iput-object p2, p0, Lcom/google/common/collect/od;->b:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/od;->c:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/od;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/google/common/collect/od;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/od;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/od;->c:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/od;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 370
    :goto_0
    if-nez v0, :cond_0

    .line 371
    iput-object v1, p0, Lcom/google/common/collect/od;->a:Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/google/common/collect/od;->a:Ljava/lang/Object;

    .line 377
    :goto_1
    return-object v0

    .line 367
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/od;->a:Ljava/lang/Object;

    .line 377
    invoke-virtual {p0}, Lcom/google/common/collect/od;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method
