.class Lcom/google/glass/userevent/UserEventService$8;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventService;

.field final synthetic val$forceFlush:Z

.field final synthetic val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/userevent/UserEventService;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    iput-object p2, p0, Lcom/google/glass/userevent/UserEventService$8;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iput-boolean p3, p0, Lcom/google/glass/userevent/UserEventService$8;->val$forceFlush:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 362
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService$8;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventService;->addSerial(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 368
    .local v0, "annotated":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-virtual {v3}, Lcom/google/glass/userevent/UserEventService;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventSoftwareVersion(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 369
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-virtual {v3}, Lcom/google/glass/userevent/UserEventService;->getIsDogfood()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setIsDogfood(Z)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 370
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-virtual {v3}, Lcom/google/glass/userevent/UserEventService;->getEnabledExperiments()[I

    move-result-object v3

    iput-object v3, v2, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    .line 373
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-virtual {v2, v0}, Lcom/google/glass/userevent/UserEventService;->onPreLogAnnotation(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .local v1, "logString":Ljava/lang/StringBuilder;
    const-string v2, "Logging user event: [action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 377
    invoke-virtual {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/userevent/UserEventAction;->fromAction(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-virtual {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static {}, Lcom/google/glass/userevent/UserEventService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-virtual {v2, v0}, Lcom/google/glass/userevent/UserEventService;->onPostLog(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 385
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-static {v2, v0}, Lcom/google/glass/userevent/UserEventService;->access$300(Lcom/google/glass/userevent/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 387
    .end local v0    # "annotated":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1    # "logString":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService$8;->this$0:Lcom/google/glass/userevent/UserEventService;

    iget-boolean v3, p0, Lcom/google/glass/userevent/UserEventService$8;->val$forceFlush:Z

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventService;->logQueued(Z)V

    .line 388
    return-void
.end method
