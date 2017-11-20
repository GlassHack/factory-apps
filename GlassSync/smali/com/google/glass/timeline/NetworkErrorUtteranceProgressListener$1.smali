.class Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;
.super Ljava/lang/Object;
.source "NetworkErrorUtteranceProgressListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 33
    iget-object v2, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v2}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$000(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Z

    move-result v0

    .line 34
    .local v0, "connected":Z
    iget-object v2, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v2}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$100(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Speech synthesis failed [connected=%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v2}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$200(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/app/GlassError;

    move-result-object v1

    .line 36
    .local v1, "error":Lcom/google/glass/app/GlassError;
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v2}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$400(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 37
    return-void

    .line 35
    .end local v1    # "error":Lcom/google/glass/app/GlassError;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener$1;->this$0:Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;

    invoke-static {v2}, Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;->access$300(Lcom/google/glass/timeline/NetworkErrorUtteranceProgressListener;)Lcom/google/glass/app/GlassError;

    move-result-object v1

    goto :goto_0
.end method
