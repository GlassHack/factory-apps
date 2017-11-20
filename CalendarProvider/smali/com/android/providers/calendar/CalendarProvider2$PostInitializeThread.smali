.class Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostInitializeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/calendar/CalendarProvider2;
    .param p2, "x1"    # Lcom/android/providers/calendar/CalendarProvider2$1;

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 582
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 584
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarProvider2;->access$300(Lcom/android/providers/calendar/CalendarProvider2;)V

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$PostInitializeThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarProvider2;->doUpdateTimezoneDependentFields()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    goto :goto_0
.end method
