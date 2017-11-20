.class Lcom/google/glass/voice/VoiceService$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceService;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceService;
    .param p2, "x0"    # [Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$1;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "screenOffReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService$1;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 51
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$1;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$1;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceService;->onScreenOff()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$1;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$100(Lcom/google/glass/voice/VoiceService;)V

    goto :goto_0
.end method
