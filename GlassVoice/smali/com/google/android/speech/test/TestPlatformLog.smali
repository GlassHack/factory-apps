.class public Lcom/google/android/speech/test/TestPlatformLog;
.super Ljava/lang/Object;
.source "TestPlatformLog.java"


# static fields
.field private static final EVENT_ERROR_PREFIX:Ljava/lang/String; = "ERROR: "

.field private static final EVENT_LOGGING_AUDIO_PREFIX:Ljava/lang/String; = "LOGGING_AUDIO: "

.field private static final EVENT_PREFIX:Ljava/lang/String; = "TEST_PLATFORM: "

.field private static final EVENT_RESULTS_PREFIX:Ljava/lang/String; = "RESULTS: "

.field public static final EVENT_SPEAK_NOW:Ljava/lang/String; = "SPEAK_NOW"

.field public static final EVENT_VOICE_SEARCH_COMPLETE:Ljava/lang/String; = "VOICE_SEARCH_COMPLETE"

.field public static final EVENT_WORKING:Ljava/lang/String; = "WORKING"

.field private static final RESULT_ITEM_FORMAT:Ljava/lang/String; = "result:\"%s\","

.field private static final TAG:Ljava/lang/String; = "TestPlatformLog"

.field private static sEnableTestPlatformLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/speech/test/TestPlatformLog;->sEnableTestPlatformLogging:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lcom/google/android/speech/test/TestPlatformLog;->sEnableTestPlatformLogging:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "TestPlatformLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEST_PLATFORM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    return-void
.end method

.method public static logAudioPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOGGING_AUDIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/speech/test/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/speech/test/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static logResults(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 12
    .param p0, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    const/4 v11, 0x1

    .line 93
    sget-boolean v6, Lcom/google/android/speech/test/TestPlatformLog;->sEnableTestPlatformLogging:Z

    if-eqz v6, :cond_1

    .line 94
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v6, "RESULTS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 98
    iget-object v4, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 99
    .local v4, "result":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    if-eqz v4, :cond_1

    iget-object v6, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 100
    iget-object v0, v4, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .local v0, "arr$":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 101
    .local v1, "hypothesis":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "result:\"%s\","

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "hypothesis":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/speech/test/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 108
    .end local v0    # "arr$":[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "result":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/google/android/speech/test/TestPlatformLog;->sEnableTestPlatformLogging:Z

    .line 54
    return-void
.end method
