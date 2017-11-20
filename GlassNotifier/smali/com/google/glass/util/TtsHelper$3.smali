.class Lcom/google/glass/util/TtsHelper$3;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "TtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/TtsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;

.field private final ttsLogger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/util/TtsHelper;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/glass/util/TtsHelper;
    .param p2, "x0"    # [Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$3;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "/stopTts"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper$3;->ttsLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$3;->ttsLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$3;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 197
    return-void
.end method
