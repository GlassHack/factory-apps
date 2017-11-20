.class public final Lcom/google/g/a/b/a/c;
.super Lcom/google/g/a/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/g/a/b/k;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/g/a/b/c;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/g/a/b/a/c;->b:Ljava/util/Set;

    .line 54
    iput-object p1, p0, Lcom/google/g/a/b/a/c;->a:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private b([BLjava/lang/String;)I
    .locals 3

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const/4 v0, 0x0

    :try_start_0
    new-array p1, v0, [B

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/g/a/b/a/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/g/a/b/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 148
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 150
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lcom/google/g/a/b/l;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/g/a/b/l;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    new-instance v1, Lcom/google/g/a/b/l;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/g/a/b/l;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DATA_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([BLjava/lang/String;)I
    .locals 1

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/g/a/b/a/c;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Lcom/google/g/a/b/l; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/g/a/b/l;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 202
    .line 204
    :try_start_0
    invoke-static {p1}, Lcom/google/g/a/b/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/google/g/a/b/a/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 206
    :try_start_1
    iget-object v3, p0, Lcom/google/g/a/b/a/c;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    .line 208
    new-array v0, v4, [B

    .line 209
    const/4 v3, 0x0

    :goto_0
    if-lez v4, :cond_3

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Read "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; expected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " more"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_0

    .line 220
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_2
    move-object v0, v1

    .line 223
    :cond_1
    :goto_3
    return-object v0

    .line 209
    :cond_2
    sub-int/2addr v4, v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 218
    :cond_3
    if-eqz v2, :cond_1

    .line 220
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    .line 216
    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 220
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_5
    move-object v0, v1

    .line 223
    goto :goto_3

    .line 218
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_5

    .line 220
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 223
    :cond_5
    :goto_7
    throw v0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_7

    .line 218
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 216
    :catch_6
    move-exception v0

    goto :goto_4

    .line 213
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
