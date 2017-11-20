.class final Lcom/google/android/gms/org/conscrypt/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;


# instance fields
.field final a:Ljava/io/File;

.field b:Ljava/util/Map;

.field c:I

.field d:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/g;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->b:Ljava/util/Map;

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists but is not a directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->d:[Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->d:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists but cannot list contents."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->d:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->d:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/g;->c:I

    .line 106
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/g;->a:Ljava/io/File;

    .line 107
    return-void

    .line 100
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creation of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " directory failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/g;->c:I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/util/Map;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileClientSessionCache: Failed to delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    :cond_0
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/g;->c:I

    .line 302
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileClientSessionCache: Error reading session data for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/g;->c:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    .line 261
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/g;->d:[Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->d:[Ljava/lang/String;

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/google/android/gms/org/conscrypt/g;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lcom/google/android/gms/org/conscrypt/f;

    iget-object v6, p0, Lcom/google/android/gms/org/conscrypt/g;->a:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/org/conscrypt/f;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/f;

    iget-object v3, v0, Lcom/google/android/gms/org/conscrypt/f;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/g;->b:Ljava/util/Map;

    .line 255
    :cond_5
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/g;->c:I

    add-int/lit8 v0, v0, -0xc

    .line 256
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/g;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 258
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 260
    add-int/lit8 v0, v1, -0x1

    if-lez v0, :cond_0

    move v1, v0

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 305
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileClientSessionCache: Error writing session data for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    return-void
.end method


# virtual methods
.method public final declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 135
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 138
    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->d:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 178
    :goto_0
    monitor-exit p0

    return-object v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/g;->d:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    move-object v0, v1

    .line 148
    goto :goto_0

    .line 152
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/g;->a:Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/g;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 158
    :goto_1
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    .line 165
    new-array v0, v0, [B

    .line 166
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    :catch_1
    move-exception v0

    .line 160
    :try_start_6
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .line 161
    goto :goto_0

    .line 168
    :catch_2
    move-exception v0

    .line 169
    :try_start_7
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    move-object v0, v1

    .line 178
    goto :goto_0

    .line 175
    :catch_3
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 172
    :catchall_1
    move-exception v0

    .line 174
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 178
    :goto_3
    :try_start_b
    throw v0

    .line 175
    :catch_4
    move-exception v0

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_5
    move-exception v1

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_3

    :cond_2
    move-object v2, v0

    goto :goto_1
.end method

.method public final declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .locals 5

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 192
    if-nez p2, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sessionData == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 196
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/g;->a:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 204
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    if-nez v3, :cond_1

    .line 213
    :try_start_3
    iget v3, p0, Lcom/google/android/gms/org/conscrypt/g;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/org/conscrypt/g;->c:I

    .line 216
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/g;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :cond_1
    :try_start_4
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 222
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/g;->b:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 240
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    :try_start_7
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/org/conscrypt/g;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    :try_start_8
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/org/conscrypt/g;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 233
    :try_start_9
    invoke-direct {p0, v2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V

    goto :goto_0

    .line 238
    :catchall_1
    move-exception v0

    .line 235
    invoke-direct {p0, v2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V

    .line 238
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 241
    :catch_2
    move-exception v0

    .line 224
    :try_start_a
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/org/conscrypt/g;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 226
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 229
    :try_start_c
    invoke-direct {p0, v2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 238
    :catch_3
    move-exception v0

    .line 231
    :try_start_d
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/org/conscrypt/g;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 233
    :try_start_e
    invoke-direct {p0, v2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V

    goto :goto_0

    .line 238
    :catchall_2
    move-exception v0

    .line 235
    invoke-direct {p0, v2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V

    .line 238
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 241
    :catchall_3
    move-exception v0

    .line 228
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 229
    :try_start_10
    invoke-direct {p0, v2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V

    .line 241
    :goto_1
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 238
    :catch_4
    move-exception v3

    .line 231
    :try_start_11
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/g;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 233
    :try_start_12
    invoke-direct {p0, v2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V

    goto :goto_1

    .line 238
    :catchall_4
    move-exception v0

    .line 235
    invoke-direct {p0, v2}, Lcom/google/android/gms/org/conscrypt/g;->a(Ljava/io/File;)V

    .line 238
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
.end method
