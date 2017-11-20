.class public abstract Lcom/google/android/gms/auth/login/o;
.super Landroid/support/v4/app/j;
.source "SourceFile"


# static fields
.field public static C:Lcom/google/android/gms/auth/login/p;

.field protected static final w:Z

.field protected static y:Z


# instance fields
.field protected A:Z

.field protected B:Z

.field private n:Z

.field protected final x:Ljava/lang/String;

.field protected z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/auth/login/o;->w:Z

    .line 164
    new-instance v0, Lcom/google/android/gms/auth/login/p;

    invoke-direct {v0}, Lcom/google/android/gms/auth/login/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/login/o;->C:Lcom/google/android/gms/auth/login/p;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/o;->x:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "finished."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-super {p0}, Landroid/support/v4/app/j;->finish()V

    .line 317
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/o;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 205
    if-nez p1, :cond_3

    .line 208
    const/4 v0, 0x0

    .line 209
    if-eqz v4, :cond_0

    .line 210
    invoke-static {v4}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    .line 212
    :cond_0
    if-nez v0, :cond_1

    .line 214
    const-string v0, "session"

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    .line 217
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .line 228
    :cond_2
    :goto_0
    if-nez p1, :cond_4

    const-string v0, "Intent"

    .line 229
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v5, "GLSActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onCreate() with "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/google/android/gms/auth/login/o;->y:Z

    .line 234
    if-nez p1, :cond_9

    .line 235
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/o;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    if-nez v0, :cond_b

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    .line 239
    :goto_3
    const-string v0, "notificationId"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v1, v2

    :goto_4
    if-eqz v1, :cond_a

    .line 255
    :goto_5
    return-void

    .line 221
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    if-nez v0, :cond_2

    .line 224
    const-string v0, "session"

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    goto :goto_0

    .line 228
    :cond_4
    const-string v0, "Icicle"

    goto :goto_1

    :cond_5
    move v0, v2

    .line 232
    goto :goto_2

    .line 239
    :cond_6
    const-string v0, "notificationId"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    const-string v0, "-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/o;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/login/o;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/o;->finish()V

    goto :goto_4

    :cond_8
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/o;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_6

    :cond_9
    move-object v3, p1

    .line 243
    :cond_a
    const-string v0, "showingProgressDialog"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/o;->n:Z

    .line 246
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/auth/login/o;->setResult(ILandroid/content/Intent;)V

    .line 249
    const-string v0, "is_setup_wizard"

    const-string v1, "firstRun"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/o;->A:Z

    .line 254
    const-string v0, "useImmersiveMode"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/o;->B:Z

    goto :goto_5

    :cond_b
    move-object v3, v0

    goto/16 :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    const-string v0, "showingProgressDialog"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/o;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    const-string v0, "firstRun"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/o;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const-string v0, "useImmersiveMode"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/o;->B:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Landroid/os/Bundle;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "onSaveInstanceState()!"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 283
    :cond_0
    const-string v0, "useImmersiveMode"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/o;->B:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const-string v0, "firstRun"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/o;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    iget-object v0, v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Landroid/content/Intent;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v0, "useImmersiveMode"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/o;->B:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const-string v0, "firstRun"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/o;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    iget-object v0, v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Landroid/content/Intent;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/auth/login/o;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting intent for result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
