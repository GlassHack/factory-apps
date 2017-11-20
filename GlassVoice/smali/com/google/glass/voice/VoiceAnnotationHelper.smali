.class public Lcom/google/glass/voice/VoiceAnnotationHelper;
.super Ljava/lang/Object;
.source "VoiceAnnotationHelper.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceInputActivityHelper;


# static fields
.field public static final ACTION_VOICE_ANNOTATION:Ljava/lang/String; = "com.google.glass.ACTION_VOICE_ANNOTATION"

.field public static final EXTRA_ANNOTATION_RESULT:Ljava/lang/String; = "annotation_result"

.field public static final EXTRA_AUDIO_DATA:Ljava/lang/String; = "audio_data"

.field public static final EXTRA_AUTO_COMMIT:Ljava/lang/String; = "auto_commit"

.field public static final EXTRA_HEADER_MSG:Ljava/lang/String; = "header_msg"

.field public static final EXTRA_HIDE_ADDING_DIALOG:Ljava/lang/String; = "hide_adding_dialog"

.field public static final EXTRA_HIDE_GUARD_PHRASE:Ljava/lang/String; = "hide_guard"

.field public static final EXTRA_HIDE_HEADER:Ljava/lang/String; = "hide_header"

.field public static final EXTRA_HIDE_PROMPT:Ljava/lang/String; = "hide_prompt"

.field public static final EXTRA_PROMPT_MESSAGE:Ljava/lang/String; = "prompt_msg"

.field public static final EXTRA_REPLY_TO_TIMELINE_ID:Ljava/lang/String; = "reply_to_timeline_id"

.field public static final EXTRA_REPLY_TO_TIMELINE_MENU_ID:Ljava/lang/String; = "reply_to_menu_id"

.field public static final EXTRA_WANT_AUDIO_DATA:Ljava/lang/String; = "want_audio_data"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    .line 79
    return-void
.end method


# virtual methods
.method public getAnnotationIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_VOICE_ANNOTATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "want_audio_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    return-object v0
.end method

.method public getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 180
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 181
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Response was not OK, means transcription failed or was cancelled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-object v0

    .line 185
    :cond_0
    if-nez p2, :cond_1

    .line 186
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Data intent was null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_1
    const-string v0, "annotation_result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAudioData(ILandroid/content/Intent;)[B
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 194
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 195
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Response was not OK, means transcription failed or was cancelled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :goto_0
    return-object v0

    .line 199
    :cond_0
    if-nez p2, :cond_1

    .line 200
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Data intent was null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "audio_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public startAnnotationForResult(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResult(IZ)V

    .line 89
    return-void
.end method

.method public startAnnotationForResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 113
    return-void
.end method

.method public startAnnotationForResult(IZ)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "wantAudioData"    # Z

    .prologue
    .line 99
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;-><init>()V

    .line 100
    invoke-virtual {v0, p2}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->setWantAudioData(Z)Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResult(ILandroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public startAnnotationForResultWithCustomHeader(IZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "wantAudioData"    # Z
    .param p3, "headerMsg"    # Ljava/lang/String;
    .param p4, "promptMsg"    # Ljava/lang/String;
    .param p5, "showGuardPhrase"    # Z
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p6, "showAdding"    # Z
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p7, "autoCommit"    # Z

    .prologue
    const/4 v3, 0x1

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 148
    .local v1, "triggerTimeMillis":J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.glass.ACTION_VOICE_ANNOTATION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "trigger_time"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    const-string v4, "trigger_method"

    const/16 v5, 0xb

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string/jumbo v4, "want_audio_data"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v4, "header_msg"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p5, :cond_0

    .line 156
    const-string v4, "hide_header"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    :cond_0
    const-string v4, "prompt_msg"

    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    const-string v4, "hide_prompt"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    :cond_1
    if-nez p5, :cond_2

    .line 166
    const-string v4, "hide_guard"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    :cond_2
    const-string v4, "hide_adding_dialog"

    if-nez p6, :cond_3

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const-string v3, "auto_commit"

    invoke-virtual {v0, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0, p1}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 171
    return-void

    .line 168
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
