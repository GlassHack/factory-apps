.class public Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/firstparty/dataservice/g;


# instance fields
.field final b:I

.field public final c:I

.field public final d:Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

.field public final e:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->a:Lcom/google/android/gms/auth/firstparty/dataservice/g;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->b:I

    iput p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->c:I

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->d:Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->e:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/g;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;Landroid/os/Parcel;I)V

    return-void
.end method
