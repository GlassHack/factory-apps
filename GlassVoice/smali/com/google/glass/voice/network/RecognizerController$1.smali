.class Lcom/google/glass/voice/network/RecognizerController$1;
.super Landroid/os/Handler;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController;-><init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/shared/util/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/RecognizerController;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 252
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 255
    :pswitch_0
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$000(Lcom/google/glass/voice/network/RecognizerController;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x38

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Manually timed out request after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_MANUAL_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 257
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v1, v1, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v1, v1, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    new-instance v2, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const-string v3, "Manually timed out"

    const v4, 0x10007

    invoke-direct {v2, v3, v4}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/network/QueueingGrecoListener;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/net/NetworkUtil;->pingGoogle(Landroid/content/Context;)Z

    move-result v0

    .line 266
    .local v0, "connected":Z
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Connected to google after failing? %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
