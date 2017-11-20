.class final Lcom/google/common/collect/fc;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/google/common/collect/fc;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    .prologue
    .line 847
    new-instance v0, Lcom/google/common/collect/fr;

    iget-object v1, p0, Lcom/google/common/collect/fc;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/fr;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    .line 848
    new-instance v1, Lcom/google/common/collect/fd;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/common/collect/fd;-><init>(Lcom/google/common/collect/fc;Ljava/util/ListIterator;Lcom/google/common/collect/fr;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/common/collect/fc;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
