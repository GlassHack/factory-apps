.class final Lcom/google/glass/voice/menu/GlassMenuRequirements$4;
.super Lcom/google/glass/voice/menu/Requirement;
.source "SourceFile"


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Lcom/google/glass/app/GlassError;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    const/4 v0, 0x0

    .line 113
    new-instance v1, Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    sget v0, Lcom/google/glass/common/R$string;->unavailable_in_phone_call:I

    .line 116
    :cond_0
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 117
    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v3}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v3}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "IS_MIC_AVAILABLE"

    return-object v0
.end method

.method public final isSatisfied(ZZ)Z
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
