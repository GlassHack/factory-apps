.class final Lcom/google/c/c/dx;
.super Lcom/google/c/c/at;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/c/c/dw;


# direct methods
.method constructor <init>(Lcom/google/c/c/dw;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/google/c/c/dx;->b:Lcom/google/c/c/dw;

    iput-object p2, p0, Lcom/google/c/c/dx;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/c/c/at;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/c/c/dx;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/c/c/dx;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/c/c/dx;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/c/c/dy;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/dy;-><init>(Lcom/google/c/c/dx;Ljava/util/Map$Entry;)V

    return-object v1
.end method
