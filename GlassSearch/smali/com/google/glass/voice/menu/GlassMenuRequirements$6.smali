.class final Lcom/google/glass/voice/menu/GlassMenuRequirements$6;
.super Lcom/google/glass/voice/menu/Requirement;
.source "GlassMenuRequirements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/GlassMenuRequirements;->canSendMessage(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/Requirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


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
.method public getError()Lcom/google/glass/app/GlassError;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 187
    iget-object v9, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v0, v7

    .line 188
    .local v0, "hasEmail":Z
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->isGmailGlasswareEnabled()Z

    move-result v1

    .line 189
    .local v1, "hasGmailGlassware":Z
    iget-object v9, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v7

    .line 190
    .local v2, "hasPhoneNumber":Z
    :goto_1
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->access$000()Z

    move-result v6

    .line 194
    .local v6, "smsEnabled":Z
    const/4 v3, 0x0

    .line 195
    .local v3, "onConfirmAction":Lcom/google/glass/app/GlassError$OnConfirmAction;
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 196
    sget v4, Lcom/google/glass/common/R$string;->error_cannot_send_message:I

    .line 197
    .local v4, "primaryMessageId":I
    sget v5, Lcom/google/glass/common/R$string;->error_enable_gmail_glassware_for_messaging:I

    .line 208
    .local v5, "secondaryMessageId":I
    :goto_2
    new-instance v8, Lcom/google/glass/app/GlassError;

    invoke-direct {v8}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 209
    invoke-virtual {v8, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v8

    .line 210
    invoke-virtual {v8, v5}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v8

    .line 211
    invoke-virtual {v8, v3}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v8

    .line 212
    invoke-virtual {v8, v7}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v7

    return-object v7

    .end local v0    # "hasEmail":Z
    .end local v1    # "hasGmailGlassware":Z
    .end local v2    # "hasPhoneNumber":Z
    .end local v3    # "onConfirmAction":Lcom/google/glass/app/GlassError$OnConfirmAction;
    .end local v4    # "primaryMessageId":I
    .end local v5    # "secondaryMessageId":I
    .end local v6    # "smsEnabled":Z
    :cond_0
    move v0, v8

    .line 187
    goto :goto_0

    .restart local v0    # "hasEmail":Z
    .restart local v1    # "hasGmailGlassware":Z
    :cond_1
    move v2, v8

    .line 189
    goto :goto_1

    .line 198
    .restart local v2    # "hasPhoneNumber":Z
    .restart local v3    # "onConfirmAction":Lcom/google/glass/app/GlassError$OnConfirmAction;
    .restart local v6    # "smsEnabled":Z
    :cond_2
    if-eqz v2, :cond_3

    if-nez v6, :cond_3

    .line 199
    sget v4, Lcom/google/glass/common/R$string;->error_cannot_send_message:I

    .line 200
    .restart local v4    # "primaryMessageId":I
    sget v5, Lcom/google/glass/common/R$string;->error_android_pairing_for_sms:I

    .line 201
    .restart local v5    # "secondaryMessageId":I
    sget-object v3, Lcom/google/glass/app/GlassError$OnConfirmAction;->SHOW_BLUETOOTH_STATUS_CARD:Lcom/google/glass/app/GlassError$OnConfirmAction;

    goto :goto_2

    .line 203
    .end local v4    # "primaryMessageId":I
    .end local v5    # "secondaryMessageId":I
    :cond_3
    if-eqz v6, :cond_4

    sget v4, Lcom/google/glass/common/R$string;->error_no_phone_or_email:I

    .line 205
    .restart local v4    # "primaryMessageId":I
    :goto_3
    sget v5, Lcom/google/glass/common/R$string;->error_edit_focus_contacts:I

    .restart local v5    # "secondaryMessageId":I
    goto :goto_2

    .line 203
    .end local v4    # "primaryMessageId":I
    .end local v5    # "secondaryMessageId":I
    :cond_4
    sget v4, Lcom/google/glass/common/R$string;->error_no_email:I

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "CAN_SEND_MESSAGE"

    return-object v0
.end method

.method public isSatisfied(ZZ)Z
    .locals 6
    .param p1, "isConnected"    # Z
    .param p2, "fromVoice"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v5, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v3

    .line 177
    .local v0, "hasEmail":Z
    :goto_0
    iget-object v5, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move v1, v3

    .line 178
    .local v1, "hasPhoneNumber":Z
    :goto_1
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_6

    .line 179
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->isGmailGlasswareEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    move v2, v3

    .line 181
    .local v2, "smsOrEmailEnabled":Z
    :goto_2
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 182
    invoke-static {v5}, Lcom/google/glass/entity/EntityUtils;->canHangout(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;->isHangoutsGlasswareEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    return v4

    .end local v0    # "hasEmail":Z
    .end local v1    # "hasPhoneNumber":Z
    .end local v2    # "smsOrEmailEnabled":Z
    :cond_4
    move v0, v4

    .line 176
    goto :goto_0

    .restart local v0    # "hasEmail":Z
    :cond_5
    move v1, v4

    .line 177
    goto :goto_1

    .restart local v1    # "hasPhoneNumber":Z
    :cond_6
    move v2, v4

    .line 179
    goto :goto_2
.end method
