.class public Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;
.super Ljava/lang/Object;
.source "UserFeedbackReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;
    }
.end annotation


# static fields
.field private static final GOOGLE_ACCOUNT:Ljava/lang/Object;

.field private static final REPORT_FILE_EXTENSION:Ljava/lang/String; = ".proto.gz"

.field private static final TMP_FILE_EXTENSION:Ljava/lang/String; = ".tmp"


# instance fields
.field private final mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "com.google"

    sput-object v0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->GOOGLE_ACCOUNT:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V
    .locals 0
    .param p1, "spec"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;
    .param p1, "x1"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateReportData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    return-void
.end method

.method private collectLogcatOutput(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "logcatCmd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 293
    .local v4, "logcatProc":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 295
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 296
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v3, "log":Ljava/lang/StringBuilder;
    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "lineSeparator":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 305
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lineSeparator":Ljava/lang/String;
    .end local v3    # "log":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 306
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v7, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    if-eqz v5, :cond_0

    .line 312
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    const-string v7, ""

    :goto_3
    return-object v7

    .line 304
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "lineSeparator":Ljava/lang/String;
    .restart local v3    # "log":Ljava/lang/StringBuilder;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 310
    if-eqz v6, :cond_2

    .line 312
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_4
    move-object v5, v6

    .line 315
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 313
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 314
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 313
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lineSeparator":Ljava/lang/String;
    .end local v3    # "log":Ljava/lang/StringBuilder;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 314
    const-string v7, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :goto_5
    :try_start_6
    const-string v7, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 310
    if-eqz v5, :cond_0

    .line 312
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 313
    :catch_4
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    .line 312
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 315
    :cond_3
    :goto_7
    throw v7

    .line 313
    :catch_5
    move-exception v0

    .line 314
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 307
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 305
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private gatherLogs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "logFilter"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "-d"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .local v0, "logcatCmd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 283
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->collectLogcatOutput(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFilesDataDir()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "reports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to create directory structure for base directory provided"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_0
    return-object v0
.end method

.method private getScreenshotBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private populateBuildData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 2
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 210
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->device:Ljava/lang/String;

    .line 211
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->buildId:Ljava/lang/String;

    .line 212
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->buildType:Ljava/lang/String;

    .line 213
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->model:Ljava/lang/String;

    .line 214
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->board:Ljava/lang/String;

    .line 215
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->brand:Ljava/lang/String;

    .line 216
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->codename:Ljava/lang/String;

    .line 217
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->incremental:Ljava/lang/String;

    .line 218
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->release:Ljava/lang/String;

    .line 219
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->product:Ljava/lang/String;

    .line 221
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->sdkInt:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    iput v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->sdkInt:I

    goto :goto_0
.end method

.method private populateCommonData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 1
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 201
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getFeedbackText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;

    .line 202
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->uiLanguage:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getProductSpecificBinaryData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getProductSpecificBinaryData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->productSpecificBinaryData:Ljava/util/List;

    .line 207
    :cond_0
    return-void
.end method

.method private populatePackageData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 6
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 173
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageName:Ljava/lang/String;

    .line 175
    :try_start_0
    iget-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 176
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 177
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->processName:Ljava/lang/String;

    .line 178
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageVersion:I

    .line 179
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageVersionName:Ljava/lang/String;

    .line 180
    iget-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installerPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->processName:Ljava/lang/String;

    .line 186
    iput-boolean v5, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->isSystemApp:Z

    .line 187
    return-void

    .line 181
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private populateReportData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 0
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateRunningApps(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateBuildData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateCommonData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateTelephonyData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateSystemData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populatePackageData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateUserInitiatedFeedbackData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 103
    return-void
.end method

.method private populateRunningApps(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 6
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 231
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 233
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 234
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 235
    .local v1, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v1    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    return-void
.end method

.method private populateSystemData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 2
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->timestamp:J

    .line 191
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getLogFilter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->gatherLogs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getLogs()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getLogs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 198
    return-void
.end method

.method private populateTelephonyData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 3
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 129
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->phoneType:I

    .line 130
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->networkType:I

    .line 131
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->networkName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method private populateUserInitiatedFeedbackData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 7
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 141
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCurrentScreenshot()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCurrentScreenshot()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 144
    .local v2, "screenshot":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-direct {p0, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->getScreenshotBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshot:[B

    .line 146
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshotWidth:I

    .line 147
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshotHeight:I

    .line 150
    .end local v2    # "screenshot":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->accounts:Ljava/util/List;

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 155
    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 156
    .local v1, "availableAccounts":[Landroid/accounts/Account;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 157
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    sget-object v6, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->GOOGLE_ACCOUNT:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    iget-object v5, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->accounts:Ljava/util/List;

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "availableAccounts":[Landroid/accounts/Account;
    :catch_0
    move-exception v3

    .line 166
    :cond_2
    :goto_1
    iget-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->accounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->numGoogleAccounts:I

    .line 167
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCategoryTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->categoryTag:Ljava/lang/String;

    .line 168
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getBucket()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->bucket:Ljava/lang/String;

    .line 169
    return-void

    .line 161
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private serializeReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 2
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 122
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;

    invoke-direct {v0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 123
    .local v0, "serializer":Lcom/google/userfeedback/android/api/UserFeedbackSerializer;
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serialize()Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v1

    return-object v1
.end method

.method private startBuildingReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;)Landroid/os/AsyncTask;
    .locals 2
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;
    .param p2, "listener"    # Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/userfeedback/android/api/UserFeedbackReport;",
            "Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$1ReportBuilderTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$1ReportBuilderTask;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;Lcom/google/userfeedback/android/api/UserFeedbackReport;Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;)V

    .line 118
    .local v0, "reportBuilderTask":Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$1ReportBuilderTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$1ReportBuilderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public buildReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Landroid/os/AsyncTask;
    .locals 1
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/userfeedback/android/api/UserFeedbackReport;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->startBuildingReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public buildReportSynchronously(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 0
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->populateReportData(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 85
    return-void
.end method

.method public buildReportWithListener(Lcom/google/userfeedback/android/api/UserFeedbackReport;Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;)V
    .locals 0
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;
    .param p2, "listener"    # Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->startBuildingReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method protected getFormattedFeedbackReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Ljava/io/File;
    .locals 13
    .param p1, "report"    # Lcom/google/userfeedback/android/api/UserFeedbackReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->serializeReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 245
    .local v5, "serializedReport":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->getFilesDataDir()Ljava/io/File;

    move-result-object v0

    .line 246
    .local v0, "dataDir":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "name":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v8, ".tmp"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .local v6, "tmpFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v8, ".proto.gz"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-direct {v4, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    .local v4, "reportFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 251
    .local v3, "out":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 252
    .local v7, "zout":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v5, v7}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 253
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 254
    invoke-virtual {v6, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 255
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Failed to rename temporary file"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "zout":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v8

    .line 247
    .end local v4    # "reportFile":Ljava/io/File;
    .end local v6    # "tmpFile":Ljava/io/File;
    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .restart local v6    # "tmpFile":Ljava/io/File;
    :cond_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "reportFile":Ljava/io/File;
    .restart local v7    # "zout":Ljava/util/zip/GZIPOutputStream;
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    return-object v4
.end method
