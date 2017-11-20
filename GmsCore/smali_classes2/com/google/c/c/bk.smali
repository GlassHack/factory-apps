.class final Lcom/google/c/c/bk;
.super Lcom/google/c/c/ek;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/c/c/bj;


# direct methods
.method constructor <init>(Lcom/google/c/c/bj;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/c/c/bk;->b:Lcom/google/c/c/bj;

    iput-object p2, p0, Lcom/google/c/c/bk;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/c/c/ek;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/c/c/bk;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/c/c/bk;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
