.class Lcom/google/glass/voice/GlassRecognitionService$2;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "GlassRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/GlassRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/GlassRecognitionService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/GlassRecognitionService;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/GlassRecognitionService;
    .param p2, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognitionService$2;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$2;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v0}, Lcom/google/glass/voice/GlassRecognitionService;->access$200(Lcom/google/glass/voice/GlassRecognitionService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$2;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v0}, Lcom/google/glass/voice/GlassRecognitionService;->access$200(Lcom/google/glass/voice/GlassRecognitionService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "VoiceService connected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$2;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {p2}, Lcom/google/glass/voice/IVoiceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceService;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    .line 101
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService$2;->this$0:Lcom/google/glass/voice/GlassRecognitionService;

    invoke-static {v0}, Lcom/google/glass/voice/GlassRecognitionService;->access$200(Lcom/google/glass/voice/GlassRecognitionService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "VoiceService disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-void
.end method
