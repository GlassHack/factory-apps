.class Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$1;
.super Lcom/google/glass/voice/menu/Requirement;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

.field final synthetic val$entities:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$1;->this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    iput-object p2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$1;->val$entities:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->error_no_share_targets:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->sharing_no_share_targets:I

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "HAS_ENTITIES"

    return-object v0
.end method

.method public isSatisfied(ZZ)Z
    .locals 1

    .prologue
    .line 141
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$1;->val$entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
