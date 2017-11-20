.class public Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/k;


# instance fields
.field final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/k;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/k;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->d:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/k;->a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;Landroid/os/Parcel;I)V

    return-void
.end method
