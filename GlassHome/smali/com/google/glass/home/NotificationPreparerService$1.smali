.class Lcom/google/glass/home/NotificationPreparerService$1;
.super Ljava/lang/Object;
.source "NotificationPreparerService.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/NotificationPreparerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/NotificationPreparerService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/NotificationPreparerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/NotificationPreparerService;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/home/NotificationPreparerService$1;->this$0:Lcom/google/glass/home/NotificationPreparerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentReady(Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 1
    .param p1, "notification"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/NotificationPreparerService$1;->this$0:Lcom/google/glass/home/NotificationPreparerService;

    invoke-static {v0, p1}, Lcom/google/glass/home/NotificationPreparerService;->access$000(Lcom/google/glass/home/NotificationPreparerService;Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    .line 45
    return-void
.end method
