.class final Lcom/google/maps/api/android/lib6/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/Vector;

.field private final b:Lcom/google/g/a/b/b/f;

.field private final c:Z

.field private final d:Z

.field private synthetic e:Lcom/google/maps/api/android/lib6/b/h;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/util/Vector;Lcom/google/g/a/b/b/f;)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/b/l;->b:Lcom/google/g/a/b/b/f;

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/b/h;->a(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/l;->c:Z

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/b/h;->b(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/l;->d:Z

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_6

    const-string v0, "REQUEST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad HTTP response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/g;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/g;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/b/h;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/h;->h:Lcom/google/g/a/b/t;

    invoke-interface {v0}, Lcom/google/g/a/b/t;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server 500 for request types: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/maps/api/android/lib6/b/h;->a(IZLjava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/maps/api/android/lib6/b/m;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Serverside failure (HTTP"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/b/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x193

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->d(Lcom/google/maps/api/android/lib6/b/h;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->f()V

    :cond_3
    :goto_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad HTTP response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(I)V

    const-string v0, "DRD"

    const-string v1, "Server side HTTP not implemented"

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server side HTTP not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v0, 0x190

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/h;->d(Lcom/google/maps/api/android/lib6/b/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->g()V

    goto :goto_1

    :cond_6
    const-string v0, "application/binary"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "REQUEST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad HTTP content type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad HTTP content type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 8

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "REQUEST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Processing DataRequest: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v5

    if-eq v1, v5, :cond_2

    const-string v3, "REQUEST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expecting request type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".  ABORTING!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RT: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " != "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    :try_start_2
    const-string v3, "REQUEST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v3, v0, Ljava/io/EOFException;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/b/g;->e()V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-boolean v3, v3, Lcom/google/maps/api/android/lib6/b/h;->c:Z

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "No server support for data request: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/b/h;->h:Lcom/google/g/a/b/t;

    invoke-interface {v3}, Lcom/google/g/a/b/t;->b()Z

    move-result v3

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v3, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(IZLjava/lang/String;)V

    :cond_0
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    throw v0

    :cond_2
    :try_start_3
    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/b/g;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/g;)V

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-void

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    :try_start_4
    const-string v3, "REQUEST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RunTimeException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/b/g;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/b/l;->c:Z

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/b/l;->d:Z

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;ZZ)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;J)J

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DataRequestDispatcher"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final run()V
    .locals 19

    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1c

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/k;->c()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/b/h;->i:Lcom/google/maps/api/android/lib6/b/f;

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget v2, v6, Lcom/google/maps/api/android/lib6/b/f;->a:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    const/4 v2, 0x2

    iput v2, v6, Lcom/google/maps/api/android/lib6/b/f;->a:I

    iget-object v2, v6, Lcom/google/maps/api/android/lib6/b/f;->e:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/google/maps/api/android/lib6/b/f;->c:J

    :cond_2
    :goto_2
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/b/h;->c(Ljava/util/Vector;)Z

    move-result v6

    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/h;->f(Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/maps/api/android/lib6/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/u;->a()Lcom/google/g/a/b/b/f;

    move-result-object v2

    move-object v6, v2

    :goto_3
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->b:Lcom/google/g/a/b/b/f;

    invoke-virtual {v2}, Lcom/google/g/a/b/b/f;->a()Lcom/google/g/a/b/b/f;

    move-result-object v2

    const/16 v10, 0x1f

    invoke-virtual {v2, v10, v6}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    :goto_4
    new-instance v6, Lcom/google/maps/api/android/lib6/b/d;

    invoke-direct {v6, v2}, Lcom/google/maps/api/android/lib6/b/d;-><init>(Lcom/google/g/a/b/b/f;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/b/g;

    instance-of v2, v2, Lcom/google/maps/api/android/lib6/b/d;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v10}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_5
    const/16 v2, 0x17

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/h;->l()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/b/h;->a:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/b/h;->b:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/h;->g(Lcom/google/maps/api/android/lib6/b/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/b/g;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-interface {v2, v9}, Lcom/google/maps/api/android/lib6/b/g;->a(Ljava/io/DataOutput;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v2

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/b/k;->a(Lcom/google/maps/api/android/lib6/b/k;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/b/l;->c:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/maps/api/android/lib6/b/l;->d:Z

    invoke-static {v3, v4, v5}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;ZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/b/k;->a(Lcom/google/maps/api/android/lib6/b/k;)V

    throw v2

    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit p0

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    :try_start_9
    iget v2, v6, Lcom/google/maps/api/android/lib6/b/f;->a:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_2

    const/4 v2, 0x3

    iput v2, v6, Lcom/google/maps/api/android/lib6/b/f;->a:I

    move-object/from16 v0, p0

    iput-object v0, v6, Lcom/google/maps/api/android/lib6/b/f;->d:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v6

    throw v2
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_1
    move-exception v2

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->b:Lcom/google/g/a/b/b/f;

    goto/16 :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    :catch_2
    move-exception v2

    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_5

    :catch_3
    move-exception v2

    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;I)V

    const-string v3, "REQUEST"

    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :cond_7
    :try_start_10
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v2, "DRD"

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->r()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v2

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/b/g;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7

    :catch_4
    move-exception v2

    :try_start_11
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/w;->a()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/b/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const/4 v3, 0x1

    :try_start_13
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "REQUEST"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Connection opened to:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Content-Type"

    const-string v6, "application/binary"

    invoke-virtual {v2, v3, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v8

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/c/a/db;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Bearer "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/b/h;->d(Lcom/google/maps/api/android/lib6/b/h;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v6, "X-Google-Maps-Mobile-API"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/b/h;->o()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->b:Lcom/google/g/a/b/b/f;

    const/16 v13, 0x27

    invoke-virtual {v3, v13}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->b:Lcom/google/g/a/b/b/f;

    const/16 v14, 0x28

    invoke-virtual {v3, v14}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v13, :cond_e

    const/4 v3, 0x1

    :goto_8
    const-string v15, "app version not set"

    invoke-static {v3, v15}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    if-eqz v14, :cond_f

    const/4 v3, 0x1

    :goto_9
    const-string v15, "gmm version not set"

    invoke-static {v3, v15}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/google/c/a/ca;->a(C)Lcom/google/c/a/ca;

    move-result-object v3

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/h;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/h;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v14

    invoke-static {v15}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/google/c/a/cc;

    invoke-direct {v14, v15, v12, v13}, Lcom/google/c/a/cc;-><init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v14}, Lcom/google/c/a/ca;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v3, "REQUEST"

    const-string v6, "Open Connection"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget v5, v3, Lcom/google/maps/api/android/lib6/b/h;->f:I

    array-length v12, v8

    add-int/2addr v5, v12

    iput v5, v3, Lcom/google/maps/api/android/lib6/b/h;->f:I

    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v12}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x3e8

    cmp-long v14, v12, v14

    if-gez v14, :cond_10

    const-string v14, "<1s"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/maps/api/android/lib6/b/l;->a(ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget v14, v3, Lcom/google/maps/api/android/lib6/b/h;->g:I

    add-int/2addr v14, v4

    iput v14, v3, Lcom/google/maps/api/android/lib6/b/h;->g:I

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    const/16 v14, 0x17

    if-eq v3, v14, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/google/maps/api/android/lib6/b/h;->a(I)V

    const-string v4, "DRD"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Protocol version mismatch. Client = 23 Server = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/maps/api/android/lib6/b/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Protocol version mismatch with the server"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_3
    move-exception v3

    move-object v4, v6

    move-object/from16 v18, v5

    move-object v5, v2

    move-object/from16 v2, v18

    :goto_b
    :try_start_16
    const-string v6, "REQUEST"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v2, :cond_b

    :try_start_17
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_b
    :goto_c
    if-eqz v4, :cond_c

    :try_start_18
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_c
    :goto_d
    if-eqz v5, :cond_d

    :try_start_19
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v2, "REQUEST"

    const-string v4, "Close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/b/g;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/b/g;->c()Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "REQUEST"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error processing: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not retrying"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v6, v2}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/g;)V
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_10
    const-wide/16 v14, 0x3e8

    :try_start_1a
    div-long v14, v12, v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/maps/api/android/lib6/b/l;->a(Ljava/io/DataInputStream;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v10

    long-to-int v14, v14

    const/16 v3, 0x16

    const-string v15, "fb"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x16

    const-string v15, "lb"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x16

    const-string v15, "flbs"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "fb="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "|lb="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "|s="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v15, v3, Lcom/google/maps/api/android/lib6/b/h;->i:Lcom/google/maps/api/android/lib6/b/f;

    long-to-int v3, v12

    monitor-enter v15
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    iget v12, v15, Lcom/google/maps/api/android/lib6/b/f;->a:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_12

    iget-object v12, v15, Lcom/google/maps/api/android/lib6/b/f;->d:Ljava/lang/Object;

    move-object/from16 v0, p0

    if-eq v12, v0, :cond_15

    :cond_12
    monitor-exit v15
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :goto_f
    const/16 v3, 0x2000

    if-lt v4, v3, :cond_13

    int-to-long v10, v14

    const-wide/32 v12, 0xea60

    cmp-long v3, v10, v12

    if-gtz v3, :cond_13

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    mul-int/lit16 v10, v4, 0x3e8

    div-int/2addr v10, v14

    invoke-static {v3, v10}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/h;I)I

    const-string v3, "REQUEST"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Sent "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", Loaded "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " bytes.  Byte/Sec = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v10}, Lcom/google/maps/api/android/lib6/b/h;->e(Lcom/google/maps/api/android/lib6/b/h;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e8

    if-ge v4, v3, :cond_17

    const-string v3, "<1kb"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :goto_10
    :try_start_1d
    const-string v3, "REQUEST"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :try_start_1e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :goto_11
    :try_start_1f
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_1f} :catch_4
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :goto_12
    if-eqz v2, :cond_14

    :try_start_20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v2, "REQUEST"

    const-string v3, "Close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/b/g;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/b/g;->c()Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "REQUEST"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Error processing: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " not retrying"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v5, v2}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/g;)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto :goto_13

    :cond_15
    const/4 v12, 0x0

    :try_start_21
    iput v12, v15, Lcom/google/maps/api/android/lib6/b/f;->a:I

    iget-object v12, v15, Lcom/google/maps/api/android/lib6/b/f;->b:Ljava/lang/String;

    iget-wide v0, v15, Lcom/google/maps/api/android/lib6/b/f;->c:J

    move-wide/from16 v16, v0

    const/4 v13, 0x0

    iput-object v13, v15, Lcom/google/maps/api/android/lib6/b/f;->d:Ljava/lang/Object;

    monitor-exit v15
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    sub-long v10, v10, v16

    long-to-int v10, v10

    :try_start_22
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "|d="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|fb="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "|lb="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "|"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "u"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "|s="

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "|"

    :goto_14
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x40

    invoke-static {v10, v11, v3}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :catchall_4
    move-exception v3

    monitor-exit v15

    throw v3

    :cond_16
    const-string v3, ""

    goto :goto_14

    :cond_17
    div-int/lit16 v3, v4, 0x3e8

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto/16 :goto_10

    :catch_5
    move-exception v3

    :try_start_23
    const-string v4, "REQUEST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Closing is: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :catch_6
    move-exception v3

    const-string v4, "REQUEST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Closing os: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_18
    const-string v5, "REQUEST"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Retrying: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/b/h;->h:Lcom/google/g/a/b/t;

    invoke-interface {v2}, Lcom/google/g/a/b/t;->a()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/h;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v7, v2, :cond_0

    const-string v2, "DRD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No requests are processed. Request count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/b/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "No requests are processed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_7
    move-exception v2

    const-string v6, "REQUEST"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Closing is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :catch_8
    move-exception v2

    const-string v4, "REQUEST"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Closing os: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1a
    const-string v6, "REQUEST"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Retrying: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->a:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    throw v3
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Lcom/google/maps/api/android/lib6/b/m; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_2
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/b/l;->c:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/b/l;->d:Z

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/l;->e:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/k;->a(Lcom/google/maps/api/android/lib6/b/k;)V

    return-void

    :catch_9
    move-exception v2

    goto/16 :goto_1

    :catchall_5
    move-exception v2

    move-object/from16 v18, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v3

    move-object/from16 v3, v18

    goto/16 :goto_b

    :catchall_6
    move-exception v3

    move-object/from16 v18, v4

    move-object v4, v5

    move-object v5, v2

    move-object/from16 v2, v18

    goto/16 :goto_b

    :catchall_7
    move-exception v3

    move-object v5, v2

    move-object v2, v4

    move-object v4, v6

    goto/16 :goto_b

    :cond_1d
    move-object v6, v2

    goto/16 :goto_3
.end method
