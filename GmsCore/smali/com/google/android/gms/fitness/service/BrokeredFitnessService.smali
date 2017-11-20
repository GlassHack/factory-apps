.class public Lcom/google/android/gms/fitness/service/BrokeredFitnessService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/fitness/service/b;

.field private b:Lcom/google/android/gms/fitness/j/f;

.field private c:Lcom/google/android/gms/fitness/service/f;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;)Lcom/google/android/gms/fitness/j/f;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->b:Lcom/google/android/gms/fitness/j/f;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;)Lcom/google/android/gms/fitness/service/f;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->c:Lcom/google/android/gms/fitness/service/f;

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->c:Lcom/google/android/gms/fitness/service/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/service/f;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 90
    const-string v0, "com.google.android.gms.fitness.GoogleFitnessService.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "FitnessService onBind"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->a:Lcom/google/android/gms/fitness/service/b;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    const-string v0, "FitnessService onCreate"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    const-string v0, "fitness"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/fitness/j/g;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/fitness/j/g;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/j/g;->a()Lcom/google/android/gms/fitness/j/f;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->b:Lcom/google/android/gms/fitness/j/f;

    .line 65
    new-instance v0, Lcom/google/android/gms/fitness/service/f;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->b:Lcom/google/android/gms/fitness/j/f;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/service/f;-><init>(Landroid/app/Application;Lcom/google/android/gms/fitness/j/f;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->c:Lcom/google/android/gms/fitness/service/f;

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->c:Lcom/google/android/gms/fitness/service/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/f;->a()V

    .line 69
    new-instance v0, Lcom/google/android/gms/fitness/service/b;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/fitness/service/b;-><init>(Lcom/google/android/gms/fitness/service/BrokeredFitnessService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->a:Lcom/google/android/gms/fitness/service/b;

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->b:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/f;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->d:Landroid/os/Handler;

    .line 72
    invoke-static {p0}, Lcom/google/android/gms/fitness/data/Device;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "WearableSyncHostService.start"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    new-instance v0, Lcom/google/android/gms/fitness/wearables/b;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/wearables/b;-><init>(Landroid/app/Application;)V

    invoke-static {v0}, Lcom/google/android/location/wearable/LocationWearableListenerService;->a(Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/j/d;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/j/f;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 82
    const-string v0, "FitnessService onStartCommand"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;->b:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/j/f;->a(Landroid/content/Intent;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method
