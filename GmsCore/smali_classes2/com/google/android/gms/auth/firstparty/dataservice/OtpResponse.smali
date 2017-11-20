.class public Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/as;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/as;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/as;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/as;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;->a:I

    .line 29
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;-><init>(ILjava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/as;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;Landroid/os/Parcel;)V

    .line 39
    return-void
.end method
