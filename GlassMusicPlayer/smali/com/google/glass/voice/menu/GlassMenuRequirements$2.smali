.class final Lcom/google/glass/voice/menu/GlassMenuRequirements$2;
.super Lcom/google/glass/voice/menu/Requirement;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->error_cannot_send_message:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_enable_glassware_or_pairing_for_messaging:I

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "IS_MESSAGING_ALLOWED"

    return-object v0
.end method

.method public final isSatisfied(ZZ)Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityCache;->isMirrorGlasswareEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityCache;->isMirrorGlasswareEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
