.class public Lcom/google/glass/voice/actions/ActionDecision$Builder;
.super Ljava/lang/Object;
.source "ActionDecision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/actions/ActionDecision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private countDownDurationMs:J

.field private displayPrompt:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private playTts:Z

.field private promptedArgumentId:I

.field private shouldAutoExecute:Z

.field private shouldCancel:Z

.field private startFollowOnVoiceSearch:Z

.field private ttsEligibleForBackground:Z

.field private vocalizedPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v3, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->displayPrompt:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->vocalizedPrompt:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->playTts:Z

    .line 96
    iput-boolean v2, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->ttsEligibleForBackground:Z

    .line 97
    iput-boolean v2, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->startFollowOnVoiceSearch:Z

    .line 98
    iput-boolean v2, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->shouldAutoExecute:Z

    .line 99
    iput-boolean v2, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->shouldCancel:Z

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->countDownDurationMs:J

    .line 101
    iput v2, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->promptedArgumentId:I

    .line 102
    iput-object v3, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public autoExecute(Z)Lcom/google/glass/voice/actions/ActionDecision$Builder;
    .locals 0
    .param p1, "shouldAutoExecute"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->shouldAutoExecute:Z

    .line 124
    return-object p0
.end method

.method public build()Lcom/google/glass/voice/actions/ActionDecision;
    .locals 13

    .prologue
    .line 105
    new-instance v0, Lcom/google/glass/voice/actions/ActionDecision;

    iget-object v1, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->displayPrompt:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->vocalizedPrompt:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->playTts:Z

    iget-boolean v4, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->ttsEligibleForBackground:Z

    iget-boolean v5, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->startFollowOnVoiceSearch:Z

    iget-boolean v6, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->shouldAutoExecute:Z

    iget-boolean v7, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->shouldCancel:Z

    iget-wide v8, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->countDownDurationMs:J

    iget v10, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->promptedArgumentId:I

    iget-object v11, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->intent:Landroid/content/Intent;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/google/glass/voice/actions/ActionDecision;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZJILandroid/content/Intent;Lcom/google/glass/voice/actions/ActionDecision$1;)V

    return-object v0
.end method

.method public displayPrompt(Ljava/lang/String;)Lcom/google/glass/voice/actions/ActionDecision$Builder;
    .locals 0
    .param p1, "displayPrompt"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->displayPrompt:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public followOnSearch(Z)Lcom/google/glass/voice/actions/ActionDecision$Builder;
    .locals 0
    .param p1, "startFollowOnSearch"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->startFollowOnVoiceSearch:Z

    .line 139
    return-object p0
.end method

.method public intent(Landroid/content/Intent;)Lcom/google/glass/voice/actions/ActionDecision$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->intent:Landroid/content/Intent;

    .line 119
    return-object p0
.end method

.method public vocalizedPrompt(Ljava/lang/String;)Lcom/google/glass/voice/actions/ActionDecision$Builder;
    .locals 0
    .param p1, "vocalizedPrompt"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/voice/actions/ActionDecision$Builder;->vocalizedPrompt:Ljava/lang/String;

    .line 134
    return-object p0
.end method
