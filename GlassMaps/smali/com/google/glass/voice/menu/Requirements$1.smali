.class final Lcom/google/glass/voice/menu/Requirements$1;
.super Lcom/google/glass/voice/menu/Requirement;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->voice_network_connectivity:I

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_tap_connection_settings:I

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget-object v1, Lcom/google/glass/app/GlassError$OnConfirmAction;->SHOW_CONNECTIVITY_STATUS_CARD:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_cloud_sad_150:I

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "IS_CONNECTED"

    return-object v0
.end method

.method public final isSatisfied(ZZ)Z
    .locals 0

    .prologue
    .line 16
    return p1
.end method
