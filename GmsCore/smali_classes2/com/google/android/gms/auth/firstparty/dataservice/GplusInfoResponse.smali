.class public Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/an;


# instance fields
.field final a:I

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/an;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/an;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/an;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->a:I

    .line 57
    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->b:Z

    .line 58
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->c:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->d:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->e:Ljava/lang/String;

    .line 61
    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->f:Z

    .line 62
    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->g:Z

    .line 63
    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->h:Ljava/lang/String;

    .line 64
    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->i:Ljava/lang/String;

    .line 65
    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->j:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->a:I

    .line 79
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->b:Z

    .line 80
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->c:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->d:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->e:Ljava/lang/String;

    .line 83
    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->h:Ljava/lang/String;

    .line 84
    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->i:Ljava/lang/String;

    .line 85
    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->f:Z

    .line 86
    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->g:Z

    .line 87
    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->j:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/an;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;Landroid/os/Parcel;)V

    .line 96
    return-void
.end method
