.class public Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/d;


# instance fields
.field volatile IP:Z

.field volatile Ic:Landroid/os/Bundle;

.field volatile Ir:Ljava/lang/String;

.field volatile Is:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field volatile It:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

.field volatile accountName:Ljava/lang/String;

.field volatile callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->version:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Ic:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "faclData"    # Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .param p6, "paclData"    # Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
    .param p7, "isSuppressingProgressUx"    # Z
    .param p8, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Ir:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Ic:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Is:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->It:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->IP:Z

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallingAppDescription()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public getFaclData()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Is:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Ic:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getPaclData()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->It:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Ir:Ljava/lang/String;

    return-object v0
.end method

.method public isSuppressingProgressUx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->IP:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public setFaclData(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0
    .param p1, "faclData"    # Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Is:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    return-object p0
.end method

.method public setOptions(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Ic:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Ic:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setPaclData(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0
    .param p1, "paclData"    # Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->It:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->Ir:Ljava/lang/String;

    return-object p0
.end method

.method public setSuppressingProgressUx(Z)Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;
    .locals 0
    .param p1, "isSuppressingProgressUx"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;->IP:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/d;->a(Lcom/google/android/gms/auth/firstparty/delegate/TokenWorkflowRequest;Landroid/os/Parcel;I)V

    return-void
.end method
