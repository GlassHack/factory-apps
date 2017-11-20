.class public Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/av;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/av;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/av;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/av;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;->a:I

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;-><init>(ILjava/lang/String;)V

    .line 37
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
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/av;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Landroid/os/Parcel;)V

    .line 53
    return-void
.end method
