.class Lcom/google/glass/voice/GlassRecognitionService$5;
.super Ljava/lang/Object;
.source "GlassRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/GlassRecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/GlassRecognitionService;

.field final synthetic val$callback:Landroid/speech/RecognitionService$Callback;

.field final synthetic val$recognizerIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/GlassRecognitionService;Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/GlassRecognitionService;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognitionService$5;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    iput-object p2, p0, Lcom/google/glass/voice/GlassRecognitionService$5;->val$recognizerIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/glass/voice/GlassRecognitionService$5;->val$callback:Landroid/speech/RecognitionService$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$5;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService$5;->val$recognizerIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService$5;->val$callback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/GlassRecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    .line 237
    return-void
.end method
