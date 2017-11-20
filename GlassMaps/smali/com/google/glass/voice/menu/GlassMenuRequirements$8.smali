.class final Lcom/google/glass/voice/menu/GlassMenuRequirements$8;
.super Lcom/google/glass/voice/menu/Requirement;
.source "SourceFile"


# instance fields
.field final synthetic val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$8;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->error_no_phone_number:I

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_edit_focus_contacts:I

    .line 267
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    .line 268
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string v0, "HAS_PHONE_NUMBER"

    return-object v0
.end method

.method public final isSatisfied(ZZ)Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$8;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
