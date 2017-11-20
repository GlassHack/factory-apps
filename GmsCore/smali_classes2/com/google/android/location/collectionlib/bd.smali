.class final Lcom/google/android/location/collectionlib/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/g/a/b/b/a;

.field final synthetic c:Lcom/google/android/location/collectionlib/bb;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/bb;ILcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    iput p2, p0, Lcom/google/android/location/collectionlib/bd;->a:I

    iput-object p3, p0, Lcom/google/android/location/collectionlib/bd;->b:Lcom/google/g/a/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/location/collectionlib/cy;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/bb;->c(Lcom/google/android/location/collectionlib/bb;)Landroid/os/PowerManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v4, Lcom/google/android/location/collectionlib/bb;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/location/collectionlib/cy;->b:[S

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;IZLjava/lang/String;[S)V

    .line 186
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/bb;->d(Lcom/google/android/location/collectionlib/bb;)Lcom/google/android/location/p/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/cy;->a(Lcom/google/android/location/p/j;)V

    .line 187
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/bb;->e(Lcom/google/android/location/collectionlib/bb;)Z

    move-result v1

    .line 190
    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    iget v2, p0, Lcom/google/android/location/collectionlib/bd;->a:I

    const/4 v3, 0x0

    const-string v4, "Failed to create lock file."

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/location/collectionlib/ao;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 207
    :goto_0
    return-void

    .line 196
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/bd;->b:Lcom/google/g/a/b/b/a;

    invoke-static {v1, v2}, Lcom/google/android/location/collectionlib/bb;->a(Lcom/google/android/location/collectionlib/bb;Lcom/google/g/a/b/b/a;)Lcom/google/android/location/collectionlib/by;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    if-eqz v2, :cond_2

    .line 198
    iget-boolean v2, v1, Lcom/google/android/location/collectionlib/by;->a:Z

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    iget v3, p0, Lcom/google/android/location/collectionlib/bd;->a:I

    iget-object v1, v1, Lcom/google/android/location/collectionlib/by;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/google/android/location/collectionlib/ao;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    goto :goto_0

    .line 201
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/google/android/location/collectionlib/bd;->c:Lcom/google/android/location/collectionlib/bb;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/bb;->a:Lcom/google/android/location/collectionlib/ao;

    iget v3, p0, Lcom/google/android/location/collectionlib/bd;->a:I

    iget-object v4, v1, Lcom/google/android/location/collectionlib/by;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/by;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lcom/google/android/location/collectionlib/ao;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 206
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    throw v1
.end method
