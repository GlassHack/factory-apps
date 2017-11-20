.class final Lcom/google/c/c/ea;
.super Lcom/google/c/c/at;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/c/c/dz;


# direct methods
.method constructor <init>(Lcom/google/c/c/dz;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/google/c/c/ea;->b:Lcom/google/c/c/dz;

    iput-object p2, p0, Lcom/google/c/c/ea;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/c/c/at;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/google/c/c/ea;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/c/c/ea;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/c/c/ea;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/c/c/ea;->b:Lcom/google/c/c/dz;

    iget-object v1, v1, Lcom/google/c/c/dz;->g:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/c/c/du;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
