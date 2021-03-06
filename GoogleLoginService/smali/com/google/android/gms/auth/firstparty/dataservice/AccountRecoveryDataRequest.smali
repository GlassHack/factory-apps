.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;

.field private static final pZ:Ljava/lang/String;


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field public final isClearUpdateSuggested:Z

.field public final requestDescription:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->pZ:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "isClearUpdateSuggestion"    # Z
    .param p4, "callingAppDescription"    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p5, "requestDescription"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->pZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accountName cannot be empty or null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->pZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestDescription cannot be empty or null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->version:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->accountName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->isClearUpdateSuggested:Z

    invoke-static {p4}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->requestDescription:Ljava/lang/String;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/d;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;Landroid/os/Parcel;I)V

    return-void
.end method
