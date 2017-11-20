.class final Lcom/google/i/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/i/a/b/a;


# direct methods
.method constructor <init>(Lcom/google/i/a/b/a;Z)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iput-boolean p2, p0, Lcom/google/i/a/b/g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 362
    iget-boolean v1, p0, Lcom/google/i/a/b/g;->a:Z

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iget-object v1, v1, Lcom/google/i/a/b/a;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 365
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    invoke-virtual {v1}, Lcom/google/i/a/b/a;->c()V

    .line 373
    iget-object v1, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iget v1, v1, Lcom/google/i/a/b/a;->e:I

    if-nez v1, :cond_4

    .line 376
    iget-object v1, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iget-object v1, v1, Lcom/google/i/a/b/a;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 377
    iget-object v4, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iget-object v4, v4, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 376
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/i/a/b/a;->g:Z

    .line 388
    :cond_3
    :goto_2
    return-void

    .line 387
    :cond_4
    iget-object v1, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iget-object v0, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iget v2, v0, Lcom/google/i/a/b/a;->e:I

    iget-object v0, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iget-object v0, v0, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/google/i/a/b/g;->b:Lcom/google/i/a/b/a;

    iget v3, v3, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v2, v0}, Lcom/google/i/a/b/a;->a(ILjava/io/File;)V

    goto :goto_2
.end method
