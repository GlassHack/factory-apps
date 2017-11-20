.class Lcom/google/glass/home/NotificationService$1;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/TouchpadManager$Listener;


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
    .line 82
    iput-object p1, p0, Lcom/google/glass/home/NotificationService$1;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lcom/google/android/glass/touchpad/Gesture;)V
    .locals 4
    .param p1, "gesture"    # Lcom/google/android/glass/touchpad/Gesture;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "%s gesture received"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/google/android/glass/touchpad/Gesture;->TAP:Lcom/google/android/glass/touchpad/Gesture;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/Gesture;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Not a tap, ignoring."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/NotificationService$1;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-virtual {v0}, Lcom/google/glass/home/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Device was doffed, dropping screen off input"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/NotificationService$1;->this$0:Lcom/google/glass/home/NotificationService;

    const-string v1, "9"

    invoke-static {v0, v1}, Lcom/google/glass/home/NotificationService;->access$100(Lcom/google/glass/home/NotificationService;Ljava/lang/String;)Z

    goto :goto_0
.end method
