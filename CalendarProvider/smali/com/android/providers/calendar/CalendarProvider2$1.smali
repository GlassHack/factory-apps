.class Lcom/android/providers/calendar/CalendarProvider2$1;
.super Landroid/os/Handler;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-static {v1}, Lcom/android/providers/calendar/CalendarProvider2;->access$000(Lcom/android/providers/calendar/CalendarProvider2;)Landroid/content/Context;

    move-result-object v0

    .line 458
    .local v0, "context":Landroid/content/Context;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-static {v1}, Lcom/android/providers/calendar/CalendarProvider2;->access$100(Lcom/android/providers/calendar/CalendarProvider2;)V

    .line 466
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 468
    :cond_0
    return-void
.end method
