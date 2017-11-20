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
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ad;


# instance fields
.field accountName:Ljava/lang/String;

.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field qD:Landroid/os/Bundle;

.field volatile qI:Z

.field qT:Ljava/lang/String;

.field volatile qU:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field volatile qV:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

.field qW:Ljava/lang/String;

.field volatile qX:Z

.field volatile qY:Z

.field volatile qZ:Z

.field volatile qd:Z

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ad;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qD:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qW:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qD:Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qW:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qD:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qU:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qV:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qI:Z

    iput-boolean p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qd:Z

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qW:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qX:Z

    iput-boolean p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->qY:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ad;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Landroid/os/Parcel;I)V

    return-void
.end method
