.class public Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/c;


# instance fields
.field pM:Ljava/lang/String;

.field qg:Ljava/lang/String;

.field rL:Landroid/graphics/Bitmap;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "statusWireCode"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "captcha"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->pM:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->qg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->rL:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;-><init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .param p2, "captchaToken"    # Ljava/lang/String;
    .param p3, "captcha"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->version:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->getWire()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->pM:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->qg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->rL:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCaptcha()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->rL:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCaptchaToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->qg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->pM:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->fromWireCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/c;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Landroid/os/Parcel;I)V

    return-void
.end method
