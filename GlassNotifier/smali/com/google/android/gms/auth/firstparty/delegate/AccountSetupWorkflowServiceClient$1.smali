.class Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;->getAccountSetupWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/firstparty/shared/BlockingServiceClient$Call",
        "<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic IJ:Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

.field final synthetic IK:Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient$1;->IK:Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient$1;->IJ:Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y(Landroid/os/IBinder;)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/auth/firstparty/delegate/b$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/delegate/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient$1;->IJ:Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/firstparty/delegate/b;->getAccountSetupWorkflowIntent(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic exec(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/delegate/AccountSetupWorkflowServiceClient$1;->Y(Landroid/os/IBinder;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
