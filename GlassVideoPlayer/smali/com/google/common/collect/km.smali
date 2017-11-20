.class final Lcom/google/common/collect/km;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/kl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kl;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/google/common/collect/km;->b:Lcom/google/common/collect/kl;

    iput-object p2, p0, Lcom/google/common/collect/km;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/common/collect/km;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/common/collect/km;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/google/common/collect/km;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
