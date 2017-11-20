.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/r;


# instance fields
.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field phoneCountryCode:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field qD:Landroid/os/Bundle;

.field qE:Z

.field qF:Z

.field qG:Z

.field qH:Ljava/lang/String;

.field qI:Z

.field qJ:Ljava/lang/String;

.field qd:Z

.field qe:Z

.field qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field secondaryEmail:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/r;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->version:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qD:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "isAgreedToWebHistory"    # Z
    .param p4, "isAgreedToPersonalizedContent"    # Z
    .param p5, "isAgreedToMobileTos"    # Z
    .param p6, "firstName"    # Ljava/lang/String;
    .param p7, "lastName"    # Ljava/lang/String;
    .param p8, "secondaryEmail"    # Ljava/lang/String;
    .param p9, "gender"    # Ljava/lang/String;
    .param p10, "isCreatingAccount"    # Z
    .param p11, "isAddingAccount"    # Z
    .param p12, "isSetupWizardInProgress"    # Z
    .param p13, "ropRevision"    # Ljava/lang/String;
    .param p14, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p15, "accountCredentials"    # Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .param p16, "optionalCaptchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .param p17, "phoneNumber"    # Ljava/lang/String;
    .param p18, "phoneCountryCode"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qD:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qE:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qF:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qG:Z

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->firstName:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->lastName:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->secondaryEmail:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qH:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qd:Z

    iput-boolean p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qI:Z

    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qe:Z

    iput-object p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qJ:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneCountryCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "accountCredentials"    # Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-object p0
.end method

.method public setAgreedToMobileTos(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isAgreed"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qG:Z

    return-object p0
.end method

.method public setAgreedToPersonalizedContent(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isAgreedToPersonalizedContent"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qF:Z

    return-object p0
.end method

.method public setAgreedToWebHistory(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isAgreedToWebHistory"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qE:Z

    return-object p0
.end method

.method public setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "captchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object p0
.end method

.method public setCreatingAccount(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isCreating"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qd:Z

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qH:Ljava/lang/String;

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->lastName:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneCountryCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "phoneCountryCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setRopRevision(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "ropRevision"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qJ:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondaryEmail(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "secondaryEmail"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->secondaryEmail:Ljava/lang/String;

    return-object p0
.end method

.method public setSetupWizardInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    .locals 0
    .param p1, "isProgress"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->qe:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/r;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;Landroid/os/Parcel;I)V

    return-void
.end method
