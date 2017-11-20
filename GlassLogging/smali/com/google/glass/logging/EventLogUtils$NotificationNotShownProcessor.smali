.class final Lcom/google/glass/logging/EventLogUtils$NotificationNotShownProcessor;
.super Ljava/lang/Object;
.source "EventLogUtils.java"

# interfaces
.implements Lcom/google/glass/logging/EventLogUtils$LogProcessor;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EventLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NotificationNotShownProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .prologue
    .line 473
    const v0, 0xf449b

    return v0
.end method

.method public process(Landroid/util/EventLog$Event;)Ljava/util/List;
    .locals 5
    .param p1, "event"    # Landroid/util/EventLog$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/EventLog$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils;->access$000(Landroid/util/EventLog$Event;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 479
    .local v0, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_SHOW_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v1, v1, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v1

    const-string v2, "n"

    const-string v3, "0"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 480
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 483
    invoke-static {v0}, Lcom/google/glass/logging/EventLogUtils;->access$100(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
