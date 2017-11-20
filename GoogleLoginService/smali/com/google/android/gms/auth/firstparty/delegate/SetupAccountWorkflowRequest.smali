.class public Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/c;


# instance fields
.field public final callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field qD:Landroid/os/Bundle;

.field rm:Z

.field rn:Z

.field ro:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rp:Z

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/c;

    return-void
.end method

.method constructor <init>(IZZLjava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Z)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "isMultiUser"    # Z
    .param p3, "isSetupWizard"    # Z
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p7, "isCreditCardAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/auth/firstparty/shared/AppDescription;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p4, "allowedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->version:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->rm:Z

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->rn:Z

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->ro:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->qD:Landroid/os/Bundle;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->rp:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 1
    .param p1, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->version:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->qD:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBackupAccount(Z)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
    .locals 1
    .param p1, "isBackup"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->setIsSetupWizard(Z)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    move-result-object v0

    return-object v0
.end method

.method public setIsSetupWizard(Z)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
    .locals 0
    .param p1, "isSetupWizard"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->rn:Z

    return-object p0
.end method

.method public setOptions(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->qD:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->qD:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/c;->a(Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;Landroid/os/Parcel;I)V

    return-void
.end method
