.class public Lcom/google/glass/videocall/VideoCallHelper;
.super Ljava/lang/Object;
.source "VideoCallHelper.java"


# static fields
.field public static final ACTION_END_VIDEO_CALL:Ljava/lang/String; = "com.google.glass.videocall.END"

.field public static final ACTION_JOIN_CONVERSATION:Ljava/lang/String; = "com.google.glass.videocall.JOIN_CONVERSATION"

.field public static final ACTION_JOIN_ENTITY:Ljava/lang/String; = "com.google.glass.videocall.JOIN_ENTITY"

.field public static final ACTION_JOIN_VIDEO_CALL_MUC:Ljava/lang/String; = "com.google.glass.videocall.JOIN_MUC"

.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "conversation"

.field public static final EXTRA_ENTITY_ID:Ljava/lang/String; = "entity"

.field private static final VIDEO_CALL_PKGNAME:Ljava/lang/String; = "com.google.glass.videocall"

.field private static final VIDEO_CALL_SERVICE:Landroid/content/ComponentName;

.field private static final VIDEO_CALL_SERVICE_CLASS:Ljava/lang/String; = "com.google.glass.videocall.VideoCallService"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.videocall"

    const-string v2, "com.google.glass.videocall.VideoCallService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/videocall/VideoCallHelper;->VIDEO_CALL_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/videocall/VideoCallHelper;->context:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public isInVideoCall()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public joinConversation(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "inviteParticipants"    # Z

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.videocall.JOIN_CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    sget-object v1, Lcom/google/glass/videocall/VideoCallHelper;->VIDEO_CALL_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/videocall/VideoCallHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    return-void
.end method

.method public joinEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V
    .locals 3
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p2, "invite"    # Z

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.videocall.JOIN_ENTITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entity"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    sget-object v1, Lcom/google/glass/videocall/VideoCallHelper;->VIDEO_CALL_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/videocall/VideoCallHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    return-void
.end method
