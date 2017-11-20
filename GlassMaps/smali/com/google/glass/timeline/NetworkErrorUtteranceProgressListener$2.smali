.class Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$2;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$2;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    .line 63
    invoke-static {v1}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$500(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$2;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 64
    return-void
.end method
