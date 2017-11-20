.class final Lcom/google/common/collect/fh;
.super Lcom/google/common/collect/jv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/jv;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/LinkedListMultimap;

    return-object v0
.end method

.method final c()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 950
    new-instance v0, Lcom/google/common/collect/fi;

    new-instance v1, Lcom/google/common/collect/fk;

    iget-object v2, p0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/fk;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fa;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/fi;-><init>(Lcom/google/common/collect/fh;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
