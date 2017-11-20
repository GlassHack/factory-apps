.class Lcom/google/glass/voice/TestGlassVoiceActivity$1;
.super Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;
.source "TestGlassVoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/TestGlassVoiceActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/TestGlassVoiceActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/TestGlassVoiceActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/TestGlassVoiceActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/voice/TestGlassVoiceActivity$1;->this$0:Lcom/google/glass/voice/TestGlassVoiceActivity;

    invoke-direct {p0, p2}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createVoiceMenuDialog()Lcom/google/glass/voice/menu/IVoiceMenuDialog;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;

    iget-object v1, p0, Lcom/google/glass/voice/TestGlassVoiceActivity$1;->this$0:Lcom/google/glass/voice/TestGlassVoiceActivity;

    .line 25
    invoke-virtual {p0}, Lcom/google/glass/voice/TestGlassVoiceActivity$1;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;-><init>(Lcom/google/glass/voice/TestGlassVoiceActivity$1;Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V

    .line 51
    .local v0, "voiceMenuDialog":Lcom/google/glass/voice/VoiceMenuDialog;
    iget-object v1, p0, Lcom/google/glass/voice/TestGlassVoiceActivity$1;->this$0:Lcom/google/glass/voice/TestGlassVoiceActivity;

    invoke-static {v1, v0}, Lcom/google/glass/voice/TestGlassVoiceActivity;->access$002(Lcom/google/glass/voice/TestGlassVoiceActivity;Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog;

    .line 52
    return-object v0
.end method
