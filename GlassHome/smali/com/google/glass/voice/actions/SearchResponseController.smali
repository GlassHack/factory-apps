.class public Lcom/google/glass/voice/actions/SearchResponseController;
.super Lcom/google/glass/voice/VoiceInputActionController;
.source "SearchResponseController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/actions/SearchResponseController$1;,
        Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_EXTENSION:Ljava/lang/String; = "._a"

.field private static final SAVE_ACTION_RESPONSES:Z

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final inputMode:Lcom/google/glass/voice/InputMode;

.field private isActionHandled:Z

.field private final searchEventReceiver:Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/actions/SearchResponseController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionController;-><init>()V

    .line 79
    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->createDefaultInputMode()Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->voice_label_google:I

    .line 81
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setSelectedCommand(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->voice_search_speak_now:I

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setPrompt(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setSearchResponseExpected(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setLoggingType(I)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController;->NO_OP_SANITIZER:Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setResultSanitizer(Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputMode:Lcom/google/glass/voice/InputMode;

    .line 87
    new-instance v0, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;-><init>(Lcom/google/glass/voice/actions/SearchResponseController;Lcom/google/glass/voice/actions/SearchResponseController$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController;->searchEventReceiver:Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;

    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputMode:Lcom/google/glass/voice/InputMode;

    iget-object v1, p0, Lcom/google/glass/voice/actions/SearchResponseController;->searchEventReceiver:Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/actions/SearchResponseController;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/actions/SearchResponseController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/voice/actions/SearchResponseController;->getRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/actions/SearchResponseController;)Lcom/google/glass/voice/OpenEndedInputController;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/actions/SearchResponseController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/actions/SearchResponseController;)Lcom/google/glass/voice/OpenEndedInputController;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/actions/SearchResponseController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/voice/actions/SearchResponseController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private static actionFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "recognizedText"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 168
    const-string v0, "._a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
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

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 169
    :cond_1
    new-instance p0, Ljava/lang/String;

    .end local p0    # "recognizedText":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRecognitionResult()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getRawRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static getResponseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 175
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

    .line 176
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 179
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private static saveActionResponseProto([BLjava/lang/String;)V
    .locals 8
    .param p0, "response"    # [B
    .param p1, "recognizedText"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/google/glass/voice/actions/SearchResponseController;->actionFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/voice/actions/SearchResponseController;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 158
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 160
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/actions/SearchResponseController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to save %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getInputModes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/voice/InputMode;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputMode:Lcom/google/glass/voice/InputMode;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onActionResponse([B)V
    .locals 8
    .param p1, "response"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 134
    sget-object v2, Lcom/google/glass/voice/actions/SearchResponseController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "reponse size: %s"

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :try_start_0
    invoke-static {p1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Peanut;

    move-result-object v1

    .line 142
    .local v1, "peanut":Lcom/google/majel/proto/PeanutProtos$Peanut;
    sget-object v2, Lcom/google/glass/voice/actions/SearchResponseController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Peanut: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/google/majel/proto/PeanutProtos$Peanut;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v2, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v2}, Lcom/google/glass/voice/OpenEndedInputController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/glass/voice/actions/ActionHandlers;->handleAction(Landroid/content/Context;Lcom/google/majel/proto/PeanutProtos$Peanut;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Lcom/google/glass/voice/actions/SearchResponseController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Action handled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/voice/actions/SearchResponseController;->isActionHandled:Z

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/voice/actions/SearchResponseController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "peanut":Lcom/google/majel/proto/PeanutProtos$Peanut;
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/voice/actions/SearchResponseController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "unable to parse action peanut"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 14
    .param p1, "htmlResponse"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v11, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v11}, Lcom/google/glass/voice/OpenEndedInputController;->getCorrectionController()Lcom/google/glass/voice/InputCorrectionController;

    move-result-object v11

    invoke-interface {v11, p1}, Lcom/google/glass/voice/InputCorrectionController;->shouldShowSearchResultsNow(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/google/glass/voice/actions/SearchResponseController;->isActionHandled:Z

    if-eqz v11, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 103
    .local v7, "resultsReceivedTime":J
    invoke-direct {p0}, Lcom/google/glass/voice/actions/SearchResponseController;->getRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v11

    if-nez v11, :cond_2

    const-string v6, ""

    .line 104
    .local v6, "recognitionResult":Ljava/lang/String;
    :goto_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "startTime"

    iget-object v12, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 106
    invoke-virtual {v12}, Lcom/google/glass/voice/OpenEndedInputController;->getStartTime()J

    move-result-wide v12

    .line 105
    invoke-virtual {v5, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 107
    .local v9, "startTime":J
    const-string v11, "id"

    iget-object v12, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v12}, Lcom/google/glass/voice/OpenEndedInputController;->getId()J

    move-result-wide v12

    invoke-virtual {v5, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 108
    .local v3, "id":J
    const-string v11, "startTime"

    iget-object v12, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 109
    invoke-virtual {v12}, Lcom/google/glass/voice/OpenEndedInputController;->getEndOfSpeechTime()J

    move-result-wide v12

    .line 108
    invoke-virtual {v5, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 112
    .local v1, "endOfSpeechTime":J
    const/4 v11, 0x1

    invoke-static {p1, v11}, Lcom/google/glass/voice/VoiceSearchResultsHelper;->newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "answer":Landroid/content/Intent;
    const/high16 v11, 0x10000000

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-string v11, "recognitionResult"

    invoke-virtual {v0, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v11, "startTime"

    invoke-virtual {v0, v11, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    const-string v11, "id"

    invoke-virtual {v0, v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 117
    const-string v11, "endofSpeech"

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    const-string v11, "resultsReceivedTime"

    invoke-virtual {v0, v11, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    const-string v11, "trigger_method"

    iget-object v12, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 120
    invoke-virtual {v12}, Lcom/google/glass/voice/OpenEndedInputController;->getTriggerMethod()I

    move-result v12

    .line 119
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v11, "source"

    const-string v12, "searchActivity"

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v11, p0, Lcom/google/glass/voice/actions/SearchResponseController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v11}, Lcom/google/glass/voice/OpenEndedInputController;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/glass/voice/actions/SearchResponseController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v11

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v11, v12}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 103
    .end local v0    # "answer":Landroid/content/Intent;
    .end local v1    # "endOfSpeechTime":J
    .end local v3    # "id":J
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "recognitionResult":Ljava/lang/String;
    .end local v9    # "startTime":J
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/actions/SearchResponseController;->getRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method protected onPrepareAction()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onPrepareAction()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/actions/SearchResponseController;->isActionHandled:Z

    .line 189
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 190
    return-void
.end method
