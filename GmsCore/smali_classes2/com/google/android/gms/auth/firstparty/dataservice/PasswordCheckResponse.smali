.class public Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/au;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/au;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/au;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/au;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->a:I

    .line 36
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->c:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->a:I

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->b:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->c:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->d:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/au;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;Landroid/os/Parcel;)V

    .line 61
    return-void
.end method
