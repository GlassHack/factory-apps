.class public Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/x;


# instance fields
.field final GU:I

.field public final accountName:Ljava/lang/String;

.field public final callerDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field public final challenge:[B

.field public final isLegacyRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/x;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/x;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;[BZ)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "callerDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p4, "challenge"    # [B
    .param p5, "isLegacyRequest"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->GU:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->challenge:[B

    const-string v0, "Caller\'s app description cannot be null!"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->callerDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->isLegacyRequest:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;-><init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;[B)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p3, "challenge"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;-><init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;[BZ)V

    return-void
.end method

.method public static newLegacyOtpRequest(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;
    .locals 6
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "appDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .prologue
    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;-><init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;[BZ)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/x;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;Landroid/os/Parcel;I)V

    return-void
.end method
