.class public Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/ac;


# instance fields
.field final b:I

.field c:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field d:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ac;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ac;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/ac;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->b:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->d:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ac;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
