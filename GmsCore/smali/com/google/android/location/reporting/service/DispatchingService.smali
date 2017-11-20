.class public Lcom/google/android/location/reporting/service/DispatchingService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/google/android/location/reporting/config/h;

.field private c:Lcom/google/android/location/reporting/r;

.field private d:Lcom/google/android/location/reporting/service/m;

.field private e:Lcom/google/android/location/o/ab;

.field private f:Landroid/os/Looper;

.field private g:Landroid/os/Handler;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 507
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/r;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->c:Lcom/google/android/location/reporting/r;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 191
    const-string v0, "com.google.android.location.reporting.ACTION_UPDATE_ACTIVE_STATE"

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 193
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/location/LocationStatus;)V
    .locals 2

    .prologue
    .line 207
    const-string v0, "com.google.android.location.reporting.ACTION_LOCATION_STATUS"

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 208
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 210
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 216
    const-string v0, "com.google.android.location.reporting.ACTION_BLE_SCAN"

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    const-string v1, "ble_scan"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 218
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 219
    return-void
.end method

.method static synthetic a(Ljava/lang/RuntimeException;)V
    .locals 2

    .prologue
    .line 67
    const-string v0, "GCoreUlr"

    const-string v1, "Unexpected BLE exception in DispatchingService"

    invoke-static {v0, v1, p0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/google/android/location/reporting/service/DispatchingService;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/config/h;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->b:Lcom/google/android/location/reporting/config/h;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 199
    const-string v0, "com.google.android.location.reporting.ACTION_APPLY_UPLOAD_REQUESTS"

    invoke-static {p0, v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    invoke-static {p0, v0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 201
    return-void
.end method

.method static synthetic c(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/reporting/service/m;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->d:Lcom/google/android/location/reporting/service/m;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/reporting/service/DispatchingService;)Lcom/google/android/location/o/ab;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->e:Lcom/google/android/location/o/ab;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/reporting/service/DispatchingService;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/location/reporting/service/DispatchingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 292
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "GCoreUlr"

    const-string v1, "DispatchingService dumping...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    const-string v0, "DispatchingService ULR dump...."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->d:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->b:Lcom/google/android/location/reporting/config/h;

    iget-object v1, p0, Lcom/google/android/location/reporting/service/DispatchingService;->c:Lcom/google/android/location/reporting/r;

    invoke-static {p2, v0, v1}, Lcom/google/android/location/reporting/b/l;->a(Ljava/io/PrintWriter;Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/r;)V

    .line 298
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 226
    invoke-static {p0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 228
    const-string v0, "GCoreUlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "GCoreUlr"

    const-string v1, "DispatchingService.onCreate()"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/location/reporting/service/DispatchingService;->a:Z

    .line 233
    invoke-static {p0}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->b:Lcom/google/android/location/reporting/config/h;

    .line 234
    invoke-static {p0}, Lcom/google/android/location/reporting/r;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->c:Lcom/google/android/location/reporting/r;

    .line 235
    new-instance v0, Lcom/google/android/location/reporting/service/m;

    invoke-direct {v0}, Lcom/google/android/location/reporting/service/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->d:Lcom/google/android/location/reporting/service/m;

    .line 238
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UlrDispatchingService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 240
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 242
    invoke-static {p0}, Lcom/google/android/location/o/ab;->a(Landroid/content/Context;)Lcom/google/android/location/o/ab;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/reporting/service/DispatchingService;->e:Lcom/google/android/location/o/ab;

    .line 243
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->f:Landroid/os/Looper;

    .line 244
    new-instance v0, Lcom/google/android/location/reporting/service/f;

    iget-object v1, p0, Lcom/google/android/location/reporting/service/DispatchingService;->f:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/android/location/reporting/service/f;-><init>(Lcom/google/android/location/reporting/service/DispatchingService;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->g:Landroid/os/Handler;

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    const-string v1, "com.google.android.location.activity.LOW_POWER_MODE_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "com.google.android.location.activity.LOW_POWER_MODE_DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lcom/google/android/location/reporting/service/e;

    invoke-direct {v1}, Lcom/google/android/location/reporting/service/e;-><init>()V

    iput-object v1, p0, Lcom/google/android/location/reporting/service/DispatchingService;->h:Landroid/content/BroadcastReceiver;

    .line 251
    invoke-static {p0}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/reporting/service/DispatchingService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/i;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 252
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/location/reporting/service/DispatchingService;->a:Z

    .line 282
    const-string v0, "GCoreUlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "GCoreUlr"

    const-string v1, "DispatchingService.onDestroy()"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    invoke-static {p0}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/DispatchingService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->a(Landroid/content/BroadcastReceiver;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->f:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 287
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 261
    const-string v0, "GCoreUlr"

    const-string v1, "We don\'t support Froyo, this shouldn\'t be called"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 266
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return v2

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/DispatchingService;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 272
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 273
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/google/android/location/reporting/service/DispatchingService;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
