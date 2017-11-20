.class public Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/be;


# instance fields
.field final a:I

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/be;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/be;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/be;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;-><init>(IILjava/lang/String;)V

    .line 51
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->a:I

    .line 41
    iput p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->b:I

    .line 42
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;-><init>(IILjava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/be;->a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;Landroid/os/Parcel;)V

    .line 69
    return-void
.end method
