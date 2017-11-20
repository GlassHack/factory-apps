.class public Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ae;

.field public static final CREDENTIAL_STATUS_ACTIVE:Ljava/lang/String; = "ACTIVE"

.field public static final CREDENTIAL_STATUS_CONFIGURABLE:Ljava/lang/String; = "CONFIGURABLE"

.field public static final CREDENTIAL_STATUS_LOCKED:Ljava/lang/String; = "LOCKED"


# instance fields
.field public final password:Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

.field public final pin:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

.field public final status:I

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ae;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ae;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ae;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "errorStatus"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;-><init>(IILcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "status"    # I
    .param p3, "password"    # Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;
    .param p4, "pin"    # Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->version:I

    iput p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->status:I

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->password:Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->pin:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V
    .locals 2
    .param p1, "password"    # Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;
    .param p2, "pin"    # Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;-><init>(IILcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ae;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;Landroid/os/Parcel;I)V

    return-void
.end method
