.class public final Lcom/google/android/gms/fitness/k/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/service/au;

.field private final b:Lcom/google/android/gms/fitness/n/ar;

.field private final c:Lcom/google/android/gms/fitness/f/d;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/service/au;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/f/d;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/k/b;->e:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/service/au;

    iput-object v0, p0, Lcom/google/android/gms/fitness/k/b;->a:Lcom/google/android/gms/fitness/service/au;

    .line 36
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/ar;

    iput-object v0, p0, Lcom/google/android/gms/fitness/k/b;->b:Lcom/google/android/gms/fitness/n/ar;

    .line 37
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/f/d;

    iput-object v0, p0, Lcom/google/android/gms/fitness/k/b;->c:Lcom/google/android/gms/fitness/f/d;

    .line 38
    invoke-static {p5}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/gms/fitness/k/b;->d:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/k/b;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const-string v0, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Data not removed. Assuming app upgrade. Not removing listeners."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "No data in the intent: %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v1, "Cannot find the packagename in the intent data: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/fitness/k/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    const-string v0, "Removing all package connections of %s from %s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v5

    iget-object v2, p0, Lcom/google/android/gms/fitness/k/b;->e:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    const-string v0, "Unregister all recording listeners of: %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 109
    iget-object v1, p0, Lcom/google/android/gms/fitness/k/b;->a:Lcom/google/android/gms/fitness/service/au;

    const-string v0, "Removing all recording listeners for: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "Couldn\'t find any registrations for %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    :goto_0
    const-string v0, "Unregister all session listeners of: %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/fitness/k/b;->a:Lcom/google/android/gms/fitness/service/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/service/au;->a(Ljava/lang/String;)V

    .line 114
    const-string v0, "Remove all subscriptions of: %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/k/b;->b:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/n/ar;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    const-string v0, "Clearing all cached OAuth tokens of: %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/fitness/k/b;->c:Lcom/google/android/gms/fitness/f/d;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;I)V

    .line 123
    return-void

    .line 109
    :cond_0
    const-string v2, "Removing %d listener registrations for %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/e/g;

    iget-object v3, v1, Lcom/google/android/gms/fitness/service/au;->c:Lcom/google/android/gms/fitness/sensors/a;

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v3, v4}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Failed to remove listener for registration %s for the app %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while removing subscriptions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/k/b;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    const-string v0, "com.google.android.gms.fitness.disconnected_app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.fitness.disconnected_account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "Cannot find the account in the intent: %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/fitness/k/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Account name does not match %s vs %s. Ignoring."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/k/b;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v0, "Cannot find the packagename in the intent: %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/fitness/k/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/fitness/k/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/k/c;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/fitness/k/c;-><init>(Lcom/google/android/gms/fitness/k/b;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method
