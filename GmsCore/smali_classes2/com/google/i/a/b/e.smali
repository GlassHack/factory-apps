.class final Lcom/google/i/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/i/a/b/a;


# direct methods
.method constructor <init>(Lcom/google/i/a/b/a;Z)V
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i/a/b/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    iget-boolean v1, p0, Lcom/google/i/a/b/e;->a:Z

    iput-boolean v1, v0, Lcom/google/i/a/b/a;->g:Z

    .line 279
    iget-object v0, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    iget-boolean v0, v0, Lcom/google/i/a/b/a;->g:Z

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->c()V

    .line 285
    iget-object v0, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/i/a/b/a;->f:Z

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    iget-object v0, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    iget-object v0, v0, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/i/a/b/e;->b:Lcom/google/i/a/b/a;

    iget v2, v2, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/google/i/a/b/a;->a(Ljava/io/File;)V

    goto :goto_0
.end method
