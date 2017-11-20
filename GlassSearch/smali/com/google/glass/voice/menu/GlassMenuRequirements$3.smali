.class final Lcom/google/glass/voice/menu/GlassMenuRequirements$3;
.super Lcom/google/glass/voice/menu/Requirement;
.source "GlassMenuRequirements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/GlassMenuRequirements;->isHeadsetConnected(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->error_bluetooth_headset_not_active:I

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_tap_connection_settings:I

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget-object v1, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "IS_HEADSET_CONNECTED"

    return-object v0
.end method

.method public isSatisfied(ZZ)Z
    .locals 2
    .param p1, "isConnected"    # Z
    .param p2, "fromVoice"    # Z

    .prologue
    const/4 v0, 0x1

    .line 82
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getHeadsetState(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
