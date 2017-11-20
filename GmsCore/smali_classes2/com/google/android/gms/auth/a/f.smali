.class public final Lcom/google/android/gms/auth/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/a/f;->a:Ljava/io/File;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/auth/a/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/a/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 40
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/a/f;->b:Ljava/util/Properties;

    .line 44
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/google/android/gms/auth/a/f;->a:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/a/f;->b:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 51
    return-void

    .line 54
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 53
    :goto_1
    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/a/f;->b:Ljava/util/Properties;

    const-string v1, "allowed_domains"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v0, ""

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, ","

    move-object v1, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/a/f;->b:Ljava/util/Properties;

    const-string v1, "allowed_domains"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method
