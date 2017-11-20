.class final Lcom/google/android/location/collectionlib/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Z

.field final d:Ljava/util/Set;

.field final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/util/Set;Z)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    .line 217
    iput-boolean p2, p0, Lcom/google/android/location/collectionlib/e;->b:Z

    .line 218
    iput-boolean p3, p0, Lcom/google/android/location/collectionlib/e;->c:Z

    .line 219
    iput-object p4, p0, Lcom/google/android/location/collectionlib/e;->d:Ljava/util/Set;

    .line 220
    iput-boolean p5, p0, Lcom/google/android/location/collectionlib/e;->e:Z

    .line 221
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 257
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 258
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    goto :goto_0
.end method
