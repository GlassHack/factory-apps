.class Lcom/google/glass/home/NotificationService$5;
.super Landroid/os/Handler;
.source "NotificationService.java"


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
    .line 128
    iput-object p1, p0, Lcom/google/glass/home/NotificationService$5;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Handler is closing notification window"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/google/glass/home/NotificationService$5;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v0, v3}, Lcom/google/glass/home/NotificationService;->access$400(Lcom/google/glass/home/NotificationService;Z)V

    .line 135
    :cond_0
    return-void
.end method
