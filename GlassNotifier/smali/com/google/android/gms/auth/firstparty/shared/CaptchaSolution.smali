.class public Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/d;


# instance fields
.field HC:Ljava/lang/String;

.field Jj:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/d;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "answer"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->HC:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->Jj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "captchaToken"    # Ljava/lang/String;
    .param p2, "captchaAnswer"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->version:I

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->HC:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->Jj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnswer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->Jj:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->HC:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/d;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Landroid/os/Parcel;I)V

    return-void
.end method
