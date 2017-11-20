.class public Lcom/google/android/gms/auth/trustagent/PreferenceService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lcom/google/android/gms/auth/trustagent/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Lcom/google/android/gms/auth/trustagent/aj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/aj;-><init>(Lcom/google/android/gms/auth/trustagent/PreferenceService;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/PreferenceService;->b:Lcom/google/android/gms/auth/trustagent/r;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/PreferenceService;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/PreferenceService;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/PreferenceService;->b:Lcom/google/android/gms/auth/trustagent/r;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/PreferenceService;->a:Landroid/content/SharedPreferences;

    .line 60
    return-void
.end method
