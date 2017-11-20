.class final Lcom/google/android/gms/checkin/c;
.super Lcom/google/android/gms/checkin/f;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/checkin/CheckinService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/checkin/CheckinService;II)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    iput p2, p0, Lcom/google/android/gms/checkin/c;->a:I

    iput p3, p0, Lcom/google/android/gms/checkin/c;->b:I

    invoke-direct {p0}, Lcom/google/android/gms/checkin/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Lcom/google/android/gms/checkin/g;)Lcom/google/android/gms/checkin/b/c;
    .locals 3

    .prologue
    .line 368
    const-string v0, "CheckinService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "CheckinService"

    const-string v1, "task doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 372
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    invoke-static {v1}, Lcom/google/android/gms/checkin/CheckinService;->a(Lcom/google/android/gms/checkin/CheckinService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const-string v0, "CheckinService"

    const-string v1, "Preparing to send checkin request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    invoke-static {v0}, Lcom/google/android/gms/checkin/EventLogService;->a(Landroid/content/Context;)V

    .line 375
    invoke-super {p0, p1}, Lcom/google/android/gms/checkin/f;->a([Lcom/google/android/gms/checkin/g;)Lcom/google/android/gms/checkin/b/c;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    iget-object v2, p0, Lcom/google/android/gms/checkin/c;->d:Lcom/google/android/gms/checkin/b/b;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/checkin/CheckinService;->a(Lcom/google/android/gms/checkin/CheckinService;Lcom/google/android/gms/checkin/b/b;Lcom/google/android/gms/checkin/b/c;)V

    .line 377
    if-eqz v0, :cond_1

    .line 378
    invoke-static {}, Lcom/google/android/gms/checkin/CheckinService;->a()Z

    goto :goto_0

    .line 381
    :cond_2
    return-object v0
.end method

.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    check-cast p1, [Lcom/google/android/gms/checkin/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/checkin/c;->a([Lcom/google/android/gms/checkin/g;)Lcom/google/android/gms/checkin/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 365
    check-cast p1, Lcom/google/android/gms/checkin/b/c;

    iget-object v0, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    invoke-static {v0}, Lcom/google/android/gms/checkin/CheckinService;->b(Lcom/google/android/gms/checkin/CheckinService;)Lcom/google/android/gms/checkin/f;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/checkin/c;->a:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    invoke-static {v1}, Lcom/google/android/gms/checkin/CheckinService;->c(Lcom/google/android/gms/checkin/CheckinService;)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/checkin/c;->b:I

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.checkin.CHECKIN_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_1

    const-string v0, "success"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/checkin/CheckinService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    invoke-virtual {v0}, Lcom/google/android/gms/checkin/CheckinService;->stopSelf()V

    :goto_2
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/c;->a:I

    goto :goto_0

    :cond_1
    const-string v0, "success"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/checkin/c;->c:Lcom/google/android/gms/checkin/CheckinService;

    invoke-static {v1, v0}, Lcom/google/android/gms/checkin/CheckinService;->a(Lcom/google/android/gms/checkin/CheckinService;I)V

    goto :goto_2
.end method
