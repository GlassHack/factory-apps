.class Lcom/google/glass/home/NotificationService$4;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/NotificationService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/NotificationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/NotificationService;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/glass/home/NotificationService$4;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentReady(Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 1
    .param p1, "notification"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/glass/home/NotificationService$4;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v0, p1}, Lcom/google/glass/home/NotificationService;->access$300(Lcom/google/glass/home/NotificationService;Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    .line 124
    return-void
.end method
