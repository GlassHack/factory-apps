.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/a;


# instance fields
.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field pI:Ljava/lang/String;

.field pJ:Ljava/lang/String;

.field pK:Ljava/lang/String;

.field pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->version:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "accountNameToCheck"    # Ljava/lang/String;
    .param p3, "optionalFirstName"    # Ljava/lang/String;
    .param p4, "optionalLastName"    # Ljava/lang/String;
    .param p5, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p6, "optionalCaptchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pI:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountNameToCheck"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->version:I

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountNameToCheck()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pI:Ljava/lang/String;

    return-object v0
.end method

.method public getCallingAppDescription()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public getCaptchaSolution()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pJ:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pK:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountNameToCheck(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pI:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
    .locals 0
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object p0
.end method

.method public setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
    .locals 0
    .param p1, "captchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
    .locals 0
    .param p1, "optionalFirstName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pJ:Ljava/lang/String;

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
    .locals 0
    .param p1, "optionalLastName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->pK:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/a;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;Landroid/os/Parcel;I)V

    return-void
.end method
