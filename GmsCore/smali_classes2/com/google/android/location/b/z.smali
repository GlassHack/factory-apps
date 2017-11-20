.class public final Lcom/google/android/location/b/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/b/u;
.implements Lcom/google/android/location/f/av;


# instance fields
.field private final a:Lcom/google/android/location/k/e;

.field private final b:Ljava/io/File;

.field private final c:Lcom/google/android/location/f/at;

.field private final d:Lcom/google/android/location/b/ap;

.field private final e:Lcom/google/android/location/b/b;


# direct methods
.method public constructor <init>(Lcom/google/android/location/k/e;Ljava/io/File;[B)V
    .locals 9

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Z)V

    .line 83
    iput-object p1, p0, Lcom/google/android/location/b/z;->a:Lcom/google/android/location/k/e;

    .line 84
    new-instance v0, Ljava/io/File;

    const-string v1, "nlpstats"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/b/z;->b:Ljava/io/File;

    .line 85
    new-instance v0, Lcom/google/android/location/f/at;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v5, Lcom/google/android/location/n/a;->bo:Lcom/google/g/a/b/b/c;

    iget-object v6, p0, Lcom/google/android/location/b/z;->b:Ljava/io/File;

    move-object v4, p3

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/f/at;-><init>(ILjavax/crypto/SecretKey;I[BLcom/google/g/a/b/b/c;Ljava/io/File;Lcom/google/android/location/f/av;Lcom/google/android/location/k/e;)V

    iput-object v0, p0, Lcom/google/android/location/b/z;->c:Lcom/google/android/location/f/at;

    .line 91
    new-instance v0, Lcom/google/android/location/b/ap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/location/b/ap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    .line 92
    new-instance v0, Lcom/google/android/location/b/o;

    invoke-direct {v0}, Lcom/google/android/location/b/o;-><init>()V

    .line 94
    new-instance v1, Lcom/google/android/location/b/b;

    invoke-direct {v1, v0}, Lcom/google/android/location/b/b;-><init>(Lcom/google/android/location/b/l;)V

    iput-object v1, p0, Lcom/google/android/location/b/z;->e:Lcom/google/android/location/b/b;

    .line 96
    return-void
.end method

.method private b(Ljava/lang/String;J)Lcom/google/android/location/b/n;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/ap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/aw;

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/location/f/aw;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/n;

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)I
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/b/z;->b(Ljava/lang/String;J)Lcom/google/android/location/b/n;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/location/b/n;

    invoke-direct {v0}, Lcom/google/android/location/b/n;-><init>()V

    new-instance v2, Lcom/google/android/location/f/aw;

    invoke-direct {v2, v0, p2, p3}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    iget-object v3, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/location/b/ap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/location/b/n;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lcom/google/android/location/b/n;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(J)V
    .locals 7

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/b/z;->c(J)V

    .line 165
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->bo:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 166
    iget-object v2, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/b/z;->e:Lcom/google/android/location/b/b;

    iget-object v0, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    invoke-virtual {v0}, Lcom/google/android/location/b/ap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/aw;

    iget-object v6, v3, Lcom/google/android/location/b/b;->a:Lcom/google/android/location/b/l;

    invoke-interface {v6, v5, v0}, Lcom/google/android/location/b/l;->a(Ljava/lang/Object;Lcom/google/android/location/f/aw;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    iget v5, v3, Lcom/google/android/location/b/b;->b:I

    invoke-virtual {v1, v5, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iget-object v2, p0, Lcom/google/android/location/b/z;->c:Lcom/google/android/location/f/at;

    monitor-enter v2

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/b/z;->c:Lcom/google/android/location/f/at;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/at;->b(Lcom/google/g/a/b/b/a;)V

    .line 171
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    invoke-virtual {v0}, Lcom/google/android/location/b/ap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/google/android/location/n/a;->bo:Lcom/google/g/a/b/b/c;

    invoke-virtual {p1}, Lcom/google/g/a/b/b/a;->c()Lcom/google/g/a/b/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 136
    iget-object v0, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    invoke-virtual {v0}, Lcom/google/android/location/b/ap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/aw;

    iget-object v0, v0, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/b/n;

    .line 141
    iget-object v0, v0, Lcom/google/android/location/b/n;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->a()Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 142
    new-instance v4, Lcom/google/g/a/b/b/a;

    sget-object v5, Lcom/google/android/location/n/a;->I:Lcom/google/g/a/b/b/c;

    invoke-direct {v4, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 143
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 144
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 145
    invoke-virtual {v4, v6, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 146
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    return-object v2
.end method

.method public final b(J)V
    .locals 9

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/z;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 179
    iget-object v0, p0, Lcom/google/android/location/b/z;->a:Lcom/google/android/location/k/e;

    iget-object v1, p0, Lcom/google/android/location/b/z;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 182
    iget-object v1, p0, Lcom/google/android/location/b/z;->c:Lcom/google/android/location/f/at;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/b/z;->c:Lcom/google/android/location/f/at;

    invoke-virtual {v0}, Lcom/google/android/location/f/at;->a()Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 184
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    :try_start_3
    iget-object v3, p0, Lcom/google/android/location/b/z;->e:Lcom/google/android/location/b/b;

    iget-object v4, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    iget v0, v3, Lcom/google/android/location/b/b;->b:I

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    iget v6, v3, Lcom/google/android/location/b/b;->b:I

    invoke-virtual {v2, v6, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/location/b/b;->a:Lcom/google/android/location/b/l;

    invoke-interface {v7, v6}, Lcom/google/android/location/b/l;->a(Lcom/google/g/a/b/b/a;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/location/b/b;->a:Lcom/google/android/location/b/l;

    invoke-interface {v8, v6}, Lcom/google/android/location/b/l;->b(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/f/aw;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/google/android/location/b/ap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 194
    :catch_0
    move-exception v0

    .line 189
    sget-boolean v1, Lcom/google/android/location/j/a;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "NlpStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " loading cache from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/b/z;->c:Lcom/google/android/location/f/at;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/b/z;->c(J)V

    .line 196
    return-void

    .line 187
    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 190
    :catch_1
    move-exception v0

    .line 192
    sget-boolean v1, Lcom/google/android/location/j/a;->c:Z

    if-eqz v1, :cond_2

    const-string v1, "NlpStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " loading cache from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/b/z;->c:Lcom/google/android/location/f/at;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/location/b/z;->c()V

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    invoke-virtual {v0}, Lcom/google/android/location/b/ap;->clear()V

    .line 210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v1, p0, Lcom/google/android/location/b/z;->c:Lcom/google/android/location/f/at;

    monitor-enter v1

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/b/z;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 213
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 213
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(J)V
    .locals 5

    .prologue
    .line 200
    const-wide/32 v0, 0x240c8400

    sub-long v0, p1, v0

    .line 201
    iget-object v2, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    monitor-enter v2

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    invoke-virtual {v3, v0, v1, v0, v1}, Lcom/google/android/location/b/ap;->a(JJ)V

    .line 203
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/location/b/z;->d:Lcom/google/android/location/b/ap;

    invoke-virtual {v0}, Lcom/google/android/location/b/ap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
