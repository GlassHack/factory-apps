.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/e;


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final isRecoveryInfoNeeded:Z

.field public final isRecoveryInterstitialSuggested:Z

.field public final isRecoveryUpdateAllowed:Z

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/e;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZ)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "isRecoveryInfoNeeded"    # Z
    .param p4, "isRecoveryInterstitialSuggested"    # Z
    .param p5, "isRecoveryInterstitialAllowed"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->accountName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->isRecoveryInfoNeeded:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->isRecoveryInterstitialSuggested:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->isRecoveryUpdateAllowed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isRecoveryInfoNeeded"    # Z
    .param p3, "isRecoveryInterstitialSuggested"    # Z
    .param p4, "isRecoveryInterstitialAllowed"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;-><init>(ILjava/lang/String;ZZZ)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/e;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Landroid/os/Parcel;I)V

    return-void
.end method
