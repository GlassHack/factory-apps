.class Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;
.super Lcom/google/glass/voice/VoiceMenuDialog;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/TestGlassVoiceActivity$1;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/TestGlassVoiceActivity$1;Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;->this$1:Lcom/google/glass/voice/TestGlassVoiceActivity$1;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/voice/VoiceMenuDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V

    return-void
.end method


# virtual methods
.method public createVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/voice/TestGlassVoiceActivity$1$1$1;

    iget-object v1, p0, Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;->this$1:Lcom/google/glass/voice/TestGlassVoiceActivity$1;

    iget-object v1, v1, Lcom/google/glass/voice/TestGlassVoiceActivity$1;->this$0:Lcom/google/glass/voice/TestGlassVoiceActivity;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/TestGlassVoiceActivity$1$1$1;-><init>(Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;Landroid/content/Context;)V

    return-object v0
.end method

.method public dismiss(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;->dismiss()V

    .line 49
    return-void
.end method
