.class public Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ax;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ax;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ax;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ax;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->a:I

    .line 37
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->b:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->c:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;-><init>(ILjava/lang/String;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ax;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;Landroid/os/Parcel;)V

    .line 61
    return-void
.end method
