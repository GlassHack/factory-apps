.class public Lcom/google/glass/voice/actions/ActionDecision;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_OP_DECISON:Lcom/google/glass/voice/actions/ActionDecision;

.field static final UNSET_PROMPTED_ARGUMENT_ID:I = -0x1


# instance fields
.field private final countDownDurationMs:J

.field private final displayPrompt:Ljava/lang/String;

.field private final intent:Landroid/content/Intent;

.field private final playTts:Z

.field private final promptedArgumentId:I

.field private final shouldAutoExecute:Z

.field private final shouldCancel:Z

.field private final startFollowOnVoiceSearch:Z

.field private final ttsEligibleForBackground:Z

.field private final vocalizedPrompt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/voice/actions/ActionDecision$Builder;

    invoke-direct {v0}, Lcom/google/glass/voice/actions/ActionDecision$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->build()Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/actions/ActionDecision;->NO_OP_DECISON:Lcom/google/glass/voice/actions/ActionDecision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZJILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/glass/voice/actions/ActionDecision;->displayPrompt:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/glass/voice/actions/ActionDecision;->vocalizedPrompt:Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Lcom/google/glass/voice/actions/ActionDecision;->playTts:Z

    .line 40
    iput-boolean p4, p0, Lcom/google/glass/voice/actions/ActionDecision;->ttsEligibleForBackground:Z

    .line 41
    iput-boolean p5, p0, Lcom/google/glass/voice/actions/ActionDecision;->startFollowOnVoiceSearch:Z

    .line 42
    iput-boolean p6, p0, Lcom/google/glass/voice/actions/ActionDecision;->shouldAutoExecute:Z

    .line 43
    iput-boolean p7, p0, Lcom/google/glass/voice/actions/ActionDecision;->shouldCancel:Z

    .line 44
    iput-wide p8, p0, Lcom/google/glass/voice/actions/ActionDecision;->countDownDurationMs:J

    .line 45
    iput p10, p0, Lcom/google/glass/voice/actions/ActionDecision;->promptedArgumentId:I

    .line 46
    iput-object p11, p0, Lcom/google/glass/voice/actions/ActionDecision;->intent:Landroid/content/Intent;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZJILandroid/content/Intent;Lcom/google/glass/voice/actions/ActionDecision$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p11}, Lcom/google/glass/voice/actions/ActionDecision;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZJILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCountDownDurationMs()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->countDownDurationMs:J

    return-wide v0
.end method

.method public getDisplayPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->displayPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPromptedArgumentId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->promptedArgumentId:I

    return v0
.end method

.method public getVocalizedPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->vocalizedPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public isPlayTts()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->playTts:Z

    return v0
.end method

.method public isTtsEligibleForBackground()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->ttsEligibleForBackground:Z

    return v0
.end method

.method public shouldAutoExecute()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->shouldAutoExecute:Z

    return v0
.end method

.method public shouldCancel()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->shouldCancel:Z

    return v0
.end method

.method public shouldStartFollowOnVoiceSearch()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/glass/voice/actions/ActionDecision;->startFollowOnVoiceSearch:Z

    return v0
.end method
