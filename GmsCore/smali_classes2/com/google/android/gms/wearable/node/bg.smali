.class public final Lcom/google/android/gms/wearable/node/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bg;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/c/n;)Lcom/google/android/gms/wearable/c/m;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 245
    const-string v0, "wearable"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logging incoming message piece: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/wearable/node/be;->b(Lcom/google/android/gms/wearable/c/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget v0, p1, Lcom/google/android/gms/wearable/c/n;->d:I

    if-ne v0, v4, :cond_1

    .line 250
    invoke-static {p1}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/c/n;)Lcom/google/android/gms/wearable/c/m;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    .line 254
    :cond_1
    iget v0, p1, Lcom/google/android/gms/wearable/c/n;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 255
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Message piece has an invalid queue id."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bg;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/wearable/c/n;->e:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 260
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/c/n;

    iget-object v1, v1, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 264
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WearableReader: Message digest mismatch after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pieces."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_3
    if-nez v0, :cond_a

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p1, Lcom/google/android/gms/wearable/c/n;->d:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bg;->a:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/wearable/c/n;->e:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget v1, p1, Lcom/google/android/gms/wearable/c/n;->c:I

    if-eq v1, v4, :cond_4

    .line 272
    new-instance v0, Ljava/io/IOException;

    const-string v1, "WearableReader: Got a new MessagePiece but it was not the first piece of the set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v1, v0

    .line 278
    :goto_1
    new-instance v2, Lcom/google/android/gms/wearable/c/n;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/c/n;-><init>()V

    .line 279
    iget-object v0, p1, Lcom/google/android/gms/wearable/c/n;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v2, Lcom/google/android/gms/wearable/c/n;->a:[B

    .line 280
    iget-object v0, p1, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    .line 281
    iget v0, p1, Lcom/google/android/gms/wearable/c/n;->c:I

    iput v0, v2, Lcom/google/android/gms/wearable/c/n;->c:I

    .line 282
    iget v0, p1, Lcom/google/android/gms/wearable/c/n;->d:I

    iput v0, v2, Lcom/google/android/gms/wearable/c/n;->d:I

    .line 283
    iget v0, p1, Lcom/google/android/gms/wearable/c/n;->e:I

    iput v0, v2, Lcom/google/android/gms/wearable/c/n;->e:I

    .line 284
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p1, Lcom/google/android/gms/wearable/c/n;->c:I

    if-eq v0, v2, :cond_5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Message piece received out of order; expected: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but got: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/wearable/c/n;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 292
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bg;->a:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/wearable/c/n;->e:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 293
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p1, Lcom/google/android/gms/wearable/c/n;->d:I

    if-ge v0, v2, :cond_7

    .line 298
    const-string v0, "wearable"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    const-string v0, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message not completed yet, number of pieces received: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for message piece: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/wearable/node/be;->b(Lcom/google/android/gms/wearable/c/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 307
    :cond_7
    const-string v0, "wearable"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 308
    const-string v0, "wearable"

    const-string v2, "Message pieces are all here - reconstructing message."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_8
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/be;->a(Ljava/util/List;)Lcom/google/android/gms/wearable/c/m;

    move-result-object v0

    .line 312
    const-string v2, "wearable"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 313
    const-string v2, "wearable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Message reconstruct completed, returning message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 316
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bg;->a:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/wearable/c/n;->e:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method
