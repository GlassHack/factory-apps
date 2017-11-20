.class public abstract Lcom/google/android/gms/auth/gsf/b;
.super Landroid/support/v4/app/j;
.source "SourceFile"


# static fields
.field protected static C:Z

.field protected static D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

.field public static E:Lcom/google/android/gms/auth/gsf/c;

.field public static F:Ljava/lang/Object;

.field static q:Z

.field protected static final r:Z


# instance fields
.field protected A:Z

.field protected B:Ljava/lang/String;

.field private n:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:[B

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:Lcom/google/android/gms/auth/gsf/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/auth/gsf/b;->q:Z

    .line 42
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/auth/gsf/b;->r:Z

    .line 202
    new-instance v0, Lcom/google/android/gms/auth/gsf/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/gsf/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gsf/b;->E:Lcom/google/android/gms/auth/gsf/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    .line 149
    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->s:Z

    .line 155
    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->t:Z

    .line 157
    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->u:Z

    .line 180
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/e;->b(Ljava/lang/String;)V

    .line 540
    iput-object v2, p0, Lcom/google/android/gms/auth/gsf/b;->y:Ljava/lang/String;

    .line 543
    :cond_0
    if-nez p1, :cond_1

    .line 544
    const/4 v0, 0x4

    const-string v1, "canceled"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/auth/gsf/b;->a(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/auth/gsf/b;->a(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->s:Z

    .line 562
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    .line 563
    if-eqz v0, :cond_1

    .line 565
    if-eqz p1, :cond_3

    .line 566
    invoke-virtual {v0, p1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 567
    const-string v0, "GLSActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountAuthenticatorResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    sput-object p1, Lcom/google/android/gms/auth/gsf/b;->F:Ljava/lang/Object;

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->D:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 582
    if-eqz p1, :cond_2

    .line 583
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 586
    :cond_2
    return-void

    .line 572
    :cond_3
    invoke-virtual {v0, p2, p3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 573
    const-string v0, "GLSActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountAuthenticatorResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_4
    sput-object p3, Lcom/google/android/gms/auth/gsf/b;->F:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 496
    :goto_0
    return-void

    .line 488
    :cond_0
    if-eqz p1, :cond_4

    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, v1, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->y:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "GLSActivity"

    const-string v1, "Start intent without session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/b;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/a/h;->b(Landroid/content/Intent;)V

    :cond_3
    const-string v0, "useImmersiveMode"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/gsf/e;->ai:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "firstRun"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/gsf/e;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "account_name"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, v1, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "calling_app_description"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, v1, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "service"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "confirmCredentials"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "addAccount"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "hasMultipleUsers"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "theme"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/b;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 492
    sget-object v0, Lcom/google/android/gms/auth/gsf/b;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    iget-object v0, v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Landroid/content/Intent;)V

    .line 494
    :cond_5
    sget-object v0, Lcom/google/android/gms/auth/gsf/b;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting for result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/auth/gsf/b;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 602
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 603
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/gsf/b;->a(Landroid/os/Bundle;)V

    .line 607
    return-void
.end method

.method protected final f()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 616
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 617
    const-string v1, "setupSkipped"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 618
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/gsf/b;->a(Landroid/os/Bundle;)V

    .line 619
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 635
    invoke-super {p0}, Landroid/support/v4/app/j;->finish()V

    .line 637
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->F:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->s:Z

    if-eqz v0, :cond_2

    .line 645
    const-string v0, "GLSActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountAuthenticatorResult: finish on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/gsf/b;->a(Landroid/os/Bundle;)V

    .line 650
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 651
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remaining GLS activities after end: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v2, v2, Lcom/google/android/gms/auth/gsf/e;->F:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_2
    sget-object v0, Lcom/google/android/gms/auth/gsf/b;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "finished!"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/b;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 246
    if-nez p1, :cond_a

    .line 249
    const/4 v0, 0x0

    .line 250
    if-eqz v4, :cond_0

    .line 251
    invoke-static {v4}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    .line 253
    :cond_0
    if-nez v0, :cond_1

    .line 255
    const-string v0, "session"

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/gsf/b;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .line 263
    :goto_0
    if-nez p1, :cond_b

    const-string v0, "Intent"

    .line 264
    :goto_1
    sget-object v3, Lcom/google/android/gms/auth/gsf/b;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v5, "GLSActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onCreate() with "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-lt v0, v3, :cond_c

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/google/android/gms/auth/gsf/b;->C:Z

    .line 269
    if-eqz p1, :cond_f

    .line 274
    const-string v0, "session"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_d

    .line 283
    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/e;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/gsf/e;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    .line 284
    iget-object v3, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    if-nez v3, :cond_e

    .line 285
    invoke-static {v0, p1}, Lcom/google/android/gms/auth/gsf/e;->a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/gsf/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    move-object v3, p1

    .line 305
    :cond_2
    :goto_3
    const-string v0, "isTop"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->s:Z

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->y:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->F:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    const-string v4, "authAccount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    .line 320
    :cond_3
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v4, v4, Lcom/google/android/gms/auth/gsf/e;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    .line 322
    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/auth/gsf/e;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 325
    :cond_4
    const-string v0, "service"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->x:Ljava/lang/String;

    .line 327
    const-string v0, "confirmCredentials"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->t:Z

    .line 328
    const-string v0, "addAccount"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->u:Z

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_5

    .line 330
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    .line 332
    :cond_5
    const-string v0, "CaptchaData"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->v:[B

    .line 333
    const-string v0, "CaptchaToken"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->w:Ljava/lang/String;

    .line 334
    const-string v0, "showingProgressDialog"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->n:Z

    .line 335
    const-string v0, "hasMultipleUsers"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/b;->A:Z

    .line 336
    const-string v0, "theme"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->B:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->B:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 342
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 343
    const-string v0, "material_light"

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->B:Ljava/lang/String;

    .line 350
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    const-string v4, "allowSkip"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "allowSkip"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 353
    const-string v0, "GLSActivity"

    const-string v4, "Accepting legacy allowSkip from intent"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    const-string v4, "allowSkip"

    const-string v5, "allowSkip"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    :cond_7
    const-string v0, "firstRun"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    const-string v4, "firstRun"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    if-eqz v0, :cond_8

    .line 361
    iput-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->u:Z

    .line 367
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    const-string v1, "callerExtras"

    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v4, v4, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/gsf/b;->setResult(ILandroid/content/Intent;)V

    .line 372
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    const-string v1, "useImmersiveMode"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/gsf/e;->ai:Z

    .line 373
    :cond_9
    return-void

    .line 261
    :cond_a
    invoke-static {p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/gsf/b;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    goto/16 :goto_0

    .line 263
    :cond_b
    const-string v0, "Icicle"

    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 267
    goto/16 :goto_2

    .line 288
    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/auth/gsf/e;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/gsf/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    :cond_e
    move-object v3, p1

    .line 290
    goto/16 :goto_3

    .line 292
    :cond_f
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    if-nez v0, :cond_16

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    .line 296
    :goto_5
    const-string v0, "notificationId"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    move v0, v2

    :goto_6
    if-nez v0, :cond_9

    .line 300
    invoke-static {v3}, Lcom/google/android/gms/auth/gsf/e;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/gsf/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    .line 301
    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    if-nez v0, :cond_10

    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, v4, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    :cond_10
    const-string v0, "pendingIntent"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->D:Landroid/app/PendingIntent;

    if-nez v0, :cond_11

    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    const-string v0, "pendingIntent"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, v4, Lcom/google/android/gms/auth/gsf/e;->D:Landroid/app/PendingIntent;

    :cond_11
    const-string v0, "hasAccountManagerOptions"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iput-object v3, v0, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    goto/16 :goto_3

    .line 296
    :cond_12
    const-string v0, "session"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/google/android/gms/auth/gsf/e;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/gsf/e;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v4, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    if-eqz v4, :cond_13

    move v0, v2

    goto :goto_6

    :cond_13
    const-string v4, "GLSActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Notification without session "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/gsf/b;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/b;->finish()V

    move v0, v1

    goto/16 :goto_6

    :cond_14
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v4, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_7

    .line 345
    :cond_15
    const-string v0, "holo"

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->B:Ljava/lang/String;

    goto/16 :goto_4

    :cond_16
    move-object v3, v0

    goto/16 :goto_5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 378
    const-string v0, "CaptchaData"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->v:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 379
    const-string v0, "CaptchaToken"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "showingProgressDialog"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    const-string v0, "isTop"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    const-string v0, "hasMultipleUsers"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    const-string v0, "theme"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, v1, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GLSActivity"

    const-string v1, "Start intent without session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "useImmersiveMode"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/gsf/e;->ai:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "firstRun"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/gsf/e;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "account_name"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, v1, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "calling_app_description"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v1, v1, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "service"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "confirmCredentials"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "addAccount"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "hasMultipleUsers"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/b;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "theme"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/b;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/b;->z:Lcom/google/android/gms/auth/gsf/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/gsf/e;->b(Landroid/os/Bundle;)V

    .line 390
    sget-object v0, Lcom/google/android/gms/auth/gsf/b;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Landroid/os/Bundle;)V

    .line 391
    sget-object v0, Lcom/google/android/gms/auth/gsf/b;->D:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "onSaveInstanceState()!"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method
