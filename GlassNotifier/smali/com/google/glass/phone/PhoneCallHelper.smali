.class public Lcom/google/glass/phone/PhoneCallHelper;
.super Ljava/lang/Object;
.source "PhoneCallHelper.java"


# static fields
.field public static final ACTION_PHONE_CALL_STATE_CHANGED:Ljava/lang/String; = "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "call_state"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "PhoneCall"

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallHelper;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static createAttachment(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;-><init>()V

    .line 154
    .local v0, "atachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    const-string v1, "application/vnd.google-glass.phone-call-proto"

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 155
    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 156
    return-object v0
.end method

.method public static getNameFromEntity(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    .line 131
    sget-object v1, Lcom/google/glass/phone/PhoneCallHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Getting name from entity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {p0, p1}, Lcom/google/glass/phone/PhoneCallHelper;->sanitizeEntity(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/Entity;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object p1

    .line 134
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 136
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method static getUnknownEntity(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    .line 117
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    sget v1, Lcom/google/glass/common/R$string;->phone_call_unknown_caller:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 118
    return-object v0
.end method

.method public static sanitizeEntity(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/Entity;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 106
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasDisplayName()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    .end local p1    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_1
    invoke-static {p0}, Lcom/google/glass/phone/PhoneCallHelper;->getUnknownEntity(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getPhoneCallIntent(Lcom/google/googlex/glass/common/proto/nano/Entity;)Landroid/content/Intent;
    .locals 7
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    const/4 v6, 0x0

    .line 82
    sget-object v3, Lcom/google/glass/phone/PhoneCallHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Getting phone call intent for entity."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    sget-object v3, Lcom/google/glass/phone/PhoneCallHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Primary phone number is empty. Showing an error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v3, Lcom/google/glass/app/GlassError;

    invoke-direct {v3}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v4, Lcom/google/glass/common/R$string;->error_no_phone_number:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$string;->error_edit_focus_contacts:I

    .line 88
    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    .line 89
    .local v1, "error":Lcom/google/glass/app/GlassError;
    iget-object v3, p0, Lcom/google/glass/phone/PhoneCallHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x0

    .line 93
    .end local v1    # "error":Lcom/google/glass/app/GlassError;
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    const-string v5, "tel:"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .local v0, "callIntent":Landroid/content/Intent;
    goto :goto_0

    .line 92
    .end local v0    # "callIntent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isInCall()Z
    .locals 5

    .prologue
    .line 54
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallHelper;->context:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public isInCall(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "isInCall":Z
    if-eqz p1, :cond_0

    .line 68
    const-string v1, "call_state"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    :cond_0
    sget-object v1, Lcom/google/glass/phone/PhoneCallHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Checking if isInCall. [isInCall=%b]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return v0
.end method

.method public setInCall(Z)V
    .locals 6
    .param p1, "isInCall"    # Z

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "call_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    sget-object v1, Lcom/google/glass/phone/PhoneCallHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Broadcasting \"is in phone call\": %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method
