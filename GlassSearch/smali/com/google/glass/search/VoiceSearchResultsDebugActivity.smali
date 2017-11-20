.class public Lcom/google/glass/search/VoiceSearchResultsDebugActivity;
.super Landroid/app/Activity;
.source "VoiceSearchResultsDebugActivity.java"


# static fields
.field private static final ACTION_EXTENSION:Ljava/lang/String; = "._a"

.field private static final FILE_TO_LOAD:Ljava/lang/String; = "file_to_load"

.field private static final HTML_EXTENSION:Ljava/lang/String; = "._h"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static actionFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "recognizedText"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 73
    const-string v0, "._a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "._a"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_0
    :goto_0
    return-object p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/String;

    .end local p0    # "recognizedText":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getResponseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 118
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

    const-string v3, "/vs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 122
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private static htmlFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "recognizedText"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 65
    const-string v0, "._h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "._h"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_0
    :goto_0
    return-object p0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/String;

    .end local p0    # "recognizedText":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadHtmlResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 108
    .local v1, "file":Ljava/io/File;
    const-string v2, ""

    .line 110
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string v3, "\n"

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v4}, Lcom/google/common/io/Files;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 114
    :goto_0
    return-object v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unable to load %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static saveActionResponseProto([BLjava/lang/String;)V
    .locals 8
    .param p0, "response"    # [B
    .param p1, "recognizedText"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->actionFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 97
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to save %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static saveHtmlResponseProto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "recognizedText"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->htmlFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 84
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 86
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to save %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onResume()V
    .locals 7

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "file_to_load"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "fileToLoad":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->loadHtmlResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can\'t find the file /sdcard/vs/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/glass/voice/VoiceSearchResultsHelper;->newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "answer":Landroid/content/Intent;
    const-string v3, "recognitionResult"

    const-string v4, "_"

    const-string v5, " "

    .line 55
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "._h"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v3, "source"

    const-string v4, "debugActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/glass/search/VoiceSearchResultsDebugActivity;->finish()V

    .line 61
    return-void
.end method
