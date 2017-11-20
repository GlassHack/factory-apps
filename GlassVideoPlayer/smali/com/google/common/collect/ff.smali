.class final Lcom/google/common/collect/ff;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 3

    .prologue
    .line 918
    new-instance v0, Lcom/google/common/collect/fg;

    new-instance v1, Lcom/google/common/collect/fr;

    iget-object v2, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v1, v2, p1}, Lcom/google/common/collect/fr;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/fg;-><init>(Lcom/google/common/collect/ff;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
