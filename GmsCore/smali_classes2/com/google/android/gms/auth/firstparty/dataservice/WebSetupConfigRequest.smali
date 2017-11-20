.class public Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bg;


# instance fields
.field final a:I

.field public final b:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/bg;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/bg;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bg;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->a:I

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->b:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/bg;->a(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;Landroid/os/Parcel;I)V

    .line 53
    return-void
.end method
