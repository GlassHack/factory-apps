.class Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;
.super Landroid/os/Handler;
.source "WebAnswerViewJavascriptEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private logInitializationComplete()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "time_from_eos"

    .line 128
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$000(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 126
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$100(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "time"

    .line 133
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$100(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$200(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT_JS_BRIDGE_INITIALIZED:Lcom/google/glass/userevent/UserEventAction;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    sget-object v12, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    invoke-static {v11, v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$402(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    .line 144
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->removeMessages(I)V

    .line 145
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "Initialized JS bridge."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    const-string v12, "window.glass_onGlassJsBridgeInitialized()"

    invoke-virtual {v11, v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->runJavascript(Ljava/lang/String;)V

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->logInitializationComplete()V

    goto :goto_0

    .line 150
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v11

    sget-object v12, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    if-eq v11, v12, :cond_1

    .line 151
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x28

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Ignoring menu options response in state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 155
    .local v6, "params":Landroid/os/Bundle;
    const-string v11, "CARD_INDEX_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "cardIndex":I
    const-string v11, "REVISION_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 157
    .local v7, "responseRevision":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$600(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/search/results/WebAnswerView;->getSelectedCardIndex()I

    move-result v11

    if-eq v1, v11, :cond_2

    .line 158
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 159
    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$600(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/glass/search/results/WebAnswerView;->getSelectedCardIndex()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v14, 0x57

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Ignoring menu options response since we\'ve moved from card #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    .line 158
    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 162
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$700(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v11

    if-lt v7, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 163
    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v11

    if-gt v7, v11, :cond_4

    .line 164
    :cond_3
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "Ignoring obsolete postOptions response (for r%s from r%s)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 165
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v15}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v15

    invoke-static {v15}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$700(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 164
    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 169
    :cond_4
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->removeMessages(I)V

    .line 170
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->removeMessages(I)V

    .line 171
    const-string v11, "SPECS_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "serializedResponse":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$902(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 174
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$900(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 180
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/glass/sound/SoundManager;

    sget-object v12, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v11, v12}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 184
    :catch_0
    move-exception v5

    .line 185
    .local v5, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "Client sent invalid JSON as menu spec."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$902(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 188
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/glass/sound/SoundManager;

    sget-object v12, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v11, v12}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->disable()V

    goto/16 :goto_0

    .line 192
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$1002(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;I)I

    .line 193
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$802(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;I)I

    .line 194
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1100(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)I

    move-result v2

    .line 195
    .local v2, "defaultActionIndex":I
    if-ltz v2, :cond_6

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 198
    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$800(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)I

    move-result v12

    .line 197
    invoke-virtual {v11, v1, v2, v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->invokeMenuOption(III)V

    .line 200
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/glass/sound/SoundManager;

    sget-object v12, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v11, v12}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto/16 :goto_0

    .line 205
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$1200(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$1200(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/glass/search/results/WebAnswerCard$MenuCallback;->showMenu()V

    goto/16 :goto_0

    .line 210
    .end local v1    # "cardIndex":I
    .end local v2    # "defaultActionIndex":I
    .end local v6    # "params":Landroid/os/Bundle;
    .end local v7    # "responseRevision":I
    .end local v9    # "serializedResponse":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v11

    sget-object v12, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    if-eq v11, v12, :cond_7

    .line 211
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x27

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Ignoring menu options timeout in state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 214
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 219
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->removeMessages(I)V

    goto/16 :goto_0

    .line 223
    :cond_8
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "The Javascript at %s failed to respond to a menu options request."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 224
    invoke-static {v15}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    move-result-object v15

    invoke-static {v15}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->access$1500(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 223
    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->disable()V

    .line 227
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/glass/sound/SoundManager;

    sget-object v12, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v11, v12}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto/16 :goto_0

    .line 230
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v11

    sget-object v12, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    if-eq v11, v12, :cond_9

    .line 231
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x2a

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Ignoring menu selection response in state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 234
    :cond_9
    const/4 v11, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->removeMessages(I)V

    .line 235
    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->removeMessages(I)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 237
    .local v8, "selectionParams":Landroid/os/Bundle;
    const-string v11, "SPECS_KEY"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 238
    .local v10, "serializedSpec":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 242
    const/4 v3, 0x0

    .line 244
    .local v3, "defaultActionSpec":Lorg/json/JSONObject;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "defaultActionSpec":Lorg/json/JSONObject;
    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    .restart local v3    # "defaultActionSpec":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 252
    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1600(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->getDefaultBehaviorForMenuAction(Lorg/json/JSONObject;)Ljava/lang/Runnable;

    move-result-object v4

    .line 253
    .local v4, "defaultBehavior":Ljava/lang/Runnable;
    if-eqz v4, :cond_0

    .line 254
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 245
    .end local v3    # "defaultActionSpec":Lorg/json/JSONObject;
    .end local v4    # "defaultBehavior":Ljava/lang/Runnable;
    :catch_1
    move-exception v5

    .line 247
    .restart local v5    # "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "Client JS requested a default action for invalid params."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->disable()V

    goto/16 :goto_0

    .line 258
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v8    # "selectionParams":Landroid/os/Bundle;
    .end local v10    # "serializedSpec":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v11

    sget-object v12, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;->READY:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    if-eq v11, v12, :cond_a

    .line 259
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;->access$400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$GlassJavascriptBridge;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$InitializationState;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x29

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Ignoring menu selection timeout in state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 262
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-static {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1300(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 265
    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->removeMessages(I)V

    goto/16 :goto_0

    .line 268
    :cond_b
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "The Javascript at %s failed to respond to an option selection."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    .line 269
    invoke-static {v15}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->access$1400(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;)Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    move-result-object v15

    invoke-static {v15}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->access$1500(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 268
    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$1;->this$0:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;

    invoke-virtual {v11}, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment;->disable()V

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
