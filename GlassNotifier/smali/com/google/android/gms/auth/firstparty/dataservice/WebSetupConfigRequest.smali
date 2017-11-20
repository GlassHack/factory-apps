.class public Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/am;


# instance fields
.field public final callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/am;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/am;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/am;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->version:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 1
    .param p1, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;-><init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/am;->a(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;Landroid/os/Parcel;I)V

    return-void
.end method
