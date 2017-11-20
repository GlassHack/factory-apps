.class Lcom/google/glass/voice/menu/GlassMenuLauncher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$mainMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$menuIndex:I


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/app/GlassActivity;I)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    iput-object p2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$mainMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iput-object p3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$activity:Lcom/google/glass/app/GlassActivity;

    iput p4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$menuIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 345
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$100(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Z

    move-result v0

    .line 347
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$mainMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 348
    invoke-virtual {v1, v0, v6}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getUnsatisfiedRequirements(ZZ)Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v1, v0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$200(Lcom/google/glass/voice/menu/GlassMenuLauncher;Ljava/util/List;Landroid/view/MenuItem;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$mainMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$300(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->triggerByTouch(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/app/GlassActivity;)V

    .line 353
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$300(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEM_TRIGGERED:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "i"

    iget v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$menuIndex:I

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "m"

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 356
    return v7
.end method
