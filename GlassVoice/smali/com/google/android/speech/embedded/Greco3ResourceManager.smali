.class public Lcom/google/android/speech/embedded/Greco3ResourceManager;
.super Lcom/google/speech/recognizer/ResourceManager;
.source "Greco3ResourceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Greco3ResourceManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/speech/recognizer/ResourceManager;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3ResourceManager;
    .locals 9
    .param p0, "configFileName"    # Ljava/lang/String;
    .param p1, "resourcePaths"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 17
    new-instance v2, Lcom/google/android/speech/embedded/Greco3ResourceManager;

    invoke-direct {v2}, Lcom/google/android/speech/embedded/Greco3ResourceManager;-><init>()V

    .line 19
    .local v2, "rm":Lcom/google/android/speech/embedded/Greco3ResourceManager;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "configFile":Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/speech/embedded/Greco3Mode;->isAsciiConfiguration(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {v2, p0, p1}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->initFromFile(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 34
    .local v3, "status":I
    :goto_0
    if-nez v3, :cond_2

    .line 39
    .end local v2    # "rm":Lcom/google/android/speech/embedded/Greco3ResourceManager;
    .end local v3    # "status":I
    :goto_1
    return-object v2

    .line 25
    .restart local v2    # "rm":Lcom/google/android/speech/embedded/Greco3ResourceManager;
    :cond_0
    invoke-static {v0}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->getFileBytes(Ljava/io/File;)[B

    move-result-object v1

    .line 26
    .local v1, "fileBytes":[B
    if-nez v1, :cond_1

    .line 27
    const-string v5, "Greco3ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading g3 config file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 28
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v2, v1, p1}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->initFromProto([B[Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "status":I
    goto :goto_0

    .line 38
    .end local v1    # "fileBytes":[B
    :cond_2
    const-string v5, "Greco3ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to bring up g3, Status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 39
    goto :goto_1
.end method

.method private static getFileBytes(Ljava/io/File;)[B
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Lcom/google/android/shared/util/IoUtils;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method
