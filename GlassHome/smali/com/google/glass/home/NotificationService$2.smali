.class Lcom/google/glass/home/NotificationService$2;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lcom/google/android/glass/eye/EyeGestureManager$Listener;


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
    .line 102
    iput-object p1, p0, Lcom/google/glass/home/NotificationService$2;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Lcom/google/android/glass/eye/EyeGesture;)V
    .locals 4
    .param p1, "gesture"    # Lcom/google/android/glass/eye/EyeGesture;

    .prologue
    .line 105
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Eye gesture %s received."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/home/NotificationService$2;->this$0:Lcom/google/glass/home/NotificationService;

    const-string v1, "13"

    invoke-static {v0, v1}, Lcom/google/glass/home/NotificationService;->access$100(Lcom/google/glass/home/NotificationService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/glass/home/NotificationService$2;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v0}, Lcom/google/glass/home/NotificationService;->access$200(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_NOTIFICATION_GLANCE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 109
    :cond_0
    return-void
.end method
