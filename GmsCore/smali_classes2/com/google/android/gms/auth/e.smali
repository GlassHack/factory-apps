.class public final Lcom/google/android/gms/auth/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/delegate/f;


# instance fields
.field private a:Landroid/content/Intent;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/e;->b:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/google/android/gms/auth/g/d;->a()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/e;->a:Landroid/content/Intent;

    .line 48
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/e;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/c;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/auth/e;->b:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/auth/DefaultAuthDelegateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/e;->a:Landroid/content/Intent;

    .line 52
    :cond_0
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthDelegateWrapperCreated with selected intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/e;->a:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method private a(Lcom/google/android/gms/auth/j;)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    .line 133
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    iget-object v2, p0, Lcom/google/android/gms/auth/e;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v2, v0, Lcom/google/android/gms/auth/a/c;->b:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/google/android/gms/auth/e;->a:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_2

    .line 136
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t resolve AuthDelegateService intent to a delegate service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/google/android/gms/auth/a/c;->e:I

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/a/c;->a(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot delegate to Service with different sig."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v1, "GLSActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    throw v0

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/auth/e;->a:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/auth/e;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/auth/e;->a:Landroid/content/Intent;

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/delegate/g;->a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/delegate/f;

    move-result-object v2

    .line 155
    invoke-interface {p1, v2}, Lcom/google/android/gms/auth/j;->a(Lcom/google/android/gms/auth/firstparty/delegate/f;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/a/c;->a(Landroid/app/PendingIntent;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/a/c;->c(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/auth/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    .line 162
    :cond_3
    :try_start_1
    const-string v0, "Invalid delgate %s! Only first party auth delegates are supported."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Lcom/google/android/gms/auth/a/c;->b(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    :try_start_2
    const-string v2, "GLSActivity"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/auth/e;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 170
    :catch_1
    move-exception v0

    .line 171
    :try_start_3
    const-string v2, "GLSActivity"

    const-string v3, "Error while trying to execute against auth delegate."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 173
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to bind to auth delegate service."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/gms/auth/f;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/f;-><init>(Lcom/google/android/gms/auth/e;Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/j;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/gms/auth/g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/g;-><init>(Lcom/google/android/gms/auth/e;Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/j;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/gms/auth/h;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/h;-><init>(Lcom/google/android/gms/auth/e;Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/j;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/google/android/gms/auth/i;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/i;-><init>(Lcom/google/android/gms/auth/e;Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/j;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No binder!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
