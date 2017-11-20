.class public Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/af;


# instance fields
.field Hh:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field volatile Hz:Z

.field Ic:Landroid/os/Bundle;

.field volatile Ih:Z

.field Ir:Ljava/lang/String;

.field volatile Is:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field volatile It:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

.field Iu:Ljava/lang/String;

.field volatile Iv:Z

.field volatile Iw:Z

.field volatile Ix:Z

.field accountName:Ljava/lang/String;

.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/af;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/af;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ic:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iu:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->version:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;ZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;ZZZ)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "faclData"    # Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .param p6, "paclData"    # Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
    .param p7, "isAddingAccount"    # Z
    .param p8, "isCreatingAccount"    # Z
    .param p9, "consent"    # Ljava/lang/String;
    .param p10, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p11, "optionalCaptchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .param p12, "isForcingEmailCheck"    # Z
    .param p13, "isForcingDroidguardRun"    # Z
    .param p14, "isUsingCache"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ic:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iu:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ir:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ic:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Is:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->It:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ih:Z

    iput-boolean p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Hz:Z

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iu:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Hh:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iv:Z

    iput-boolean p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iw:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ic:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iu:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->version:I

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->accountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ir:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ix:Z

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

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallingAppDescription()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public getCaptchaSolution()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Hh:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public getConsent()Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iu:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    move-result-object v0

    return-object v0
.end method

.method public getFaclData()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Is:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ic:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getPaclData()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->It:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ir:Ljava/lang/String;

    return-object v0
.end method

.method public isAddingAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ih:Z

    return v0
.end method

.method public isCreatingAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Hz:Z

    return v0
.end method

.method public isForcingDroidguardRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iw:Z

    return v0
.end method

.method public isForcingEmailCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iv:Z

    return v0
.end method

.method public isUsingCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ix:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public setAddingAccount(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "isAdding"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ih:Z

    return-object p0
.end method

.method public setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "captchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Hh:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object p0
.end method

.method public setConsent(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 1
    .param p1, "consent"    # Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    .prologue
    const-string v0, " Consent cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iu:Ljava/lang/String;

    return-object p0
.end method

.method public setCreatingAccount(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "isCreating"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Hz:Z

    return-object p0
.end method

.method public setFaclData(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "faclData"    # Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Is:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    return-object p0
.end method

.method public setForcingDroidguardRun(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "isForcingDroidguardRun"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iw:Z

    return-object p0
.end method

.method public setIsForcingEmailCheck(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "isCheckingEmail"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Iv:Z

    return-object p0
.end method

.method public setOptions(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ic:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ic:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public setPaclData(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "paclData"    # Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->It:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ir:Ljava/lang/String;

    return-object p0
.end method

.method public setUsingCache(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0
    .param p1, "isUsingCache"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->Ix:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/af;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Landroid/os/Parcel;I)V

    return-void
.end method
