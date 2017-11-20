.class Lcom/google/glass/util/TtsHelper$3;
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
    .line 123
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$3;->this$0:Lcom/google/glass/util/TtsHelper;

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

    .line 126
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "TextToSpeech initialization status: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    if-nez p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$3;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0, v5}, Lcom/google/glass/util/TtsHelper;->access$402(Lcom/google/glass/util/TtsHelper;Z)Z

    .line 129
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$3;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$500(Lcom/google/glass/util/TtsHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$3;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$500(Lcom/google/glass/util/TtsHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$3;->this$0:Lcom/google/glass/util/TtsHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/util/TtsHelper;->access$502(Lcom/google/glass/util/TtsHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to initialize TextToSpeech."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
