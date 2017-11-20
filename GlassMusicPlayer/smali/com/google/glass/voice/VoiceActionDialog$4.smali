.class Lcom/google/glass/voice/VoiceActionDialog$4;
.super Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceActionDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceActionDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/voice/VoiceActionDialog$4;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$4;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceActionDialog;->access$300(Lcom/google/glass/voice/VoiceActionDialog;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$4;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceActionDialog;->isShowing()Z

    move-result v0

    return v0
.end method
