.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/j;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/j;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/j;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;->a:I

    .line 34
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;-><init>(ILjava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/j;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;Landroid/os/Parcel;)V

    .line 55
    return-void
.end method
