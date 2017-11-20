.class final Lcom/google/common/collect/kk;
.super Lcom/google/common/collect/ch;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/kj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kj;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/google/common/collect/kk;->b:Lcom/google/common/collect/kj;

    iput-object p2, p0, Lcom/google/common/collect/kk;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ch;-><init>()V

    return-void
.end method

.method private b()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/common/collect/kk;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/common/collect/kk;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/google/common/collect/kk;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/google/common/collect/kk;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
