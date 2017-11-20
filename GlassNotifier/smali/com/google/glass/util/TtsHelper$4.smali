.class Lcom/google/glass/util/TtsHelper$4;
.super Ljava/lang/Object;
.source "TtsHelper.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/TtsHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "TextToSpeech initialization status: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    if-nez p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0, v5}, Lcom/google/glass/util/TtsHelper;->access$502(Lcom/google/glass/util/TtsHelper;Z)Z

    .line 235
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$600(Lcom/google/glass/util/TtsHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$600(Lcom/google/glass/util/TtsHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 237
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/util/TtsHelper;->access$602(Lcom/google/glass/util/TtsHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to initialize TextToSpeech."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/glass/util/TtsHelper$TtsHelperSynthesisRequest;->logError(I)V

    goto :goto_0
.end method
