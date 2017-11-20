.class public Lcom/google/glass/voice/CompanionInputEntryManager;
.super Ljava/lang/Object;
.source "CompanionInputEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/CompanionInputEntryManager$1;,
        Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;,
        Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;,
        Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;
    }
.end annotation


# instance fields
.field private final broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

.field private final companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

.field private final inputResponseReceiver:Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;

.field private isInputScreenRequested:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private final screenOnResponseReceiver:Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/context/BroadcastReceiverRegistrar;Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;)V
    .locals 2
    .param p1, "proxy"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p2, "broadcastReceiverRegistrar"    # Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .param p3, "companionManagerCallback"    # Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    new-instance v0, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;-><init>(Lcom/google/glass/voice/CompanionInputEntryManager;Lcom/google/glass/voice/CompanionInputEntryManager$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->inputResponseReceiver:Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;

    .line 32
    new-instance v0, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;-><init>(Lcom/google/glass/voice/CompanionInputEntryManager;Lcom/google/glass/voice/CompanionInputEntryManager$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->screenOnResponseReceiver:Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->isInputScreenRequested:Z

    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 50
    iput-object p3, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    .line 51
    iput-object p2, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 52
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/CompanionInputEntryManager;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/CompanionInputEntryManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/CompanionInputEntryManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/CompanionInputEntryManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/glass/voice/CompanionInputEntryManager;->handleResponseIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/CompanionInputEntryManager;)Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/CompanionInputEntryManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    return-object v0
.end method

.method private static createOpenEndedInputRequest(ZILjava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1
    .param p0, "hasControl"    # Z
    .param p1, "control"    # I
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p0, :cond_1

    if-nez p2, :cond_1

    .line 146
    const/4 v0, 0x0

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;-><init>()V

    .line 149
    .local v0, "inputRequest":Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    if-eqz p0, :cond_2

    .line 150
    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->setControl(I)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 152
    :cond_2
    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {v0, p2}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->setCurrentInput(Ljava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    goto :goto_0
.end method

.method private endCompanionInputActivity()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->isInputScreenRequestedOnCompanion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Ending input activity on companion"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 110
    invoke-static {v1, v3, v4}, Lcom/google/glass/voice/CompanionInputEntryManager;->createOpenEndedInputRequest(ZILjava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    move-result-object v0

    .line 111
    .local v0, "inputRequest":Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->sendCompanionOpenEndedInputRequest(Lcom/google/glass/companion/Proto$OpenEndedInputRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    .end local v0    # "inputRequest":Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    :goto_0
    return v1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to end companion input activity"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 117
    goto :goto_0
.end method

.method private handleResponseIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 161
    const-string v5, "open_ended_response_bytes"

    .line 162
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 164
    .local v3, "inputResponseBytes":[B
    :try_start_0
    invoke-static {v3}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->parseFrom([B)Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    .local v2, "inputResponse":Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->hasControl()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Input response control received from companion"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->getControl()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 172
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Received input control: cancel from companion"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    invoke-interface {v5}, Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;->onCancelControlReceived()V

    .line 188
    .end local v2    # "inputResponse":Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Unable to parse OpenEndedInputResponse received"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    .end local v1    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .restart local v2    # "inputResponse":Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    :cond_1
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->getControl()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 175
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Received input control: send from companion"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    invoke-interface {v5}, Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;->onSendControlReceived()V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->hasUpdatedInput()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->getUpdatedInput()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "updatedInput":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->getDiffStartIndex()I

    move-result v0

    .line 181
    .local v0, "diffStartIndex":I
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Input response updated text received from companion: %s; start index: %d "

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v8

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 181
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    invoke-interface {v5, v4, v0}, Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;->onUpdatedInputReceived(Ljava/lang/String;I)V

    goto :goto_0

    .line 186
    .end local v0    # "diffStartIndex":I
    .end local v4    # "updatedInput":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Invalid or blank input response received from companions"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isInputScreenRequestedOnCompanion()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->isInputScreenRequested:Z

    return v0
.end method

.method private isKeyboardTextEntrySupported()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isKeyboardTextEntrySupported()Z

    move-result v0

    return v0
.end method

.method private registerCompanionResponseReceivers(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V
    .locals 1
    .param p1, "registrar"    # Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->screenOnResponseReceiver:Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->inputResponseReceiver:Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 194
    return-void
.end method

.method private sendCompanionOpenEndedInputRequest(Lcom/google/glass/companion/Proto$OpenEndedInputRequest;)Z
    .locals 7
    .param p1, "request"    # Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->isKeyboardTextEntrySupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->isCompanionConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Companion is not connected or not at the correct version; cannot send message"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 131
    :goto_0
    return v1

    .line 126
    :cond_1
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 127
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$Envelope;->setOpenEndedInputRequestG2C(Lcom/google/glass/companion/Proto$OpenEndedInputRequest;)Lcom/google/glass/companion/Proto$Envelope;

    .line 128
    iget-object v3, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v3, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v1

    .line 129
    .local v1, "isMessageSendSuccessful":Z
    iget-object v3, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Sending companion open ended input request; [success =  %b]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 130
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    .line 129
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private unregisterCompanionResponseReceivers(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V
    .locals 1
    .param p1, "registrar"    # Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->inputResponseReceiver:Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 199
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->screenOnResponseReceiver:Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/CompanionInputEntryManager$AndroidScreenOnResponseReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 200
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->isKeyboardTextEntrySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->registerCompanionResponseReceivers(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 75
    :cond_0
    return-void
.end method

.method public deactivate()Z
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->isKeyboardTextEntrySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->unregisterCompanionResponseReceivers(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 85
    invoke-direct {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->endCompanionInputActivity()Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompanionConnected()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isKeyboardModeAvailable()Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->isCompanionConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->isKeyboardTextEntrySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestInputScreen(Ljava/lang/String;)Z
    .locals 5
    .param p1, "currentText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v1, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Input screen requested on companion"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {v4, v4, p1}, Lcom/google/glass/voice/CompanionInputEntryManager;->createOpenEndedInputRequest(ZILjava/lang/String;)Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    move-result-object v0

    .line 97
    .local v0, "inputRequest":Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->sendCompanionOpenEndedInputRequest(Lcom/google/glass/companion/Proto$OpenEndedInputRequest;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/voice/CompanionInputEntryManager;->isInputScreenRequested:Z

    .line 98
    invoke-direct {p0}, Lcom/google/glass/voice/CompanionInputEntryManager;->isInputScreenRequestedOnCompanion()Z

    move-result v1

    return v1
.end method
