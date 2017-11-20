.class final Lcom/google/i/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/i/a/b/q;

.field final synthetic c:Lcom/google/i/a/b/a;


# direct methods
.method constructor <init>(Lcom/google/i/a/b/a;ZLcom/google/i/a/b/q;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iput-boolean p2, p0, Lcom/google/i/a/b/c;->a:Z

    iput-object p3, p0, Lcom/google/i/a/b/c;->b:Lcom/google/i/a/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-boolean v1, p0, Lcom/google/i/a/b/c;->a:Z

    iput-boolean v1, v0, Lcom/google/i/a/b/a;->g:Z

    .line 207
    iget-object v0, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-boolean v0, v0, Lcom/google/i/a/b/a;->g:Z

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v0, v0, Lcom/google/i/a/b/a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget v1, v1, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/q;

    .line 213
    new-instance v3, Lcom/google/i/a/b/q;

    iget-object v1, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v1, v1, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    iget-object v2, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v2, v2, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    iget-object v4, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget v4, v4, Lcom/google/i/a/b/a;->k:I

    invoke-direct {v3, v1, v2, v4}, Lcom/google/i/a/b/q;-><init>(Lcom/google/i/a/b/r;Lcom/google/g/a/b/b/c;I)V

    .line 215
    iget-object v1, p0, Lcom/google/i/a/b/c;->b:Lcom/google/i/a/b/q;

    invoke-virtual {v3, v1}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;)V

    .line 216
    invoke-virtual {v3, v0}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/q;)V

    .line 219
    iget-object v1, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v1, v1, Lcom/google/i/a/b/a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget v2, v2, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i/a/b/q;

    .line 220
    iget-object v2, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v2, v2, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v2, v3, v1}, Lcom/google/i/a/b/h;->a(Lcom/google/i/a/b/q;Lcom/google/i/a/b/q;)V

    .line 223
    iget-object v2, v1, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v2, v2, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v2}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v5, v3, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;)Lcom/google/android/location/b/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {v1}, Lcom/google/i/a/b/q;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v2, v2, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v2, v1}, Lcom/google/i/a/b/h;->a(Lcom/google/i/a/b/q;)V

    .line 226
    iget-object v1, v1, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v1, v1, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v1}, Lcom/google/android/location/b/an;->clear()V

    .line 230
    :cond_3
    invoke-virtual {v0}, Lcom/google/i/a/b/q;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 231
    iget-object v0, v0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->clear()V

    .line 232
    iget-object v1, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v0, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v0, v0, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget v2, v2, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v2, v1, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v2}, Lcom/google/i/a/b/h;->a()Lcom/google/android/location/k/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v2

    new-instance v4, Lcom/google/i/a/b/d;

    invoke-direct {v4, v1, v0, v3}, Lcom/google/i/a/b/d;-><init>(Lcom/google/i/a/b/a;Ljava/io/File;Lcom/google/i/a/b/q;)V

    invoke-virtual {v2, v4}, Lcom/google/android/location/k/i;->execute(Ljava/lang/Runnable;)V

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->c()V

    .line 237
    iget-object v0, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    invoke-virtual {v0}, Lcom/google/i/a/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 239
    iget-object v0, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/i/a/b/a;->f:Z

    goto/16 :goto_0

    .line 242
    :cond_5
    iget-object v1, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v0, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget-object v0, v0, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/i/a/b/c;->c:Lcom/google/i/a/b/a;

    iget v2, v2, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/google/i/a/b/a;->a(Ljava/io/File;)V

    goto/16 :goto_0
.end method
