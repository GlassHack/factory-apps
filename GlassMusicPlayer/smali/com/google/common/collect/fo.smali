.class final Lcom/google/common/collect/fo;
.super Lcom/google/common/collect/ks;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/fn;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fn;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/google/common/collect/fo;->b:Lcom/google/common/collect/fn;

    iput-object p2, p0, Lcom/google/common/collect/fo;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/ks;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/common/collect/fo;->b:Lcom/google/common/collect/fn;

    iget-object v0, v0, Lcom/google/common/collect/fn;->a:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/fo;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    iget v0, v0, Lcom/google/common/collect/fl;->c:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/common/collect/fo;->a:Ljava/lang/Object;

    return-object v0
.end method
