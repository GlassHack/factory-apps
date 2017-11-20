.class public Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/am;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/am;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/am;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/am;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->a:I

    .line 35
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->a:I

    .line 29
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->c:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/am;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;Landroid/os/Parcel;I)V

    .line 43
    return-void
.end method
