.class final Lcom/google/c/c/dy;
.super Lcom/google/c/c/av;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/c/c/dx;


# direct methods
.method constructor <init>(Lcom/google/c/c/dx;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/c/c/dy;->b:Lcom/google/c/c/dx;

    iput-object p2, p0, Lcom/google/c/c/dy;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/c/c/av;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/c/c/dy;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/c/c/dy;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/c/c/dy;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/c/c/dy;->b:Lcom/google/c/c/dx;

    iget-object v1, v1, Lcom/google/c/c/dx;->b:Lcom/google/c/c/dw;

    iget-object v1, v1, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/c/c/du;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
