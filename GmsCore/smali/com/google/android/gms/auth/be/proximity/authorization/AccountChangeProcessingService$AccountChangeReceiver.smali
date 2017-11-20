.class public Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService$AccountChangeReceiver;
.super Landroid/support/v4/a/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v4/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v1, Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/AccountChangeProcessingService$AccountChangeReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    return-void
.end method
