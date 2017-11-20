.class public Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ad;


# instance fields
.field public final accountName:Ljava/lang/String;

.field public callingPackageName:Ljava/lang/String;

.field public final force:Z

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ad;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ad;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->accountName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->force:Z

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->callingPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method aE(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->callingPackageName:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ad;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
