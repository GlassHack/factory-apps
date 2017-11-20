.class public Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "GoogleAccountDataService is only usable by first party apps."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/setup/workflow/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/setup/workflow/a;-><init>(Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;B)V

    return-object v0
.end method
