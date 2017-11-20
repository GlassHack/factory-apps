.class Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;
.super Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/RecognizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalGrecoListener"
.end annotation


# instance fields
.field private combinedRecognitionResult:Ljava/lang/String;

.field private gwsHeader:Ljava/lang/StringBuilder;

.field private pinholePage:Lcom/google/glass/voice/network/PinholePage;

.field private recognitionCompleteReceived:Z

.field private final recognizedText:Lcom/google/android/speech/utils/RecognizedText;

.field volatile sendingThroughGws:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;

.field private final voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 1
    .param p2, "voiceInputCallback"    # Lcom/google/glass/voice/network/VoiceInputCallback;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;-><init>()V

    .line 594
    new-instance v0, Lcom/google/android/speech/utils/RecognizedText;

    invoke-direct {v0}, Lcom/google/android/speech/utils/RecognizedText;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    .line 618
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    .line 619
    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->handleActionResults(Ljava/lang/String;)V

    return-void
.end method

.method private addGwsHeader(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "fragment"    # Ljava/lang/String;
    .param p2, "complete"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    if-nez v8, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    if-eqz p2, :cond_0

    .line 991
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 992
    .local v3, "headers":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 993
    .local v5, "status":Lorg/apache/http/StatusLine;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v0, "cookieList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, v3

    if-ge v4, v8, :cond_4

    .line 995
    aget-object v2, v3, v4

    .line 996
    .local v2, "headerString":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 998
    new-instance v8, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v8}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {v2, v8}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 994
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 999
    :cond_3
    const-string v8, "Set-Cookie:"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1000
    const/16 v8, 0xb

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1003
    .end local v2    # "headerString":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_5

    .line 1005
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$2100(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v6

    new-instance v7, Lcom/google/glass/voice/network/SearchQueryBuilder;

    invoke-direct {v7}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/google/glass/voice/network/Cookies;->setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1007
    :cond_5
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "status is not 200 OK: %s"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v6

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    if-nez v8, :cond_0

    .line 1013
    :cond_6
    const-string v8, "c"

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, "eventTuple":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v8

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v8, v9, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1016
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_7

    .line 1017
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0x191

    if-eq v9, v10, :cond_8

    :cond_7
    move v6, v7

    .line 1016
    :cond_8
    invoke-direct {p0, v8, v6}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private attemptRecovery(Lcom/google/android/shared/speech/exception/RecognizeException;Lcom/google/glass/voice/network/SpeechException$Type;)Z
    .locals 9
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;
    .param p2, "type"    # Lcom/google/glass/voice/network/SpeechException$Type;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 898
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$1200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    if-nez v4, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v2

    .line 902
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/shared/speech/exception/RecognizeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 903
    invoke-virtual {p1}, Lcom/google/android/shared/speech/exception/RecognizeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed direct gws request"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 907
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->isFullRecognitionReceived()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    if-eq p2, v4, :cond_4

    .line 908
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Received onError %s with a final result %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v2

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-interface {v4, p1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$1200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceConfig;->isSearch()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 912
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "sending gws request"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V

    :cond_3
    move v2, v3

    .line 915
    goto :goto_0

    .line 916
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->isPartialRecognitionReceived()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 917
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Received onError %s with a stable partial result: %s and unstable partial result: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 918
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 917
    invoke-interface {v4, p1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$1200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceConfig;->isSearch()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 921
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "sending gws request"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$1700(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V

    .line 924
    :cond_5
    new-instance v4, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v4}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    .line 925
    invoke-virtual {v4, v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    .line 926
    .local v0, "recognitionEvent":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    .line 927
    .local v1, "recognitionResult":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    new-array v4, v3, [Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    new-instance v5, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 928
    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1700(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v5

    aput-object v5, v4, v2

    iput-object v4, v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 929
    iput-object v1, v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 930
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    move v2, v3

    .line 931
    goto/16 :goto_0
.end method

.method private getLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 698
    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNetworkType()I
    .locals 4

    .prologue
    .line 1081
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 1082
    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$2500(Lcom/google/glass/voice/network/RecognizerController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1083
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1084
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private handleActionResults(Ljava/lang/String;)V
    .locals 5
    .param p1, "actionString"    # Ljava/lang/String;

    .prologue
    .line 965
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    const/4 v0, 0x0

    .line 970
    .local v0, "actionBytes":[B
    const/16 v2, 0x8

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 974
    :goto_1
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 977
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v2, v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->onActionResponse([B)V

    goto :goto_0

    .line 971
    :catch_0
    move-exception v1

    .line 972
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "unable to base64 decode action string"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private isFullRecognitionReceived()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPartialRecognitionReceived()Z
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logRecoveredErrorEvent(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 6
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 938
    const-string v1, "error"

    .line 939
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "detail"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 940
    invoke-static {v5, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$1900(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "network"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 941
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 938
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR_RECOVERED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method private logRecoveredFromSilentRetry()V
    .locals 8

    .prologue
    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v5}, Lcom/google/glass/voice/network/RecognizerController;->access$2000(Lcom/google/glass/voice/network/RecognizerController;)J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 947
    .local v1, "recognitionTime":J
    const-string v3, "count"

    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 948
    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/network/GlassRetryStrategy;->getRetryCountPerformed()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "network"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getNetworkType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "time_total"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 949
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 947
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v3}, Lcom/google/glass/voice/network/RecognizerController;->access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_SILENT_RETRY_RECOVERED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method private sendGwsRequest(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "canUseSignIn"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1038
    iput-boolean v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 1040
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$2400(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/DirectGwsRequest;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;-><init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/glass/voice/network/DirectGwsRequest;->sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V

    .line 1073
    const-string v1, "si"

    .line 1074
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "network"

    aput-object v5, v3, v4

    .line 1075
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1073
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method private useGwsServer()Z
    .locals 1

    .prologue
    .line 1031
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SPECIAL_GWS_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;
    .locals 4
    .param p1, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 817
    iget-object v2, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v2, :cond_0

    .line 818
    iget-object v1, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 819
    .local v1, "result":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    iget-object v2, v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 820
    iget-object v2, v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 821
    .local v0, "hypothesis":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v2

    .line 826
    .end local v0    # "hypothesis":Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1    # "result":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public onBeginningOfSpeech(J)V
    .locals 3
    .param p1, "startMs"    # J

    .prologue
    .line 629
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onBeginningOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showRecording()V

    .line 631
    return-void
.end method

.method public onDone()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 641
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onDone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V

    .line 646
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$600(Lcom/google/glass/voice/network/RecognizerController;)V

    .line 652
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 635
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onEndOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showRecognizing()V

    .line 637
    return-void
.end method

.method public onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 7
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 665
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v2, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$700(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/shared/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v1

    .line 667
    .local v1, "type":Lcom/google/glass/voice/network/SpeechException$Type;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "onError, exception type: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$600(Lcom/google/glass/voice/network/RecognizerController;)V

    .line 671
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->ESR:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/voice/network/GlassRetryStrategy;->canRetry(Lcom/google/glass/voice/network/SpeechException$Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-virtual {p1}, Lcom/google/android/shared/speech/exception/RecognizeException;->getEngine()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$900(Lcom/google/glass/voice/network/RecognizerController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "retrying"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v3}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/voice/network/GlassRetryStrategy;->onRetryStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v2}, Lcom/google/glass/voice/network/RecognizerController;->cancel()V

    .line 678
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v3}, Lcom/google/glass/voice/network/RecognizerController;->access$1200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$1300(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v5}, Lcom/google/glass/voice/network/RecognizerController;->access$1400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Landroid/content/Intent;Z)V

    .line 679
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z

    .line 692
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->attemptRecovery(Lcom/google/android/shared/speech/exception/RecognizeException;Lcom/google/glass/voice/network/SpeechException$Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Recovered from error: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->logRecoveredErrorEvent(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 688
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v2}, Lcom/google/android/speech/utils/RecognizedText;->getStableForErrorReporting()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "recognizedText":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "onError [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, p1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v3, v1, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto :goto_0
.end method

.method public onMediaDataResult([B)V
    .locals 5
    .param p1, "audio"    # [B

    .prologue
    .line 831
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onMediaDataResult (ignored) - audio length: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    return-void
.end method

.method public onNoSpeechDetected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onNoSpeechDetected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showNoSpeechDetected()V

    .line 660
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$600(Lcom/google/glass/voice/network/RecognizerController;)V

    .line 661
    return-void
.end method

.method public onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 7
    .param p1, "pinholeOutput"    # Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 838
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 840
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    if-eqz v2, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "onPinholeResult"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    iget-boolean v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-eqz v2, :cond_5

    .line 857
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->isFullRecognitionReceived()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 858
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    if-nez v2, :cond_2

    .line 859
    new-instance v2, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct {v2}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    iput-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 862
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    invoke-static {v2, p1}, Lcom/google/glass/voice/network/PinholePageUpdater;->updatePinholePage(Lcom/google/glass/voice/network/PinholePage;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 863
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "act0"

    aput-object v4, v3, v5

    invoke-virtual {v2, v5, v3}, Lcom/google/glass/voice/network/PinholePage;->assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 867
    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->handleActionResults(Ljava/lang/String;)V

    .line 870
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "act0"

    aput-object v4, v3, v5

    const-string v4, "ans0"

    aput-object v4, v3, v6

    invoke-virtual {v2, v6, v3}, Lcom/google/glass/voice/network/PinholePage;->assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "doc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 874
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Got a doc from the pinhole results."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v2, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    .line 876
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 880
    :cond_4
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderFragment()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->addGwsHeader(Ljava/lang/String;Z)V

    goto :goto_0

    .line 886
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "doc":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "No recognition result from server."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v4, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v5, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;

    invoke-direct {v5}, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0
.end method

.method public onReadyForSpeech()V
    .locals 3

    .prologue
    .line 623
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onReadyForSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showListening()V

    .line 625
    return-void
.end method

.method public onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 14
    .param p1, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 707
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v6}, Lcom/google/android/speech/utils/RecognizedText;->hasCompletedRecognition()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 708
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Result after completed recognition."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v6

    if-nez v6, :cond_7

    .line 717
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 718
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$000(Lcom/google/glass/voice/network/RecognizerController;)J

    move-result-wide v7

    invoke-virtual {v6, v12, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 723
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {p1}, Lcom/google/glass/voice/network/RecognizerController;->getPartialResultsByStability(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v12

    invoke-static {v6, v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1002(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;

    .line 724
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {p1}, Lcom/google/glass/voice/network/RecognizerController;->getPartialResultsByStability(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v11

    invoke-static {v6, v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1102(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-nez v6, :cond_2

    .line 728
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1002(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;

    .line 732
    :cond_2
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/voice/network/GlassRetryStrategy;->isRetrying()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 733
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$1600()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 734
    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "retry merging new("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 733
    invoke-static {v13, v6, v7}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v6

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/glass/voice/network/GlassRetryStrategy;->useNewResult(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v7, v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1002(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;

    .line 737
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v6

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/glass/voice/network/GlassRetryStrategy;->useNewResult(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v7, v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1102(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    :cond_3
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "onRecognitionResult"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$1600()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 743
    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x16

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "onRecognitionResult("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 742
    invoke-static {v13, v6, v7}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1702(Lcom/google/glass/voice/network/RecognizerController;Ljava/lang/String;)Ljava/lang/String;

    .line 746
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-lez v6, :cond_4

    .line 747
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$1100(Lcom/google/glass/voice/network/RecognizerController;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/google/glass/voice/network/VoiceInputCallback;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 752
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->isPartialRecognitionReceived()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 753
    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->getLastEndpointerEventProcessor()Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 754
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$1800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->getLastEndpointerEventProcessor()Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->onRecognitionResult()V

    goto/16 :goto_0

    .line 735
    :cond_5
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 736
    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/voice/network/GlassRetryStrategy;->getOriginalStablePrefix()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 737
    :cond_6
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    .line 738
    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/voice/network/GlassRetryStrategy;->getOriginalUnstablePrefix()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 756
    :cond_7
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 758
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    iget-object v8, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 762
    invoke-virtual {v6, v8}, Lcom/google/android/speech/utils/RecognizedText;->updateFinal(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 763
    .local v2, "hypotheses":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/speech/alternates/Hypothesis;>;"
    if-eqz v2, :cond_9

    .line 764
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v2, v12}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/speech/alternates/Hypothesis;

    invoke-virtual {v6}, Lcom/google/android/speech/alternates/Hypothesis;->getText()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "combinedResult":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v8, "onRecognitionResult(combined)"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$1600()Ljava/lang/String;

    move-result-object v6

    .line 770
    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1e

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "onRecognitionResult(combined="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 769
    invoke-static {v13, v6, v8}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/GlassRetryStrategy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/voice/network/GlassRetryStrategy;->isRetrying()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 773
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v8, "Silent Retry recovered"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->logRecoveredFromSilentRetry()V

    .line 781
    :goto_4
    iput-boolean v11, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    .line 782
    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/String;

    .line 784
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    .line 785
    iput-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 786
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 787
    invoke-direct {p0, v0, v11}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V

    .line 794
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 795
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v8, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v9, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;

    invoke-direct {v9}, Lcom/google/android/shared/speech/exception/NoMatchRecognizeException;-><init>()V

    invoke-static {v7, v8, v9}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0

    .end local v0    # "combinedResult":Ljava/lang/String;
    :cond_9
    move-object v0, v7

    .line 764
    goto/16 :goto_3

    .line 776
    .restart local v0    # "combinedResult":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v8, "Normal recognition results completed"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 798
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 799
    .local v5, "prefix":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .local v3, "lowConf":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .local v4, "postfix":Ljava/lang/StringBuilder;
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->CVS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/google/glass/util/Labs$Feature;->ULC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 803
    invoke-static {p1, v0, v5, v3, v4}, Lcom/google/glass/voice/InputCorrectionsUtil;->findLowestConfidenceSpan(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 807
    :cond_c
    iget-object v6, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    if-eqz v6, :cond_d

    iget-object v6, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iget-object v6, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    array-length v6, v6

    if-lez v6, :cond_d

    iget-object v6, p1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->combinedResult:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    iget-object v6, v6, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis:[Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    aget-object v6, v6, v12

    .line 809
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getConfidence()F

    move-result v1

    .line 810
    .local v1, "confidence":F
    :goto_5
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 811
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 810
    invoke-interface {v6, v7, v8, v9, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onRecognitionResult(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;F)V

    goto/16 :goto_0

    .line 809
    .end local v1    # "confidence":F
    :cond_d
    const/4 v1, 0x0

    goto :goto_5
.end method
