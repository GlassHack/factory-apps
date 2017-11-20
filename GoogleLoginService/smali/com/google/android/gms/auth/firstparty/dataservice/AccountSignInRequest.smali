.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/k;


# instance fields
.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field qd:Z

.field qe:Z

.field qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/k;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->version:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p3, "isCreatingAccount"    # Z
    .param p4, "isSetupWizardInProgress"    # Z
    .param p5, "optionalCaptchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .param p6, "accountCredentials"    # Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->qd:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->qe:Z

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAccountCreationInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0
    .param p1, "isCreating"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->qd:Z

    return-object p0
.end method

.method public setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0
    .param p1, "credentials"    # Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-object p0
.end method

.method public setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0
    .param p1, "captchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object p0
.end method

.method public setSetupWizardInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    .locals 0
    .param p1, "isInProgress"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->qe:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/k;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;Landroid/os/Parcel;I)V

    return-void
.end method
