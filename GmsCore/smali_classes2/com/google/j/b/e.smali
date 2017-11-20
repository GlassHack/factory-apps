.class public final Lcom/google/j/b/e;
.super Lcom/google/j/b/p;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/j/g;

.field private b:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Hashtable;

.field private p:Ljava/util/Vector;

.field private q:[B

.field private r:[B

.field private s:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/j/b/p;-><init>()V

    .line 28
    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/j/b/e;->b:Ljava/lang/String;

    .line 39
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/j/b/e;->b(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/j/b/p;-><init>(Ljava/lang/String;I)V

    .line 28
    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/j/b/e;->b:Ljava/lang/String;

    .line 39
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/j/b/e;->b(I)V

    .line 73
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/j/b/e;->s:[B

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/b/e;->s:[B

    iget-object v0, p0, Lcom/google/j/b/e;->s:[B

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/j/b/e;->r:[B

    if-nez v0, :cond_3

    .line 214
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/j/b/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/j/b/e;->n:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/j/b/e;->n:Ljava/lang/String;

    :goto_0
    invoke-static {v2, v0}, Lcom/google/j/b/g;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/google/j/b/e;->o:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/j/b/e;->n:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/google/j/b/g;->a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->s_()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->s_()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/b/e;->r:[B

    iget-object v0, p0, Lcom/google/j/b/e;->r:[B

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/google/j/b/e;->q:[B

    if-nez v0, :cond_6

    .line 217
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/j/b/e;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/j/b/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/j/b/e;->k()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/j/b/e;->r:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    invoke-interface {v3}, Lcom/google/j/g;->s_()I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/b/e;->q:[B

    iget-object v0, p0, Lcom/google/j/b/e;->q:[B

    .line 219
    :cond_6
    return-void

    .line 214
    :cond_7
    const-string v0, "multipart/related"

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 312
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/j/b/e;->q:[B

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b/e;->r:[B

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b/e;->s:[B

    .line 316
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/b/b;

    invoke-virtual {v0}, Lcom/google/j/b/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 321
    :cond_0
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/j/b/p;->a(I)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/b/e;->q:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 109
    invoke-super {p0}, Lcom/google/j/b/p;->e()V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/google/j/b/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    const-string v0, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iput-object p2, p0, Lcom/google/j/b/e;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/j/b/e;->o:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/j/b/e;->o:Ljava/util/Hashtable;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/j/b/e;->o:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([B)V
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/j/d;

    invoke-direct {v0, p1}, Lcom/google/j/d;-><init>([B)V

    iput-object v0, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/b/e;->l()V

    .line 372
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 374
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/j/b/e;->q:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 375
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/j/b/e;->r:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->t_()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 386
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/j/b/e;->s:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/b/b;

    invoke-virtual {v0}, Lcom/google/j/b/b;->t_()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 387
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/InputStream;

    .line 393
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 395
    new-instance v1, Lcom/google/g/a/b/n;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/n;-><init>([Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/b/e;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()I
    .locals 3

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/b/e;->l()V

    .line 338
    iget-object v0, p0, Lcom/google/j/b/e;->q:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 339
    iget-object v1, p0, Lcom/google/j/b/e;->r:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 340
    iget-object v1, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/google/j/b/e;->a:Lcom/google/j/g;

    invoke-interface {v1}, Lcom/google/j/g;->s_()I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/google/j/b/e;->s:[B

    array-length v1, v1

    add-int/2addr v1, v0

    .line 350
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/google/j/b/e;->p:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/b/b;

    invoke-virtual {v0}, Lcom/google/j/b/b;->s_()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v1, v0

    .line 350
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 355
    :cond_2
    monitor-exit p0

    return v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The secure flag is set  based on the service uri"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
