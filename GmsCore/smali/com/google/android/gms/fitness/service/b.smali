.class final Lcom/google/android/gms/fitness/service/b;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    .line 111
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/b;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/service/a;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/service/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/service/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/service/a;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->b(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;)Lcom/google/android/gms/fitness/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/f;->e()Lcom/google/android/gms/fitness/f/h;

    move-result-object v0

    .line 153
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/fitness/f/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/fitness/f/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    if-nez v1, :cond_1

    .line 160
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/f/h;->c(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 162
    if-nez v2, :cond_0

    const/4 v0, 0x5

    .line 164
    :goto_0
    new-instance v1, Lcom/google/android/gms/fitness/service/a;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-direct {v1, v3, v0, v6, v2}, Lcom/google/android/gms/fitness/service/a;-><init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;ILandroid/os/IBinder;Landroid/app/PendingIntent;)V

    move-object v0, v1

    .line 199
    :goto_1
    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "BrokeredFitnessService"

    const-string v2, "Resolving account name failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    new-instance v0, Lcom/google/android/gms/fitness/service/a;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v6, v6}, Lcom/google/android/gms/fitness/service/a;-><init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;ILandroid/os/IBinder;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 162
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 167
    :cond_1
    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/f/h;->d(Ljava/lang/String;)Lcom/google/android/gms/fitness/f/d;

    move-result-object v2

    .line 168
    invoke-interface {v2, p2, p3}, Lcom/google/android/gms/fitness/f/d;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/fitness/f/f;

    move-result-object v2

    .line 169
    iget-boolean v3, v2, Lcom/google/android/gms/fitness/f/f;->b:Z

    if-eqz v3, :cond_3

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to authenticate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scopes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/fitness/f/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    iget-object v0, v2, Lcom/google/android/gms/fitness/f/f;->a:Landroid/content/Intent;

    .line 173
    if-eqz v0, :cond_2

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/b;->b:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v7, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 177
    new-instance v0, Lcom/google/android/gms/fitness/service/a;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    const/16 v3, 0x1388

    invoke-direct {v0, v2, v3, v6, v1}, Lcom/google/android/gms/fitness/service/a;-><init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;ILandroid/os/IBinder;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 181
    :cond_2
    new-instance v0, Lcom/google/android/gms/fitness/service/a;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    const/16 v2, 0x138d

    invoke-direct {v0, v1, v2, v6, v6}, Lcom/google/android/gms/fitness/service/a;-><init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;ILandroid/os/IBinder;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 184
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authenticated: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scopes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/fitness/f/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->c(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;)Lcom/google/android/gms/fitness/service/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/service/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    new-instance v0, Lcom/google/android/gms/fitness/service/a;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    const/16 v3, 0x1395

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/service/a;-><init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;ILandroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 191
    :catch_1
    move-exception v0

    const-string v2, "Failed to determine if account %s supported"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    new-instance v0, Lcom/google/android/gms/fitness/service/a;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    const/16 v2, 0x1390

    invoke-direct {v0, v1, v2, v6, v6}, Lcom/google/android/gms/fitness/service/a;-><init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;ILandroid/os/IBinder;Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->c(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;)Lcom/google/android/gms/fitness/service/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/service/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/service/i;

    move-result-object v1

    .line 199
    new-instance v0, Lcom/google/android/gms/fitness/service/a;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/service/i;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v2, v7, v1, v6}, Lcom/google/android/gms/fitness/service/a;-><init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;ILandroid/os/IBinder;Landroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/x;Lcom/google/android/gms/fitness/service/a;)V
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/fitness/service/a;->c:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pendingIntent"

    iget-object v2, p1, Lcom/google/android/gms/fitness/service/a;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    :try_start_0
    iget v1, p1, Lcom/google/android/gms/fitness/service/a;->a:I

    iget-object v2, p1, Lcom/google/android/gms/fitness/service/a;->b:Landroid/os/IBinder;

    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not send response back to caller: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/b;->a:Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->a(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/fitness/service/c;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/service/c;-><init>(Lcom/google/android/gms/fitness/service/b;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/common/internal/x;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method
