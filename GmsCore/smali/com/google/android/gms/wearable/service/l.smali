.class final Lcom/google/android/gms/wearable/service/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/service/WearableService;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    .line 551
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/service/l;->b:Z

    .line 552
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/service/l;Lcom/google/android/gms/wearable/service/n;I)Landroid/os/Message;
    .locals 1

    .prologue
    .line 541
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/service/l;->a(Lcom/google/android/gms/wearable/service/n;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/wearable/service/n;I)Landroid/os/Message;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0, p2}, Lcom/google/android/gms/wearable/service/l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 740
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 741
    return-object v0
.end method

.method private a(Lcom/google/android/gms/wearable/service/n;)V
    .locals 4

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/service/l;->b(Lcom/google/android/gms/wearable/service/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-static {p1}, Lcom/google/android/gms/wearable/service/l;->c(Lcom/google/android/gms/wearable/service/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/wearable/service/l;->a(Lcom/google/android/gms/wearable/service/n;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/wearable/service/l;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 616
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/service/n;->c(Landroid/content/Context;)V

    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/wearable/service/l;->a(Lcom/google/android/gms/wearable/service/n;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->i()V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/wearable/internal/af;Lcom/google/android/gms/wearable/service/x;)Z
    .locals 4

    .prologue
    .line 728
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/wearable/service/x;->a(Lcom/google/android/gms/wearable/internal/af;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    const-string v1, "WearableService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "publishEvent: Failure from remote exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/wearable/service/n;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 624
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    const-string v1, "WearableService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ensureBindStarted: hasConnection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 637
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/wearable/node/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v2

    .line 639
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->a()Lcom/google/android/gms/wearable/node/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/wearable/node/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 640
    const-string v0, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ensureBindStarted: app does not match record\'s app key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->a()Lcom/google/android/gms/wearable/node/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 642
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    const-string v0, "WearableService"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    const-string v0, "WearableService"

    const-string v2, "ensureBindStarted: unrecognized app in package record."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v1

    .line 651
    goto :goto_0

    .line 654
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/service/n;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 655
    const-string v0, "WearableService"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 656
    const-string v0, "WearableService"

    const-string v2, "ensureBindStarted: package does not have a listener service."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 658
    goto :goto_0

    .line 663
    :cond_5
    :try_start_1
    const-string v2, "WearableService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 664
    const-string v2, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ensureBindStarted: binding to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->c()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/service/n;->b(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 671
    :goto_1
    if-eqz v2, :cond_7

    .line 672
    const-string v1, "WearableService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ensureBindStarted: started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 667
    :catch_1
    move-exception v2

    .line 668
    const-string v3, "WearableService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ensureBindStarted: Permission denied connecting to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    goto :goto_1

    .line 677
    :cond_7
    const-string v0, "WearableService"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 678
    const-string v0, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ensureBindStarted: bind failed, app no longer not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/service/n;->c(Landroid/content/Context;)V

    move v0, v1

    .line 682
    goto/16 :goto_0
.end method

.method private static c(Lcom/google/android/gms/wearable/service/n;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x1

    .line 693
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/n;->e()Lcom/google/android/gms/wearable/internal/af;

    move-result-object v2

    .line 694
    if-nez v2, :cond_1

    .line 695
    const-string v1, "WearableService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PackageRecord.flush: No service ready: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 701
    :cond_1
    const-string v1, "WearableService"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 702
    const-string v1, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PackageRecord.flush: ready: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/n;->g()Lcom/google/android/gms/wearable/service/x;

    move-result-object v1

    .line 705
    :goto_1
    if-eqz v1, :cond_0

    .line 706
    invoke-static {v2, v1}, Lcom/google/android/gms/wearable/service/l;->a(Lcom/google/android/gms/wearable/internal/af;Lcom/google/android/gms/wearable/service/x;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 708
    const/4 v0, 0x0

    goto :goto_0

    .line 711
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/n;->h()Lcom/google/android/gms/wearable/service/x;

    .line 712
    const-string v3, "WearableService"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 713
    const-string v3, "WearableService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageRecord.flush: published: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/n;->g()Lcom/google/android/gms/wearable/service/x;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 745
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const-string v0, "WearableService"

    const-string v1, "Shutting down event handler."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/service/l;->b:Z

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/service/l;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/l;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 752
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/WearableService;->e(Lcom/google/android/gms/wearable/service/WearableService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/service/n;

    .line 753
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/service/n;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 755
    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 556
    const-string v0, "WearableService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    .line 560
    const-string v0, "WearableService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "WearableService"

    const-string v1, "handleMessage: JBmr2+ required."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/l;->a()V

    .line 594
    :cond_2
    :goto_0
    return-void

    .line 566
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/service/l;->b:Z

    if-eqz v0, :cond_4

    .line 567
    const-string v0, "WearableService"

    const-string v1, "handleMessage: shutdown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/service/n;

    .line 572
    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/wearable/service/l;->removeMessages(ILjava/lang/Object;)V

    .line 573
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 574
    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/service/l;->a(Lcom/google/android/gms/wearable/service/n;)V

    goto :goto_0

    .line 575
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 580
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "binder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/service/n;->a(Landroid/os/IBinder;)V

    .line 582
    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/service/l;->a(Lcom/google/android/gms/wearable/service/n;)V

    goto :goto_0

    .line 583
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_7

    .line 586
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/n;->f()V

    goto :goto_0

    .line 587
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_2

    .line 588
    const-string v1, "WearableService"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 589
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage: unbind "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/wearable/service/l;->c(Lcom/google/android/gms/wearable/service/n;)Z

    .line 592
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/l;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/service/n;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
