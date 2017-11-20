.class public Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/c;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->a:I

    .line 34
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->b:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->c:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->d:Landroid/graphics/Bitmap;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->a:I

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->b:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->c:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->d:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/c;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Landroid/os/Parcel;I)V

    .line 56
    return-void
.end method
