.class public Lcom/google/android/location/reporting/service/PreferenceService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/reporting/service/p;

.field private b:Lcom/google/android/location/reporting/config/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/location/reporting/service/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/reporting/service/p;-><init>(Lcom/google/android/location/reporting/service/PreferenceService;B)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/PreferenceService;->a:Lcom/google/android/location/reporting/service/p;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/reporting/service/PreferenceService;)Lcom/google/android/location/reporting/config/h;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/location/reporting/service/PreferenceService;->b:Lcom/google/android/location/reporting/config/h;

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 80
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "GCoreUlr"

    const-string v1, "PreferenceService dumping...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    const-string v0, "PreferenceService ULR dump...."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/google/android/location/reporting/service/DispatchingService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "PreferenceService deferring to DispatchingService for dump"

    .line 86
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "GCoreUlr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-static {p0}, Lcom/google/android/location/reporting/r;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/r;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/google/android/location/reporting/service/PreferenceService;->b:Lcom/google/android/location/reporting/config/h;

    invoke-static {p2, v1, v0}, Lcom/google/android/location/reporting/b/l;->a(Ljava/io/PrintWriter;Lcom/google/android/location/reporting/config/h;Lcom/google/android/location/reporting/r;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 67
    const-string v0, "GCoreUlr"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "GCoreUlr"

    const-string v1, "PreferenceService.onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/PreferenceService;->a:Lcom/google/android/location/reporting/service/p;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    invoke-static {p0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/PreferenceService;->b:Lcom/google/android/location/reporting/config/h;

    .line 63
    return-void
.end method
