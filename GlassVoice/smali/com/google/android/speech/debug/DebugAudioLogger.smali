.class public Lcom/google/android/speech/debug/DebugAudioLogger;
.super Ljava/lang/Object;
.source "DebugAudioLogger.java"


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_OUTPUT_DIR:Ljava/lang/String; = "debug"

.field private static final GRAMMAR:I = 0x2

.field private static final HOTWORD:I = 0x0

.field private static final LOGS_ZIP_FILE_NAME:Ljava/lang/String; = "logs.zip"

.field private static final TAG:Ljava/lang/String; = "DebugAudioLogger"

.field private static final VOICESEARCH:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllLoggedData(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    const-string v7, "debug"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 240
    .local v4, "filesDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 241
    .local v3, "files":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 242
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 241
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 247
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "logs.zip"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 249
    return-void
.end method

.method public static dumpGrammarFile(Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;)V
    .locals 9
    .param p0, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/google/android/speech/SpeechSettings;
    .param p3, "grammarFile"    # Ljava/lang/String;
    .param p4, "grammarType"    # Lcom/google/android/speech/embedded/Greco3Grammar;

    .prologue
    .line 136
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 144
    .local v3, "bytes":[B
    const/4 v0, 0x2

    const-string v1, "debug"

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/speech/debug/DebugAudioLogger;->dumpLog(ILjava/lang/String;Ljava/util/concurrent/ExecutorService;[BILandroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3Grammar;)V

    .line 145
    return-void

    .line 141
    .end local v3    # "bytes":[B
    :catch_0
    move-exception v8

    .line 142
    .local v8, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static dumpHotwordRecording(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/audio/AudioStore$AudioRecording;)V
    .locals 8
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/google/android/speech/SpeechSettings;
    .param p3, "recording"    # Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    .prologue
    .line 115
    if-nez p3, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    const-string v1, "debug"

    invoke-virtual {p3}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getAudio()[B

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getSampleRate()I

    move-result v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/speech/debug/DebugAudioLogger;->dumpLog(ILjava/lang/String;Ljava/util/concurrent/ExecutorService;[BILandroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3Grammar;)V

    goto :goto_0
.end method

.method private static dumpLog(ILjava/lang/String;Ljava/util/concurrent/ExecutorService;[BILandroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3Grammar;)V
    .locals 8
    .param p0, "logType"    # I
    .param p1, "debugOutputDir"    # Ljava/lang/String;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "logBytes"    # [B
    .param p4, "audioSampleRate"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "settings"    # Lcom/google/android/speech/SpeechSettings;
    .param p7, "grammarType"    # Lcom/google/android/speech/embedded/Greco3Grammar;

    .prologue
    .line 165
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    array-length v4, p3

    if-nez v4, :cond_0

    .line 212
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p5, p1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 183
    .local v1, "outputDir":Ljava/io/File;
    invoke-static {p0}, Lcom/google/android/speech/debug/DebugAudioLogger;->logTypeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "strDebugLogType":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "preffix":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pcm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "absolutePath":Ljava/lang/String;
    new-instance v4, Lcom/google/android/speech/debug/DebugAudioLogger$1;

    invoke-direct {v4, v3, v0, p3}, Lcom/google/android/speech/debug/DebugAudioLogger$1;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {p2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v2    # "preffix":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 184
    goto :goto_1
.end method

.method public static dumpVoiceSearchRecording(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/audio/AudioStore$AudioRecording;)V
    .locals 8
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/google/android/speech/SpeechSettings;
    .param p3, "recording"    # Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    .prologue
    .line 93
    if-nez p3, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    const-string v1, "debug"

    invoke-virtual {p3}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getAudio()[B

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getSampleRate()I

    move-result v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/speech/debug/DebugAudioLogger;->dumpLog(ILjava/lang/String;Ljava/util/concurrent/ExecutorService;[BILandroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3Grammar;)V

    goto :goto_0
.end method

.method private static logTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "logType"    # I

    .prologue
    .line 67
    packed-switch p0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    const-string v0, "hotword"

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "mic"

    goto :goto_0

    .line 73
    :pswitch_2
    const-string v0, "grammar"

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static sendLoggedAudio(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v4, "debug"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "filesDir":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 217
    .local v2, "outputDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "logs.zip"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    .local v3, "outputFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/google/android/speech/debug/DebugAudioLogger;->writeZipFile(Landroid/content/Context;Ljava/io/File;[Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v4, "android.intent.extra.SUBJECT"

    const-string v5, "Debug logged audio + grammar"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v4, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    const-string v4, "Don\'t forget to turn off debug logging once your email has been sent."

    invoke-static {p0, v4}, Lcom/google/android/speech/debug/DebugAudioLogger;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 293
    const/16 v0, 0xfa0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    return-void
.end method

.method private static writeZipFile(Landroid/content/Context;Ljava/io/File;[Ljava/io/File;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zipFileName"    # Ljava/io/File;
    .param p2, "files"    # [Ljava/io/File;

    .prologue
    .line 256
    if-eqz p2, :cond_0

    array-length v11, p2

    if-nez v11, :cond_1

    .line 257
    :cond_0
    const-string v11, "No logged audio or grammar files"

    invoke-static {p0, v11}, Lcom/google/android/speech/debug/DebugAudioLogger;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    const/4 v11, 0x0

    .line 288
    :goto_0
    return v11

    .line 261
    :cond_1
    const/16 v11, 0x1000

    new-array v1, v11, [B

    .line 262
    .local v1, "buffer":[B
    const/4 v9, 0x0

    .line 263
    .local v9, "out":Ljava/util/zip/ZipOutputStream;
    const/4 v4, 0x0

    .line 265
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .local v10, "out":Ljava/util/zip/ZipOutputStream;
    move-object v0, p2

    .local v0, "arr$":[Ljava/io/File;
    :try_start_1
    array-length v8, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v8, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move-object v5, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_1
    if-ge v3, v8, :cond_3

    :try_start_2
    aget-object v2, v0, v3

    .line 267
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 269
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 272
    :goto_2
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    if-lez v7, :cond_2

    .line 273
    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 282
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v7    # "len":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 283
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .local v6, "ioe":Ljava/io/IOException;
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_3
    :try_start_4
    const-string v11, "Failure creating Zip file"

    invoke-static {p0, v11}, Lcom/google/android/speech/debug/DebugAudioLogger;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    const/4 v11, 0x0

    .line 287
    invoke-static {v9}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 276
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v7    # "len":I
    .restart local v8    # "len$":I
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 277
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 266
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 280
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "len":I
    :cond_3
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 281
    const/4 v11, 0x1

    .line 287
    invoke-static {v10}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v5}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 287
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v8    # "len$":I
    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v11

    :goto_4
    invoke-static {v9}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    .line 287
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "i$":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "len$":I
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_4

    .line 282
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v8    # "len$":I
    :catch_1
    move-exception v6

    goto :goto_3

    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v9    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "len$":I
    .restart local v10    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_3
.end method
