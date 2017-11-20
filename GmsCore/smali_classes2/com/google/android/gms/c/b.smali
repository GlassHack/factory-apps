.class final Lcom/google/android/gms/c/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 206
    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CheckinService"

    const-string v1, "Disabling old GoogleServicesFramework version"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.checkin.CheckinService"

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.checkin.CheckinService$Receiver"

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.checkin.CheckinService$TriggerReceiver"

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.checkin.CheckinService$SecretCodeReceiver"

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/c/a;->o()V

    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.checkin.CheckinService"

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    :cond_1
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/c/a;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.update.SystemUpdateActivity"

    invoke-static {}, Lcom/google/android/gms/c/a;->p()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/android/gms/c/a;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.update.SystemUpdateService"

    invoke-static {}, Lcom/google/android/gms/c/a;->p()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.update.SystemUpdateService$SecretCodeReceiver"

    invoke-static {}, Lcom/google/android/gms/c/a;->p()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.update.SystemUpdateService$Receiver"

    invoke-static {}, Lcom/google/android/gms/c/a;->p()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/android/gms/c/a;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/c/a;->o()V

    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.update.SystemUpdateService"

    invoke-static {}, Lcom/google/android/gms/c/a;->p()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.checkin.EventLogService"

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.gsf.checkin.EventLogService$Receiver"

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/android/gms/c/a;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "CheckinService"

    const-string v1, "Done disabling old GoogleServicesFramework version"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_5
    const-string v0, "CheckinService"

    const-string v1, "Enabling old GoogleServicesFramework version"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v0, "CheckinService"

    const-string v1, "Done enabling old GoogleServicesFramework version"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
