.class public Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/r;


# instance fields
.field final a:I

.field b:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field c:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/r;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->a:I

    .line 37
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->a:I

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->b:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 32
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->b:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 41
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 50
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->b:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/r;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;Landroid/os/Parcel;I)V

    .line 71
    return-void
.end method
