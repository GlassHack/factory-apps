.class Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsUpdatedThread"
.end annotation


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;[Landroid/accounts/Account;)V
    .locals 0
    .param p2, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4967
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->mAccounts:[Landroid/accounts/Account;

    .line 4968
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4977
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4978
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->mAccounts:[Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->access$500(Lcom/android/providers/calendar/CalendarProvider2;[Landroid/accounts/Account;)V

    .line 4979
    return-void
.end method
