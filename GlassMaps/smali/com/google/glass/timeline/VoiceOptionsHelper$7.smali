.class Lcom/google/glass/timeline/VoiceOptionsHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/VoiceOptionsHelper;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$7;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$7;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$100(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 430
    return-void
.end method
