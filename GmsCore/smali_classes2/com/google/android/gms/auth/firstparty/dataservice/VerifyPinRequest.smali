.class public Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bd;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/bd;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/bd;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bd;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->a:I

    .line 33
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/bd;->a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;Landroid/os/Parcel;)V

    .line 58
    return-void
.end method
