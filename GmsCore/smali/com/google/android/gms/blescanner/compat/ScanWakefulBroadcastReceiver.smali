.class public Lcom/google/android/gms/blescanner/compat/ScanWakefulBroadcastReceiver;
.super Landroid/support/v4/a/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/blescanner/compat/ScanWakefulService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-static {p1, v0}, Lcom/google/android/gms/blescanner/compat/ScanWakefulBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    return-void
.end method
