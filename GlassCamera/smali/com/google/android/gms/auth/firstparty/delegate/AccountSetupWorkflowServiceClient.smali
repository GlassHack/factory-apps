.class public Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;
.super Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAccountSetupWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "req"    # Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient$1;-><init>(Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;->exec(Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected getServiceIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.auth.setup.workflow.SETUP_WORKFLOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
