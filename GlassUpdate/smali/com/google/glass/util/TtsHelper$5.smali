.class Lcom/google/glass/util/TtsHelper$5;
.super Ljava/lang/Object;
.source "TtsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/TtsHelper;->speakWithTranslateServerTts(Ljava/util/Locale;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;

.field final synthetic val$locale:Ljava/util/Locale;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/TtsHelper;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$5;->this$0:Lcom/google/glass/util/TtsHelper;

    iput-object p2, p0, Lcom/google/glass/util/TtsHelper$5;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/util/TtsHelper$5;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$5;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v0}, Lcom/google/glass/util/TtsHelper;->access$800(Lcom/google/glass/util/TtsHelper;)Lcom/google/glass/voice/network/translate/NetworkTts;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$5;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$600(Lcom/google/glass/util/TtsHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/TtsHelper$5;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/util/TtsHelper$5;->val$locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/TtsHelper$5;->this$0:Lcom/google/glass/util/TtsHelper;

    .line 282
    invoke-static {v4}, Lcom/google/glass/util/TtsHelper;->access$700(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v4

    .line 281
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/voice/network/translate/NetworkTts;->requestTtsAndPlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 283
    return-void
.end method
