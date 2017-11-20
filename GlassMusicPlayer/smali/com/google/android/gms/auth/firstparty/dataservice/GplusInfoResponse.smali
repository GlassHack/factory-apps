.class public Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/ag;


# instance fields
.field final b:I

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z

.field h:Z

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ag;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ag;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->a:Lcom/google/android/gms/auth/firstparty/dataservice/ag;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->g:Z

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->h:Z

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->k:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ag;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;Landroid/os/Parcel;I)V

    return-void
.end method
