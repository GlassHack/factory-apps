.class Lcom/google/glass/voice/OpenEndedInputController$3;
.super Landroid/os/Handler;
.source "OpenEndedInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/OpenEndedInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleEventMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 364
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .line 365
    .local v0, "event":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    invoke-virtual {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v3

    .line 366
    .local v3, "type":Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;
    invoke-virtual {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 368
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "OpenEndedInputEvent: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4, v3}, Lcom/google/glass/voice/OpenEndedInputController;->access$2200(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)V

    .line 370
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4, v3}, Lcom/google/glass/voice/OpenEndedInputController;->access$2300(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)V

    .line 371
    sget-object v4, Lcom/google/glass/voice/OpenEndedInputController$18;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    invoke-virtual {v3}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 414
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$1800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputMode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 415
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$1800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/InputMode;->getEventReceivers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;

    .line 416
    .local v1, "eventReceiver":Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;
    sget-object v5, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    if-eq v3, v5, :cond_0

    .line 417
    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-interface {v1, v5, v0}, Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;->onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto :goto_1

    .line 373
    .end local v1    # "eventReceiver":Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;
    :pswitch_1
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$2400(Lcom/google/glass/voice/OpenEndedInputController;)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$2500(Lcom/google/glass/voice/OpenEndedInputController;)V

    goto :goto_0

    .line 379
    :pswitch_3
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$2600(Lcom/google/glass/voice/OpenEndedInputController;)V

    goto :goto_0

    .line 382
    :pswitch_4
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$2700(Lcom/google/glass/voice/OpenEndedInputController;)V

    goto :goto_0

    .line 385
    :pswitch_5
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$2800(Lcom/google/glass/voice/OpenEndedInputController;)V

    goto :goto_0

    .line 388
    :pswitch_6
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const-string v5, "stableText"

    invoke-virtual {v0, v5}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pendingText"

    .line 389
    invoke-virtual {v0, v6}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 388
    invoke-static {v4, v5, v6}, Lcom/google/glass/voice/OpenEndedInputController;->access$2900(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 392
    :pswitch_7
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const-string v5, "prefixText"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lowConfText"

    const-string v7, ""

    .line 393
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "postfixText"

    const-string v8, ""

    .line 394
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "confidence"

    .line 395
    invoke-virtual {v0, v8}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getFloatExtra(Ljava/lang/String;)F

    move-result v8

    .line 392
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/glass/voice/OpenEndedInputController;->showFinalRecognitionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 398
    :pswitch_8
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const-string v5, "resultDoc"

    invoke-virtual {v0, v5}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/voice/OpenEndedInputController;->access$3000(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :pswitch_9
    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const-string v4, "error"

    invoke-virtual {v0, v4}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/glass/voice/network/SpeechException;

    invoke-static {v5, v4}, Lcom/google/glass/voice/OpenEndedInputController;->access$1000(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0

    .line 404
    :pswitch_a
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const-string v5, "protoBytes"

    invoke-virtual {v0, v5}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/voice/OpenEndedInputController;->access$3100(Lcom/google/glass/voice/OpenEndedInputController;[B)V

    goto/16 :goto_0

    .line 421
    :cond_1
    return-void

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 326
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1100(Lcom/google/glass/voice/OpenEndedInputController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1200(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputCorrectionController;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/voice/InputCorrectionController;->isReturningFromCorrection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 330
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1300(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/widget/SliderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    goto :goto_0

    .line 335
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1300(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/widget/SliderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    goto :goto_0

    .line 338
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/app/GlassError;

    .line 339
    .local v0, "error":Lcom/google/glass/app/GlassError;
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1400(Lcom/google/glass/voice/OpenEndedInputController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 342
    .end local v0    # "error":Lcom/google/glass/app/GlassError;
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1500(Lcom/google/glass/voice/OpenEndedInputController;)V

    goto :goto_0

    .line 345
    :pswitch_5
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Sending final result message from handler"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/voice/OpenEndedInputController;->access$1602(Lcom/google/glass/voice/OpenEndedInputController;Z)Z

    .line 348
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1700(Lcom/google/glass/voice/OpenEndedInputController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 349
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->isSearchResponseExpected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    .line 350
    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->isNavigationResponseExpected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1900(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    .line 354
    invoke-static {v2}, Lcom/google/glass/voice/OpenEndedInputController;->access$2000(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/StreamingTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/StreamingTextView;->getText()Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forFinalResult(Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v2

    .line 353
    invoke-static {v1, v2}, Lcom/google/glass/voice/OpenEndedInputController;->access$900(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto :goto_0

    .line 357
    :pswitch_6
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$3;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$2100(Lcom/google/glass/voice/OpenEndedInputController;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 358
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController$3;->handleEventMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
