.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/g;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/g;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->a:I

    .line 27
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;-><init>(ILjava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/g;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;Landroid/os/Parcel;)V

    .line 48
    return-void
.end method
