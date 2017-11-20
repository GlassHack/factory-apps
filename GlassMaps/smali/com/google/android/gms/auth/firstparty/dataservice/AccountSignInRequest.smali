.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/x;


# instance fields
.field final b:I

.field c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field d:Z

.field e:Z

.field f:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field g:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/x;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->b:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->d:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->e:Z

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->g:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/x;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;Landroid/os/Parcel;I)V

    return-void
.end method
