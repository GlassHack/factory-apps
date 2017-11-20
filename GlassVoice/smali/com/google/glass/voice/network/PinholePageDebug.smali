.class public Lcom/google/glass/voice/network/PinholePageDebug;
.super Ljava/lang/Object;
.source "PinholePageDebug.java"


# static fields
.field private static final PROTO_EXTENSION:Ljava/lang/String; = ".pb"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static protoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/PinholePageDebug;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResponseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/s3/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 59
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private static protoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "recognizedText"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 31
    sget v0, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    const-string v1, ".pb"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    const-string v2, ".pb"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    :cond_0
    return-object p0
.end method

.method public static resetCounts()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    .line 27
    return-void
.end method

.method public static saveS3ResponseProto([BLjava/lang/String;)V
    .locals 8
    .param p0, "s3Response"    # [B
    .param p1, "recognizedText"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const-string p1, "empty"

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/google/glass/voice/network/PinholePageDebug;->protoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/voice/network/PinholePageDebug;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 45
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 48
    sget v4, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/network/PinholePageDebug;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to save %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
