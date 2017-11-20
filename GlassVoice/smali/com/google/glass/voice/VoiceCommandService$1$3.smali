.class Lcom/google/glass/voice/VoiceCommandService$1$3;
.super Ljava/lang/Object;
.source "VoiceCommandService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceCommandService$1;->addDeathRecipient(Lcom/google/android/glass/voice/IVoiceCommandListener;)Landroid/os/IBinder$DeathRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/VoiceCommandService$1;

.field final synthetic val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommandService$1;Lcom/google/android/glass/voice/IVoiceCommandListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/VoiceCommandService$1;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$1$3;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceCommandService$1$3;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$1$3;->this$1:Lcom/google/glass/voice/VoiceCommandService$1;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService$1$3;->val$voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceCommandService$1;->stopListening(Lcom/google/android/glass/voice/IVoiceCommandListener;)V

    .line 111
    return-void
.end method
