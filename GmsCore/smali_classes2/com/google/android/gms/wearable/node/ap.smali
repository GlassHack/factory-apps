.class final Lcom/google/android/gms/wearable/node/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/an;


# instance fields
.field private final a:Lcom/google/android/gms/wearable/c/m;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/wearable/node/v;

.field private final d:Ljava/lang/String;

.field private e:Ljava/io/FileInputStream;

.field private final f:Ljava/security/MessageDigest;

.field private g:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;I)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/m;

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->a:Lcom/google/android/gms/wearable/c/m;

    .line 39
    invoke-static {}, Lcom/google/android/gms/wearable/node/m;->a()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->f:Ljava/security/MessageDigest;

    .line 40
    iput-object p3, p0, Lcom/google/android/gms/wearable/node/ap;->c:Lcom/google/android/gms/wearable/node/v;

    .line 41
    add-int/lit8 v0, p4, -0x49

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->g:Ljava/nio/ByteBuffer;

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->c:Lcom/google/android/gms/wearable/node/v;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/google/android/gms/wearable/c/m;->m:Z

    .line 45
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/ap;->c:Lcom/google/android/gms/wearable/node/v;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/v;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->e:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    invoke-static {p2, p4}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/c/m;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->b:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/n;

    .line 60
    iput p1, v0, Lcom/google/android/gms/wearable/c/n;->e:I

    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "wearable"

    const-string v2, "Failed to open attachment file to send."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->e:Ljava/io/FileInputStream;

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/n;

    iget-object v0, v0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 146
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 147
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/ap;->e:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 150
    if-gez v1, :cond_0

    .line 162
    :goto_1
    return v0

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    const-string v2, "wearable"

    const-string v3, "QueuedMessage: Error when trying to read next segment in file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/wearable/c/m;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->a:Lcom/google/android/gms/wearable/c/m;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->e:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/wearable/c/n;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called getNextMessagePiece on an empty array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/n;

    .line 121
    :goto_0
    return-object v0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->g:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/node/ap;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/ap;->f:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/ap;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/ap;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/ap;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/ap;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/ap;->d:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    new-instance v4, Lcom/google/android/gms/wearable/c/k;

    invoke-direct {v4}, Lcom/google/android/gms/wearable/c/k;-><init>()V

    iput-object v4, v3, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iget-object v4, v3, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iput-object v2, v4, Lcom/google/android/gms/wearable/c/k;->a:Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iput-object v1, v2, Lcom/google/android/gms/wearable/c/k;->c:[B

    iget-object v1, v3, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iput-boolean v0, v1, Lcom/google/android/gms/wearable/c/k;->b:Z

    .line 110
    if-eqz v0, :cond_3

    .line 111
    iget-object v0, v3, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/ap;->f:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/m;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/wearable/c/k;->d:Ljava/lang/String;

    .line 113
    const-string v0, "wearable"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending final file piece for file with digest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iget-object v2, v2, Lcom/google/android/gms/wearable/c/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/ap;->d()V

    .line 121
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/c/n;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->e:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->e:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ap;->e:Ljava/io/FileInputStream;

    .line 137
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
