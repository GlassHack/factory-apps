.class public final Lcom/google/android/gms/playlog/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Ljava/io/File;

.field private h:Ljava/io/FileOutputStream;

.field private i:[B

.field private j:Lcom/google/protobuf/nano/b;

.field private final k:Ljava/util/ArrayList;

.field private final l:Ljava/util/ArrayList;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;

.field private o:I

.field private p:Lcom/google/android/gms/playlog/b/a/b;

.field private q:Lcom/google/android/gms/playlog/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/b/a/a;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->p:Lcom/google/android/gms/playlog/b/a/b;

    .line 110
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->q:Lcom/google/android/gms/playlog/b/a/c;

    .line 114
    cmp-long v0, p4, v2

    if-lez v0, :cond_0

    cmp-long v0, p6, v2

    if-gtz v0, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " recommendedFileSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxStorageSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    .line 119
    iput-object p2, p0, Lcom/google/android/gms/playlog/b/a/a;->c:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/google/android/gms/playlog/b/a/a;->d:Ljava/lang/String;

    .line 121
    iput-wide p4, p0, Lcom/google/android/gms/playlog/b/a/a;->e:J

    .line 122
    iput-wide p6, p0, Lcom/google/android/gms/playlog/b/a/a;->f:J

    .line 124
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    .line 125
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->h:Ljava/io/FileOutputStream;

    .line 126
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->i:[B

    .line 127
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->j:Lcom/google/protobuf/nano/b;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->k:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->m:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->n:Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/playlog/b/a/a;->o:I

    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->e()V

    .line 137
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->g()V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/playlog/b/a/a;Lcom/google/protobuf/nano/b;)Lcom/google/protobuf/nano/b;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gms/playlog/b/a/a;->j:Lcom/google/protobuf/nano/b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/playlog/b/a/a;)Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->h:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/playlog/b/a/a;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->j:Lcom/google/protobuf/nano/b;

    if-eqz v0, :cond_0

    .line 240
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->j:Lcom/google/protobuf/nano/b;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->i:[B

    if-eqz v0, :cond_1

    .line 243
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->i:[B

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->h:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->h:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->h:Ljava/io/FileOutputStream;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 256
    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    .line 257
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/playlog/b/a/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->j:Lcom/google/protobuf/nano/b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/playlog/b/a/a;)[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->i:[B

    return-object v0
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const-string v0, "DirectoryFileManager"

    const-string v1, "Could not ensure directory exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 154
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 157
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 154
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/gms/common/util/k;->a:Lcom/google/android/gms/common/util/k;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    sget-boolean v1, Lcom/google/android/gms/playlog/b/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "DirectoryFileManager"

    const-string v2, "Loaded existing files as staged: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 171
    const-string v4, "DirectoryFileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 172
    goto :goto_2
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->n:Ljava/lang/Object;

    monitor-enter v4

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->i()J

    move-result-wide v2

    .line 212
    :goto_0
    iget-wide v6, p0, Lcom/google/android/gms/playlog/b/a/a;->f:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 213
    add-int/lit8 v1, v0, 0x1

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v0, v1

    .line 218
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->k:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v0, v1

    .line 222
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/b/a/a;->a(Z)V

    move v0, v1

    goto :goto_0

    .line 227
    :cond_2
    if-lez v0, :cond_3

    .line 228
    const-string v1, "DirectoryFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " files were purged due to exceeding total storage size of: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/playlog/b/a/a;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private h()J
    .locals 6

    .prologue
    .line 563
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/a;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 567
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->i()J

    move-result-wide v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-wide v4

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 569
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private i()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 599
    .line 600
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 601
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 604
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 605
    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 607
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 608
    goto :goto_1

    .line 609
    :cond_2
    return-wide v2
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 413
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/a;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 415
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/b/a/a;->a(Z)V

    .line 423
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 425
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 427
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 420
    :cond_2
    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/b/a/a;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 428
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/n/a/b/a/a/i;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 367
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/a;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 368
    if-nez p1, :cond_0

    .line 370
    monitor-exit v2

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/a/a;->q:Lcom/google/android/gms/playlog/b/a/c;

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/gms/playlog/b/a/c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/playlog/b/a/c;-><init>(Lcom/google/android/gms/playlog/b/a/a;B)V

    iput-object v3, p0, Lcom/google/android/gms/playlog/b/a/a;->q:Lcom/google/android/gms/playlog/b/a/c;

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/a/a;->q:Lcom/google/android/gms/playlog/b/a/c;

    iput-object p1, v3, Lcom/google/android/gms/playlog/b/a/c;->a:Lcom/google/n/a/b/a/a/i;

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/a/a;->q:Lcom/google/android/gms/playlog/b/a/c;

    iget-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->f()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Directory doesn\'t exist."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 372
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The current file was not null.  Be sure to clear the current file before calling this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/playlog/b/a/a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/playlog/b/a/a;->b:Ljava/io/File;

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->h:Ljava/io/FileOutputStream;

    const/16 v4, 0x1000

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->i:[B

    iget-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->i:[B

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/playlog/b/a/a;->j:Lcom/google/protobuf/nano/b;

    sget-boolean v4, Lcom/google/android/gms/playlog/b/a/a;->a:Z

    if-eqz v4, :cond_4

    const-string v4, "DirectoryFileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Created new current file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    sget-boolean v4, Lcom/google/android/gms/playlog/b/a/a;->a:Z

    if-eqz v4, :cond_5

    const-string v4, "DirectoryFileManager"

    const-string v5, "Saving data."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v3}, Lcom/google/android/gms/playlog/b/a/e;->a()V

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/playlog/b/a/a;->e:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_8

    :goto_1
    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/google/android/gms/playlog/b/a/a;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "DirectoryFileManager"

    const-string v1, "--> Over the size limit, creating a new current file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->g:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/b/a/a;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->g()V

    .line 373
    :cond_7
    monitor-exit v2

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/playlog/b/a/a;->a(Z)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public final b()Lcom/google/android/gms/playlog/b/a/d;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/a;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    monitor-exit v2

    .line 519
    :goto_0
    return-object v0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 491
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 493
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 494
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/b/a/a;->b()Lcom/google/android/gms/playlog/b/a/d;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 496
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    const/16 v1, 0x400

    :try_start_3
    invoke-static {v3, v1}, Lcom/google/android/gms/playlog/d/a;->a(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 510
    new-instance v1, Lcom/google/android/gms/playlog/b/a/d;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v0, v4, v5}, Lcom/google/android/gms/playlog/b/a/d;-><init>(Lcom/google/android/gms/playlog/b/a/a;Ljava/io/File;[BB)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 516
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 519
    :goto_1
    :try_start_5
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    const-string v1, "DirectoryFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not read staged file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/b/a/a;->b()Lcom/google/android/gms/playlog/b/a/d;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 518
    :catch_1
    move-exception v0

    const-string v0, "DirectoryFileManager"

    const-string v3, "Couldn\'t close input stream."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 513
    :catch_2
    move-exception v1

    :try_start_6
    new-instance v1, Lcom/google/android/gms/playlog/b/a/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, p0, v0, v4, v5}, Lcom/google/android/gms/playlog/b/a/d;-><init>(Lcom/google/android/gms/playlog/b/a/a;Ljava/io/File;[BB)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 516
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 519
    :goto_2
    :try_start_8
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 518
    :catch_3
    move-exception v0

    const-string v0, "DirectoryFileManager"

    const-string v3, "Couldn\'t close input stream."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 515
    :catchall_1
    move-exception v0

    .line 516
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 519
    :goto_3
    :try_start_a
    throw v0

    .line 518
    :catch_4
    move-exception v1

    const-string v1, "DirectoryFileManager"

    const-string v3, "Couldn\'t close input stream."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/playlog/b/a/a;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/a;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/a;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/a/a;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 548
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/gms/playlog/b/a/a;->o:I

    .line 549
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    :goto_0
    return v0

    .line 552
    :cond_0
    :try_start_3
    iget v3, p0, Lcom/google/android/gms/playlog/b/a/a;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/playlog/b/a/a;->o:I

    .line 553
    iget v3, p0, Lcom/google/android/gms/playlog/b/a/a;->o:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 554
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
