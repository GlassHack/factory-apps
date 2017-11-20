.class Lcom/google/glass/voice/menu/GlassMenuLauncher$1;
.super Ljava/lang/Object;
.source "GlassMenuLauncher.java"

# interfaces
.implements Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/GlassMenuLauncher;->configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

.field final synthetic val$menuItemAction:I


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    iput p2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->val$menuItemAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntitySelected(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 4
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v3, 0x0

    .line 138
    iget v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->val$menuItemAction:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 139
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$000(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/glass/app/GlassActivity;

    invoke-static {v1, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->call(Lcom/google/glass/app/GlassActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->val$menuItemAction:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 141
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$000(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->canSendMessage(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v0

    .line 142
    .local v0, "requirement":Lcom/google/glass/voice/menu/Requirement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/voice/menu/Requirement;->isSatisfied(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/Requirement;->getError()Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v2}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$000(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$000(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->sendMessage(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V

    goto :goto_0

    .line 147
    .end local v0    # "requirement":Lcom/google/glass/voice/menu/Requirement;
    :cond_3
    iget v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->val$menuItemAction:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$000(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->videoCall(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    goto :goto_0
.end method
