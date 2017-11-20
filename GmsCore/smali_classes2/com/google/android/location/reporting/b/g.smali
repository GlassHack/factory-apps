.class public final Lcom/google/android/location/reporting/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/reporting/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-static {p1, p2}, Lcom/google/android/location/reporting/service/ReportingSyncService;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/location/reporting/LocationReportingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-static {p1, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 68
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 4

    .prologue
    const v3, 0x7f10026b

    .line 94
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GCoreUlr"

    const-string v1, "showing ambiguous notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.location.settings.LOCATION_HISTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "ambiguous_setting_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/bb;

    invoke-direct {v1, p1}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v1

    const v2, 0x7f100290

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v1

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/bb;->b()Landroid/support/v4/app/bb;

    move-result-object v1

    iput-object v0, v1, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-static {}, Lcom/google/android/location/reporting/b/j;->i()V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v2, 0x1b2c42a

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 95
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 88
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/location/reporting/service/s;->a(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 90
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    invoke-static {p1}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/android/location/reporting/service/DispatchingService;->b(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x1b2c42a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 100
    return-void
.end method
