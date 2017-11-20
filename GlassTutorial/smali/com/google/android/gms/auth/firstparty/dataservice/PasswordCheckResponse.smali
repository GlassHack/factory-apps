.class public Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/y;


# instance fields
.field pO:Ljava/lang/String;

.field qS:Ljava/lang/String;

.field status:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/y;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/y;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "passwordStrength"    # Ljava/lang/String;
    .param p4, "detail"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->status:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->qS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->pO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .param p2, "passwordStrength"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->version:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->getWire()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->status:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->qS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->pO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->pO:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordStrength()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->qS:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->fromWireCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/y;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;Landroid/os/Parcel;I)V

    return-void
.end method
