.class Lcom/google/glass/voice/GlassVoiceActivity$2;
.super Lcom/google/glass/voice/DelegatingVoiceListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/GlassVoiceActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/voice/VoiceListener;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/voice/GlassVoiceActivity$2;->this$0:Lcom/google/glass/voice/GlassVoiceActivity;

    invoke-direct {p0, p2}, Lcom/google/glass/voice/DelegatingVoiceListener;-><init>(Lcom/google/glass/voice/VoiceListener;)V

    return-void
.end method


# virtual methods
.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity$2;->this$0:Lcom/google/glass/voice/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/GlassVoiceActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity$2;->this$0:Lcom/google/glass/voice/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/GlassVoiceActivity;->isMessageShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity$2;->this$0:Lcom/google/glass/voice/GlassVoiceActivity;

    invoke-static {v0}, Lcom/google/glass/voice/GlassVoiceActivity;->access$000(Lcom/google/glass/voice/GlassVoiceActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring voice command because we don\'t have window focus."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/voice/DelegatingVoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method
