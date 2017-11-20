.class public Lcom/google/android/location/places/PlaylogService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/places/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/google/android/location/places/PlaylogService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/google/android/location/places/av;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/av;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/places/PlaylogService;->a:Lcom/google/android/location/places/av;

    .line 81
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/c/f/b/n;)V
    .locals 3

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/location/places/PlaylogService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_places_event"

    invoke-static {p1}, Lcom/google/c/f/b/n;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 86
    iget-object v0, p0, Lcom/google/android/location/places/PlaylogService;->a:Lcom/google/android/location/places/av;

    invoke-virtual {v0}, Lcom/google/android/location/places/av;->a()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/location/places/PlaylogService;->a:Lcom/google/android/location/places/av;

    invoke-virtual {v0}, Lcom/google/android/location/places/av;->b()V

    .line 101
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 102
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/location/places/PlaylogService;->a:Lcom/google/android/location/places/av;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/av;->a(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
