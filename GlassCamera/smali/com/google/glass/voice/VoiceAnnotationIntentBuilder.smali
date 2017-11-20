.class public Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;
.super Ljava/lang/Object;
.source "VoiceAnnotationIntentBuilder.java"


# instance fields
.field private final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_VOICE_ANNOTATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    .line 15
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "trigger_method"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "want_audio_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "trigger_time"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "trigger_time"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setCustomMenuConfirmed(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;
    .locals 2
    .param p1, "confirmedValue"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "custom_menu_confirmed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    return-object p0
.end method

.method public setCustomMenuPending(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;
    .locals 2
    .param p1, "pendingValue"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "custom_menu_pending"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    return-object p0
.end method

.method public setHideHeader(Z)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "hide_header"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    return-object p0
.end method

.method public setReplyToMenuId(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;
    .locals 2
    .param p1, "replyTo"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "reply_to_menu_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    return-object p0
.end method

.method public setReplyToTimelineId(Ljava/lang/String;)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;
    .locals 2
    .param p1, "replyTo"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "reply_to_timeline_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    return-object p0
.end method

.method public setWantAudioData(Z)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;
    .locals 2
    .param p1, "wanted"    # Z

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "want_audio_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    return-object p0
.end method
