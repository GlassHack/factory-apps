.class public Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/l;


# instance fields
.field public final accountId:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/l;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/l;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;->accountId:Ljava/lang/String;

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;
    .locals 2
    .param p0, "accountId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;-><init>(ILjava/lang/String;)V

    return-object v0
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/l;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceRequest;Landroid/os/Parcel;I)V

    return-void
.end method
