.class final Lcom/google/android/gms/auth/setup/workflow/a;
.super Lcom/google/android/gms/auth/firstparty/delegate/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/workflow/a;->a:Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;

    invoke-direct {p0}, Lcom/google/android/gms/auth/firstparty/delegate/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/setup/workflow/a;-><init>(Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/auth/setup/workflow/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/workflow/a;->a:Lcom/google/android/gms/auth/setup/workflow/AccountSetupWorkflowService;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/setup/workflow/b;-><init>(Landroid/content/Context;)V

    .line 30
    iget-object v0, v0, Lcom/google/android/gms/auth/setup/workflow/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->a(Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
