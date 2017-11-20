.class Lcom/android/providers/calendar/CalendarReceiver$1;
.super Ljava/lang/Object;
.source "CalendarReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/calendar/CalendarReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarReceiver;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->this$0:Lcom/android/providers/calendar/CalendarReceiver;

    iput-object p2, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 65
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->this$0:Lcom/android/providers/calendar/CalendarReceiver;

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarReceiver;->access$100(Lcom/android/providers/calendar/CalendarReceiver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->this$0:Lcom/android/providers/calendar/CalendarReceiver;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarReceiver$1;->val$cr:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/providers/calendar/CalendarReceiver;->access$000(Lcom/android/providers/calendar/CalendarReceiver;Landroid/content/ContentResolver;)V

    goto :goto_0
.end method
