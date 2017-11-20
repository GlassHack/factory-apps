.class public Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/ak;


# instance fields
.field final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field public final e:[B

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ak;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ak;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->a:Lcom/google/android/gms/auth/firstparty/dataservice/ak;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;[BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->e:[B

    const-string v0, "Caller\'s app description cannot be null!"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->d:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->f:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ak;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;Landroid/os/Parcel;I)V

    return-void
.end method
