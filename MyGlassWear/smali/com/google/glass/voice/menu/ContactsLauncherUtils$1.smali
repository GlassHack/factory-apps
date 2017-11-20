.class final Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;
.super Ljava/lang/Object;
.source "ContactsLauncherUtils.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/ContactsLauncherUtils;->newVideoCallEntityItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field final synthetic val$spoken:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;->val$spoken:Z

    iput-object p2, p0, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 7
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;->val$spoken:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_ENTITY_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "entity_list"

    const-string/jumbo v3, "videocall"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "starred"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 78
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 75
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/voice/menu/ContactsLauncherUtils$1;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->videoCall(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 82
    return-void
.end method
