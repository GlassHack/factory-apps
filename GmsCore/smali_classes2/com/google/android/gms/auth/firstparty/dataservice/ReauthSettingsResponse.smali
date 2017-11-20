.class public Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ay;


# instance fields
.field final a:I

.field public final b:I

.field public final c:Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

.field public final d:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ay;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ay;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ay;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;-><init>(IILcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V

    .line 67
    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->a:I

    .line 56
    iput p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->b:I

    .line 57
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->c:Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

    .line 58
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->d:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;-><init>(IILcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ay;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;Landroid/os/Parcel;I)V

    .line 83
    return-void
.end method
