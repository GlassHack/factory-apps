.class public Lcom/android/providers/downloads/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/Helpers$Lexer;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static sRandom:Ljava/util/Random;

.field private static final sUniqueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    .line 43
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/Helpers;->sUniqueLock:Ljava/lang/Object;

    return-void
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "destination"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "lastDotIndex"    # I

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "extension":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 276
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "typeFromExt":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_4

    .line 281
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 282
    const-string v2, "DownloadManager"

    const-string v3, "substituting extension from type"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v1    # "typeFromExt":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 292
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_2

    .line 293
    const-string v2, "DownloadManager"

    const-string v3, "keeping extension"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_3
    return-object v0

    .line 285
    .restart local v1    # "typeFromExt":Ljava/lang/String;
    :cond_4
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 286
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find extension for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "useDefaults"    # Z

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "extension":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 235
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_4

    .line 237
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "DownloadManager"

    const-string v2, "adding extension from type"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 248
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_2

    .line 251
    const-string v1, "DownloadManager"

    const-string v2, "adding default html extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    const-string v0, ".html"

    .line 267
    :cond_3
    :goto_1
    return-object v0

    .line 242
    :cond_4
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find extension for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_5
    if-eqz p1, :cond_3

    .line 255
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_6

    .line 256
    const-string v1, "DownloadManager"

    const-string v2, "adding default text extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_6
    const-string v0, ".txt"

    goto :goto_1

    .line 260
    :cond_7
    if-eqz p1, :cond_3

    .line 261
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_8

    .line 262
    const-string v1, "DownloadManager"

    const-string v2, "adding default binary extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_8
    const-string v0, ".bin"

    goto :goto_1
.end method

.method private static chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "contentDisposition"    # Ljava/lang/String;
    .param p3, "contentLocation"    # Ljava/lang/String;
    .param p4, "destination"    # I

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0x2f

    .line 155
    const/4 v2, 0x0

    .line 158
    .local v2, "filename":Ljava/lang/String;
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_0

    .line 160
    const-string v4, "DownloadManager"

    const-string v5, "getting filename from hint"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 163
    .local v3, "index":I
    if-lez v3, :cond_a

    .line 164
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    .end local v3    # "index":I
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    .line 172
    invoke-static {p2}, Lcom/android/providers/downloads/Helpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_3

    .line 174
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_2

    .line 175
    const-string v4, "DownloadManager"

    const-string v5, "getting filename from content-disposition"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 178
    .restart local v3    # "index":I
    if-lez v3, :cond_3

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .end local v3    # "index":I
    :cond_3
    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    .line 186
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "decodedContentLocation":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    .line 190
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_4

    .line 191
    const-string v4, "DownloadManager"

    const-string v5, "getting filename from content-location"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 194
    .restart local v3    # "index":I
    if-lez v3, :cond_b

    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    .end local v0    # "decodedContentLocation":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_5
    :goto_1
    if-nez v2, :cond_7

    .line 204
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "decodedUrl":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_7

    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 208
    .restart local v3    # "index":I
    if-lez v3, :cond_7

    .line 209
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_6

    .line 210
    const-string v4, "DownloadManager"

    const-string v5, "getting filename from uri"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .end local v1    # "decodedUrl":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_7
    if-nez v2, :cond_9

    .line 219
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_8

    .line 220
    const-string v4, "DownloadManager"

    const-string v5, "using default filename"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_8
    const-string v2, "downloadfile"

    .line 227
    :cond_9
    invoke-static {v2}, Lcom/android/providers/downloads/Helpers;->replaceInvalidVfatCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    return-object v2

    .line 166
    .restart local v3    # "index":I
    :cond_a
    move-object v2, p1

    goto/16 :goto_0

    .line 197
    .restart local v0    # "decodedContentLocation":Ljava/lang/String;
    :cond_b
    move-object v2, v0

    goto :goto_1
.end method

.method private static chooseUniqueFilenameLocked(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "destination"    # I
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "recoveryDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "fullFilename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1

    const/4 v5, 0x5

    if-eq p0, v5, :cond_1

    const/4 v5, 0x2

    if-eq p0, v5, :cond_1

    const/4 v5, 0x3

    if-eq p0, v5, :cond_1

    :cond_0
    move-object v1, v0

    .line 331
    .end local v0    # "fullFilename":Ljava/lang/String;
    .local v1, "fullFilename":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 311
    .end local v1    # "fullFilename":Ljava/lang/String;
    .restart local v0    # "fullFilename":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 326
    const/4 v4, 0x1

    .line 327
    .local v4, "sequence":I
    const/4 v3, 0x1

    .local v3, "magnitude":I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v3, v5, :cond_5

    .line 328
    const/4 v2, 0x0

    .local v2, "iteration":I
    :goto_2
    const/16 v5, 0x9

    if-ge v2, v5, :cond_4

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v1, v0

    .line 331
    .end local v0    # "fullFilename":Ljava/lang/String;
    .restart local v1    # "fullFilename":Ljava/lang/String;
    goto :goto_0

    .line 333
    .end local v1    # "fullFilename":Ljava/lang/String;
    .restart local v0    # "fullFilename":Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_3

    .line 334
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file with sequence number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    sget-object v5, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 327
    :cond_4
    mul-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 339
    .end local v2    # "iteration":I
    :cond_5
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1ec

    const-string v7, "failed to generate an unused filename on internal download storage"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method static generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "contentLocation"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "destination"    # I
    .param p7, "contentLength"    # J
    .param p9, "storageManager"    # Lcom/android/providers/downloads/StorageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 82
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-gez v2, :cond_0

    .line 83
    const-wide/16 p7, 0x0

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "base":Ljava/io/File;
    const/4 v2, 0x4

    if-ne p6, v2, :cond_2

    .line 88
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "path":Ljava/lang/String;
    :goto_0
    invoke-virtual {p9, p6, v1, p7, p8}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    .line 96
    invoke-static {p5}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-static {v1}, Lcom/android/providers/downloads/DownloadDrmHelper;->modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_1
    invoke-static {v1, p5, p6, v0}, Lcom/android/providers/downloads/Helpers;->getFullPath(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 100
    return-object v1

    .line 90
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p9, p5, p6, p7, p8}, Lcom/android/providers/downloads/StorageManager;->locateDestinationDirectory(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 92
    invoke-static {p1, p2, p3, p4, p6}, Lcom/android/providers/downloads/Helpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0
.end method

.method static getFullPath(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "destination"    # I
    .param p3, "base"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "extension":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 107
    .local v0, "dotIndex":I
    if-ltz v0, :cond_0

    const/16 v8, 0x2f

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-ge v0, v8, :cond_3

    :cond_0
    move v3, v7

    .line 108
    .local v3, "missingExtension":Z
    :goto_0
    const/4 v8, 0x4

    if-ne p2, v8, :cond_5

    .line 110
    if-eqz v3, :cond_4

    .line 111
    const-string v2, ""

    .line 127
    :goto_1
    const-string v6, "recovery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 129
    .local v5, "recoveryDir":Z
    if-eqz p3, :cond_1

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    :cond_1
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_2

    .line 134
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    sget-object v7, Lcom/android/providers/downloads/Helpers;->sUniqueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 138
    :try_start_0
    invoke-static {p2, p0, v2, v5}, Lcom/android/providers/downloads/Helpers;->chooseUniqueFilenameLocked(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 144
    .local v4, "path":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .end local v3    # "missingExtension":Z
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "recoveryDir":Z
    :cond_3
    move v3, v6

    .line 107
    goto :goto_0

    .line 113
    .restart local v3    # "missingExtension":Z
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 119
    :cond_5
    if-eqz v3, :cond_6

    .line 120
    invoke-static {p1, v7}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 122
    :cond_6
    invoke-static {p1, p2, p0, v0}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 145
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "recoveryDir":Z
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/android/providers/downloads/StopRequestException;

    const/16 v8, 0x1ec

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to create target file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9, v1}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6
.end method

.method static isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "downloadsDataDir"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 349
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 350
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v5, "whitelist":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 361
    .local v4, "test":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 366
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "test":Ljava/lang/String;
    .end local v5    # "whitelist":[Ljava/lang/String;
    :goto_1
    return v6

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to resolve canonical path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 357
    goto :goto_1

    .line 360
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "test":Ljava/lang/String;
    .restart local v5    # "whitelist":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "test":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 366
    goto :goto_1
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v1

    .line 66
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .locals 2
    .param p0, "lexer"    # Lcom/android/providers/downloads/Helpers$Lexer;

    .prologue
    .line 398
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 400
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, unmatched parenthese"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 409
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 414
    return-void

    .line 407
    :cond_1
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V

    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0
.end method

.method private static parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .locals 2
    .param p0, "lexer"    # Lcom/android/providers/downloads/Helpers$Lexer;

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 426
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 427
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 428
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected quoted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 442
    :goto_0
    return-void

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 437
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 438
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0

    .line 446
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error after column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static replaceInvalidVfatCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 636
    const/4 v12, 0x0

    .line 637
    .local v12, "START_CTRLCODE":C
    const/16 v6, 0x1f

    .line 638
    .local v6, "END_CTRLCODE":C
    const/16 v10, 0x22

    .line 639
    .local v10, "QUOTEDBL":C
    const/16 v1, 0x2a

    .line 640
    .local v1, "ASTERISK":C
    const/16 v11, 0x2f

    .line 641
    .local v11, "SLASH":C
    const/16 v4, 0x3a

    .line 642
    .local v4, "COLON":C
    const/16 v8, 0x3c

    .line 643
    .local v8, "LESS":C
    const/16 v7, 0x3e

    .line 644
    .local v7, "GREATER":C
    const/16 v9, 0x3f

    .line 645
    .local v9, "QUESTION":C
    const/16 v2, 0x5c

    .line 646
    .local v2, "BACKSLASH":C
    const/16 v3, 0x7c

    .line 647
    .local v3, "BAR":C
    const/16 v5, 0x7f

    .line 648
    .local v5, "DEL":C
    const/16 v13, 0x5f

    .line 650
    .local v13, "UNDERSCORE":C
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 652
    .local v17, "sb":Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .line 653
    .local v16, "isRepetition":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 655
    .local v14, "ch":C
    if-ltz v14, :cond_0

    const/16 v18, 0x1f

    move/from16 v0, v18

    if-le v14, v0, :cond_1

    :cond_0
    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x2a

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x2f

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x3a

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x3e

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x5c

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x7c

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x7f

    move/from16 v0, v18

    if-ne v14, v0, :cond_3

    .line 667
    :cond_1
    if-nez v16, :cond_2

    .line 668
    const/16 v18, 0x5f

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 669
    const/16 v16, 0x1

    .line 653
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 672
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 673
    const/16 v16, 0x0

    goto :goto_1

    .line 676
    .end local v14    # "ch":C
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public static validateSelection(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p0, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "allowedColumns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    :cond_0
    return-void

    .line 377
    :cond_1
    new-instance v1, Lcom/android/providers/downloads/Helpers$Lexer;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/downloads/Helpers$Lexer;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 378
    .local v1, "lexer":Lcom/android/providers/downloads/Helpers$Lexer;
    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 379
    invoke-virtual {v1}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 380
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1    # "lexer":Lcom/android/providers/downloads/Helpers$Lexer;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_2

    .line 384
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid selection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] triggered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2
    throw v0
.end method
