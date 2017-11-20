.class final Lcom/google/android/gms/auth/login/v;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 532
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    .line 533
    iget-object v0, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 535
    const-string v0, "GLSActivity"

    const-string v1, "User skipped login."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/BrowserActivity;->setResult(I)V

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->destroy()V

    .line 539
    iget-object v0, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->finish()V

    goto :goto_0

    .line 540
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 542
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dg_minutemaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    iget-object v0, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Lcom/google/android/gms/auth/login/BrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    const-string v0, "GLSActivity"

    const-string v1, "Dg for MM not initialized yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto :goto_0

    .line 548
    :cond_3
    const-string v0, ""

    .line 550
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/login/BrowserActivity;->b(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/gms/auth/login/ac;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/gms/auth/login/ac;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 554
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v1, v1, Lcom/google/android/gms/auth/login/BrowserActivity;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v2, "GLSActivity"

    const-string v3, "loadUrl from loadUrl after droidguard results"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v1, v1, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:window.setDgResult(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/login/CustomWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    .line 552
    const-string v2, "GLSActivity"

    const-string v3, "Error from dgService in MM."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 558
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_5

    .line 559
    iget-object v0, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.androidforwork"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_0

    .line 562
    const-string v1, "com.google.android.androidforwork.PROVISIONING_TYPE"

    const-string v2, "device_owner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    iget-object v1, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 571
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 572
    iget-object v0, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/BrowserActivity;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "JsBridge showView executing."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    const v1, 0x7f0d0074

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/v;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->c(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/setupwizard/util/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 576
    :cond_6
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown handler message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
