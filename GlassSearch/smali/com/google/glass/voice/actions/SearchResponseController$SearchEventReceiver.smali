.class Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;
.super Ljava/lang/Object;
.source "SearchResponseController.java"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/actions/SearchResponseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/actions/SearchResponseController;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/actions/SearchResponseController;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;->this$0:Lcom/google/glass/voice/actions/SearchResponseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/actions/SearchResponseController;Lcom/google/glass/voice/actions/SearchResponseController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/voice/actions/SearchResponseController;
    .param p2, "x1"    # Lcom/google/glass/voice/actions/SearchResponseController$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;-><init>(Lcom/google/glass/voice/actions/SearchResponseController;)V

    return-void
.end method


# virtual methods
.method public onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 3
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/voice/actions/SearchResponseController$1;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-static {}, Lcom/google/glass/voice/actions/SearchResponseController;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "no handling for other responses, ignore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;->this$0:Lcom/google/glass/voice/actions/SearchResponseController;

    const-string v1, "resultDoc"

    invoke-virtual {p2, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/actions/SearchResponseController;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;->this$0:Lcom/google/glass/voice/actions/SearchResponseController;

    const-string v1, "protoBytes"

    invoke-virtual {p2, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/actions/SearchResponseController;->onActionResponse([B)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;->this$0:Lcom/google/glass/voice/actions/SearchResponseController;

    invoke-static {v0}, Lcom/google/glass/voice/actions/SearchResponseController;->access$100(Lcom/google/glass/voice/actions/SearchResponseController;)Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getCorrectionController()Lcom/google/glass/voice/InputCorrectionController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;->this$0:Lcom/google/glass/voice/actions/SearchResponseController;

    .line 55
    invoke-static {v1}, Lcom/google/glass/voice/actions/SearchResponseController;->access$000(Lcom/google/glass/voice/actions/SearchResponseController;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "confidence"

    .line 56
    invoke-virtual {p2, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getFloatExtra(Ljava/lang/String;)F

    move-result v2

    .line 54
    invoke-interface {v0, v1, v2}, Lcom/google/glass/voice/InputCorrectionController;->onSearchRecognitionDone(Ljava/lang/String;F)V

    goto :goto_0

    .line 59
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/voice/actions/SearchResponseController$SearchEventReceiver;->this$0:Lcom/google/glass/voice/actions/SearchResponseController;

    invoke-static {v0}, Lcom/google/glass/voice/actions/SearchResponseController;->access$200(Lcom/google/glass/voice/actions/SearchResponseController;)Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getCorrectionController()Lcom/google/glass/voice/InputCorrectionController;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/InputCorrectionController;->onSearchCorrectionStarted()V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
