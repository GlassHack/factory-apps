.class final Lcom/google/glass/voice/menu/GlassMenuRequirements$1;
.super Lcom/google/glass/voice/menu/Requirement;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/common/R$string;->error_no_contacts:I

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_edit_focus_contacts:I

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "HAS_FOCUS_CONTACTS"

    return-object v0
.end method

.method public final isSatisfied(ZZ)Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->hasFocusContacts()Z

    move-result v0

    return v0
.end method
