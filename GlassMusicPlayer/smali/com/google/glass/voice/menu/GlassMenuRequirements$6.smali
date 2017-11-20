.class final Lcom/google/glass/voice/menu/GlassMenuRequirements$6;
.super Lcom/google/glass/voice/menu/Requirement;
.source "SourceFile"


# instance fields
.field final synthetic val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirement;-><init>()V

    return-void
.end method

.method private isGmailGlasswareEnabled()Z
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityCache;->isMirrorGlasswareEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHangoutsGlasswareEnabled()Z
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityCache;->isMirrorGlasswareEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getError()Lcom/google/glass/app/GlassError;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 187
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->isGmailGlasswareEnabled()Z

    move-result v4

    .line 189
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 190
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->access$000()Z

    move-result v5

    .line 194
    const/4 v3, 0x0

    .line 195
    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    .line 196
    sget v2, Lcom/google/glass/common/R$string;->error_cannot_send_message:I

    .line 197
    sget v0, Lcom/google/glass/common/R$string;->error_enable_gmail_glassware_for_messaging:I

    move-object v6, v3

    move v3, v2

    move v2, v0

    move-object v0, v6

    .line 208
    :goto_1
    new-instance v4, Lcom/google/glass/app/GlassError;

    invoke-direct {v4}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 209
    invoke-virtual {v4, v3}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    .line 210
    invoke-virtual {v3, v2}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v0}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 187
    goto :goto_0

    .line 198
    :cond_2
    if-eqz v2, :cond_3

    if-nez v5, :cond_3

    .line 199
    sget v3, Lcom/google/glass/common/R$string;->error_cannot_send_message:I

    .line 200
    sget v2, Lcom/google/glass/common/R$string;->error_android_pairing_for_sms:I

    .line 201
    sget-object v0, Lcom/google/glass/app/GlassError$OnConfirmAction;->SHOW_BLUETOOTH_STATUS_CARD:Lcom/google/glass/app/GlassError$OnConfirmAction;

    goto :goto_1

    .line 203
    :cond_3
    if-eqz v5, :cond_4

    sget v0, Lcom/google/glass/common/R$string;->error_no_phone_or_email:I

    .line 205
    :goto_2
    sget v2, Lcom/google/glass/common/R$string;->error_edit_focus_contacts:I

    move-object v6, v3

    move v3, v0

    move-object v0, v6

    goto :goto_1

    .line 203
    :cond_4
    sget v0, Lcom/google/glass/common/R$string;->error_no_email:I

    goto :goto_2
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "CAN_SEND_MESSAGE"

    return-object v0
.end method

.method public final isSatisfied(ZZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    .line 178
    :goto_1
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz v0, :cond_6

    .line 179
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->isGmailGlasswareEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v1

    .line 181
    :goto_2
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 182
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->canHangout(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->isHangoutsGlasswareEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2

    :cond_4
    move v0, v2

    .line 176
    goto :goto_0

    :cond_5
    move v3, v2

    .line 177
    goto :goto_1

    :cond_6
    move v0, v2

    .line 179
    goto :goto_2
.end method
