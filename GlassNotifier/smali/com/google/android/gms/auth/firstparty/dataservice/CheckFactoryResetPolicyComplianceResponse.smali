.class public Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/m;


# instance fields
.field public final isCompliant:Z

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/m;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/m;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "isCompliant"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;->version:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;->isCompliant:Z

    return-void
.end method

.method public static from(Z)Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;
    .locals 2
    .param p0, "isCompliant"    # Z

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;-><init>(IZ)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/m;->a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckFactoryResetPolicyComplianceResponse;Landroid/os/Parcel;I)V

    return-void
.end method
