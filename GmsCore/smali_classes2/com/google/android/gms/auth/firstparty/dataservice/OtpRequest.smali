.class public Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ar;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field public final d:[B

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ar;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ar;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ar;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;[BZ)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->a:I

    .line 72
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->b:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->d:[B

    .line 74
    const-string v0, "Caller\'s app description cannot be null!"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 76
    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->e:Z

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 35
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

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ar;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;Landroid/os/Parcel;I)V

    .line 92
    return-void
.end method
