.class public Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;


# instance fields
.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field qJ:Ljava/lang/String;

.field qK:Z

.field qL:Ljava/lang/String;

.field qM:Z

.field qN:Z

.field qO:Ljava/lang/String;

.field qP:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/t;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "isAllowed"    # Z
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "picasaUserName"    # Ljava/lang/String;
    .param p6, "isGooglePlusEnabled"    # Z
    .param p7, "isEsMobileEnabled"    # Z
    .param p8, "ropText"    # Ljava/lang/String;
    .param p9, "ropRevision"    # Ljava/lang/String;
    .param p10, "wireCode"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->version:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qK:Z

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->firstName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->lastName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qL:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qM:Z

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qN:Z

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qO:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qJ:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "isAllowed"    # Z
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "picasaUserName"    # Ljava/lang/String;
    .param p5, "isGooglePlusEnabled"    # Z
    .param p6, "isEsMobileEnabled"    # Z
    .param p7, "ropText"    # Ljava/lang/String;
    .param p8, "ropRevision"    # Ljava/lang/String;
    .param p9, "wireCode"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->version:I

    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qK:Z

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->firstName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->lastName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qL:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qO:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qJ:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qM:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qN:Z

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qL:Ljava/lang/String;

    return-object v0
.end method

.method public getRopRevision()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qJ:Ljava/lang/String;

    return-object v0
.end method

.method public getRopText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qO:Ljava/lang/String;

    return-object v0
.end method

.method public getWireCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qP:Ljava/lang/String;

    return-object v0
.end method

.method public hasEsMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qN:Z

    return v0
.end method

.method public hasGooglePlus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qM:Z

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->qK:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/t;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;Landroid/os/Parcel;I)V

    return-void
.end method
