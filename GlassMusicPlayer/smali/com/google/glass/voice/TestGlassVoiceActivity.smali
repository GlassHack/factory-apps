.class public Lcom/google/glass/voice/TestGlassVoiceActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "SourceFile"


# instance fields
.field public errorDialog:Lcom/google/glass/widget/MessageDialog;

.field isErrorDialogDismissedCalled:Z

.field private lastDialog:Lcom/google/glass/voice/VoiceMenuDialog;

.field final receivedCommands:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/TestGlassVoiceActivity;->isErrorDialogDismissedCalled:Z

    .line 75
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/TestGlassVoiceActivity;->receivedCommands:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/voice/TestGlassVoiceActivity;Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/glass/voice/TestGlassVoiceActivity;->lastDialog:Lcom/google/glass/voice/VoiceMenuDialog;

    return-object p1
.end method


# virtual methods
.method dismissLastVoiceMenuDialog()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/TestGlassVoiceActivity;->lastDialog:Lcom/google/glass/voice/VoiceMenuDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog;->dismiss(Z)V

    .line 60
    return-void
.end method

.method getLastVoiceMenuDialog()Lcom/google/glass/voice/VoiceMenuDialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/voice/TestGlassVoiceActivity;->lastDialog:Lcom/google/glass/voice/VoiceMenuDialog;

    return-object v0
.end method

.method public getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/voice/TestGlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/voice/TestGlassVoiceActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/voice/TestGlassVoiceActivity$1;-><init>(Lcom/google/glass/voice/TestGlassVoiceActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/voice/TestGlassVoiceActivity;->receivedCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public setVoiceInputHelper(Lcom/google/glass/voice/VoiceInputHelper;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/glass/voice/TestGlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    .line 73
    return-void
.end method
