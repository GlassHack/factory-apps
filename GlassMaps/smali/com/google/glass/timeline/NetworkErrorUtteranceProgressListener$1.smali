.class Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;
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
    .line 30
    iput-object p1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$000(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Z

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v1}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$100(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Speech synthesis failed [connected=%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$200(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v1}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$400(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 37
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v0}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$300(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    goto :goto_0
.end method
