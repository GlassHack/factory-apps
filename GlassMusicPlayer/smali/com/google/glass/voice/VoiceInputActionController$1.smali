.class Lcom/google/glass/voice/VoiceInputActionController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceInputActionController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceInputActionController;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputActionController$1;->this$0:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputCanceled()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 43
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputActionController$1;->this$0:Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController$Callback;->onActionCanceled()V

    .line 44
    return-void
.end method
