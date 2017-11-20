.class public Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/p;


# instance fields
.field pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/p;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->version:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "accountCredentials"    # Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .param p3, "optionalCaptchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    .locals 0
    .param p1, "accountCredentials"    # Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->qf:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-object p0
.end method

.method public setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    .locals 0
    .param p1, "captchaSolution"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->pL:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/p;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
